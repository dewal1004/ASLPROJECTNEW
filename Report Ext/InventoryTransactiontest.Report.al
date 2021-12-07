report 50074 "Inventory - Transaction -test"
{
    // //Item."Unit Cost"
    // "Print Bin Card"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/InventoryTransactiontest.rdlc';

    Caption = 'Inventory - Transaction Detail';

    dataset
    {
        dataitem(Item; Item)
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", Description, "Assembly BOM", "Inventory Posting Group", "Shelf No.", "Statistics Group", "Date Filter", "Location Filter";
            column(PeriodItemDateFilter; StrSubstNo(Text000, ItemDateFilter))
            {
            }
            column(CompanyName; CompanyName)
            {
            }
            column(TableCaptionItemFilter; StrSubstNo('%1: %2', TableCaption, ItemFilter))
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(No_Item; "No.")
            {
            }
            column(Item_Crm_Str; Item."CRM / STR")
            {
            }
            column(StartOnHand; StartOnHand)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InventoryTransDetailCaption; InventoryTransDetailCaptionLbl)
            {
            }
            column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
            {
            }
            column(ItemLedgEntryPostDateCaption; ItemLedgEntryPostDateCaptionLbl)
            {
            }
            column(ItemLedgEntryEntryTypCaption; ItemLedgEntryEntryTypCaptionLbl)
            {
            }
            column(IncreasesQtyCaption; IncreasesQtyCaptionLbl)
            {
            }
            column(DecreasesQtyCaption; DecreasesQtyCaptionLbl)
            {
            }
            column(ItemOnHandCaption; ItemOnHandCaptionLbl)
            {
            }
            column(ItemInventoryPostingGroup; Item."Inventory Posting Group")
            {
            }
            column(Unit_Cost; "Unit Cost")
            {
            }
            column(qTY1; Item.Inventory)
            {
            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = FIELD("No."), "Variant Code" = FIELD("Variant Filter"), "Posting Date" = FIELD("Date Filter"), "Location Code" = FIELD("Location Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter");
                DataItemLinkReference = Item;
                DataItemTableView = SORTING("Item No.", "Variant Code", "Drop Shipment", "Location Code", "Posting Date");
                column(IncreasesQty; IncreasesQty)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(DecreasesQty; DecreasesQty)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(ContinuedCaption; ContinuedCaptionLbl)
                {
                }
                column(TransFr; TransFr)
                {
                }
                column(StartOnHandQuantity; StartOnHand + Quantity)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(StockOnHand; StockOnHand)
                {
                }
                column(ItemOnHand; ItemOnHand)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(TransTo; TransTo)
                {
                }
                column(Test; test)
                {
                }
                column(PrintBin; "Print Bin Card")
                {
                }
                column(itcost; Itcost)
                {
                }
                column(PostingDate_ItemLedgEntry; Format("Item Ledger Entry"."Posting Date"))
                {
                }
                column(EntryType_ItemLedgEntry; "Item Ledger Entry"."Entry Type")
                {
                }
                column(DocumentNo_PItemLedgEntry; "Item Ledger Entry"."Document No.")
                {
                    IncludeCaption = true;
                }
                column(Description_ItemLedgEntry; Description)
                {
                    IncludeCaption = true;
                }
                column(EntryNo_ItemLedgerEntry; "Item Ledger Entry"."Entry No.")
                {
                    IncludeCaption = true;
                }
                column(Quantity_ItemLedgerEntry; "Item Ledger Entry".Quantity)
                {
                }
                column(ItemDescriptionControl32; Item.Description)
                {
                }
                column(ILE_INVQty; "Item Ledger Entry"."Invoiced Quantity")
                {
                }
                column(ILE_CostAmt_Actual; "Item Ledger Entry"."Cost Amount (Actual)")
                {
                }
                column(JbNos; JbNos)
                {
                }
                column(HandQty; HandQty)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    ItemOnHand := ItemOnHand + Quantity;
                    if Quantity > 0 then
                        IncreasesQty := Quantity
                    else
                        DecreasesQty := Abs(Quantity);
                    if "Print Bin Card" then begin
                        ItLentry.CopyFilters("Item Ledger Entry");
                        if ItLentry.FindLast then
                            LastrecEntNo := ItLentry."Entry No.";
                        ItLentry.Next(-2);
                        SetRange("Entry No.", ItLentry."Entry No.", LastrecEntNo);

                    end;
                    test := StockOnHand + ItemOnHand;
                    //MESSAGE('%1',test);

                    "Item Ledger Entry".SetFilter("Posting Date", ItemDateFilter);

                    if InvtSetUp.Get then;
                    TransTo := '';
                    TransFr := '';
                    JbNos := '';
                    case "Entry Type" of
                        0, 2:
                            begin
                                TransTo := InvtSetUp."Default Store";
                                TransFr := "External Document No.";
                            end;
                        1, 3:
                            begin
                                TransTo := "External Document No.";
                                TransFr := InvtSetUp."Default Store";
                            end;
                        4:
                            begin
                                if TransShip.Get("Document No.") then begin
                                    TransTo := TransShip."Transfer-to Code";
                                    TransFr := TransShip."Transfer-from Code";
                                    if TransShip."Transfer To Voy. No." <> '' then TransToVoy := TransShip."Transfer To Voy. No.";
                                    if TransShip."Transfer From Voy. No." <> '' then TransFrVoy := TransShip."Transfer From Voy. No.";
                                end else
                                    if TransRecpt.Get("Document No.") then begin
                                        TransTo := TransRecpt."Transfer-to Code";
                                        TransFr := TransRecpt."Transfer-from Code";
                                        if TransRecpt."Transfer To Voy. No." <> '' then TransToVoy := TransRecpt."Transfer To Voy. No.";
                                        if TransRecpt."Transfer From Voy. No." <> '' then TransFrVoy := TransRecpt."Transfer From Voy. No.";
                                    end;

                            end;
                    end;

                    PurchRec.SetRange(PurchRec."No.", "Document No.");
                    if PurchRec.Find('-') then TransFr := PurchRec."Buy-from Vendor No.";
                    if Vend.Get(TransFr) then TransFr := Vend.Name;
                    SalesShi.SetRange(SalesShi."No.", "Document No.");
                    if SalesShi.Find('-') then TransTo := SalesShi."Sell-to Customer No.";
                    if Cust.Get(TransTo) then TransTo := Cust.Name;

                    case "Entry Type" of
                        4:
                            begin
                                Jobs.SetCurrentKey(Jobs.Vessel);
                                Jobs.SetRange(Jobs.Vessel, TransTo);
                                Jobs.SetRange(Jobs."Voyage No.", TransToVoy);
                                if Jobs.Find('-') then JbNos := Jobs."No.";
                            end;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(Quantity, IncreasesQty, DecreasesQty);
                end;
            }
            dataitem(PageCounter1; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 .. 35));
            }
            dataitem(PageCounter; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(Description_Item; Item.Description)
                {
                }
                column(RecordNo; RecordNo)
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                if ItemDateFilter <> '' then
                    if GetRangeMin("Date Filter") > 00000101D then begin
                        SetRange("Date Filter", 0D, GetRangeMin("Date Filter") - 1);
                        CalcFields("Net Change");
                        StartOnHand := "Net Change";
                        SetFilter("Date Filter", ItemDateFilter);
                    end;
                ItemOnHand := StockOnHand;//StartOnHand;

                /*
                StartOnHand := 0;
                IF ItemDateFilter <> '' THEN
                  IF GETRANGEMIN("Date Filter") > 01010000D THEN BEGIN
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change");
                    StartOnHand := "Net Change";
                    //SETFILTER("Date Filter",ItemDateFilter);
                  END;
                ItemOnHand := StartOnHand;
                */
                if PrintOnlyOnePerPage then
                    RecordNo := RecordNo + 1;

                StockOnHand := StockOnHand + "Net Change";

            end;

            trigger OnPreDataItem()
            begin
                PrintOnlyOnePerPage := true;
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
                RecordNo := 1;
                //StartOnHand := 0;
                g_DateFilter := Item.GetRangeMin(Item."Date Filter");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(PrintOnlyOnePerPage; PrintOnlyOnePerPage)
                    {
                        Caption = 'New Page per Item';
                    }
                    field("Print Bin Card"; "Print Bin Card")
                    {
                        Caption = 'Print Bin Card';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        ItemFilter := Item.GetFilters;
        ItemDateFilter := Item.GetFilter("Date Filter");
    end;

    var
        Text000: Label 'Period: %1';
        ItemFilter: Text;
        ItemDateFilter: Text[30];
        ItemOnHand: Decimal;
        StartOnHand: Decimal;
        IncreasesQty: Decimal;
        DecreasesQty: Decimal;
        PrintOnlyOnePerPage: Boolean;
        RecordNo: Integer;
        InventoryTransDetailCaptionLbl: Label 'Inventory - Transaction Detail';
        CurrReportPageNoCaptionLbl: Label 'Page';
        ItemLedgEntryPostDateCaptionLbl: Label 'Posting Date';
        ItemLedgEntryEntryTypCaptionLbl: Label 'Entry Type';
        IncreasesQtyCaptionLbl: Label 'Increases';
        DecreasesQtyCaptionLbl: Label 'Decreases';
        ItemOnHandCaptionLbl: Label 'Inventory';
        ContinuedCaptionLbl: Label 'Continued';
        "--------------": Integer;
        TransShip: Record "Transfer Shipment Header";
        TransRecpt: Record "Transfer Receipt Header";
        InvtSetUp: Record "Inventory Setup";
        PurchRec: Record "Purch. Rcpt. Header";
        SalesShi: Record "Sales Shipment Header";
        ItLentry: Record "Item Ledger Entry";
        TransTo: Text[30];
        TransFr: Text[30];
        LastrecEntNo: Integer;
        "Print Bin Card": Boolean;
        StockOnHand: Decimal;
        items2: Record Item;
        BinOp: Decimal;
        HandQty: Decimal;
        g_EntryFound: Boolean;
        g_DateFilter: Date;
        Vend: Record Vendor;
        Cust: Record Customer;
        Jobs: Record Job;
        TransToVoy: Text;
        JbNos: Code[10];
        Itcost: Decimal;
        TransFrVoy: Code[10];
        test: Decimal;

    [Scope('Internal')]
    procedure InitializeRequest(NewPrintOnlyOnePerPage: Boolean)
    begin
        PrintOnlyOnePerPage := NewPrintOnlyOnePerPage;
    end;
}

