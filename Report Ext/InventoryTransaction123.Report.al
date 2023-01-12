report 59704 "Inventory - Transaction 123"
{
    // Item."Unit Cost"
    // "Print Bin Card"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/InventoryTransaction123.rdlc';

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
            column(Unit_Cost; Item."Unit Cost")
            {
            }
            dataitem(PageCounter; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(Description_Item; Item.Description)
                {
                }
                column(StartOnHand; StartOnHand)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(RecordNo; RecordNo)
                {
                }
                dataitem("Item Ledger Entry"; "Item Ledger Entry")
                {
                    DataItemLink = "Item No." = FIELD("No."), "Variant Code" = FIELD("Variant Filter"), "Posting Date" = FIELD("Date Filter"), "Location Code" = FIELD("Location Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter");
                    DataItemLinkReference = Item;
                    DataItemTableView = SORTING("Item No.", "Entry Type", "Variant Code", "Drop Shipment", "Location Code", "Posting Date");
                    column(StartOnHandQuantity; StartOnHand + Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(PostingDate_ItemLedgEntry; Format("Posting Date"))
                    {
                    }
                    column(EntryType_ItemLedgEntry; "Entry Type")
                    {
                    }
                    column(DocumentNo_PItemLedgEntry; "Document No.")
                    {
                        IncludeCaption = true;
                    }
                    column(Description_ItemLedgEntry; Description)
                    {
                        IncludeCaption = true;
                    }
                    column(IncreasesQty; IncreasesQty)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(DecreasesQty; DecreasesQty)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(ItemOnHand; ItemOnHand)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(EntryNo_ItemLedgerEntry; "Entry No.")
                    {
                        IncludeCaption = true;
                    }
                    column(Quantity_ItemLedgerEntry; Quantity)
                    {
                    }
                    column(ItemDescriptionControl32; Item.Description)
                    {
                    }
                    column(ContinuedCaption; ContinuedCaptionLbl)
                    {
                    }
                    column(TransFr; TransFr)
                    {
                    }
                    column(TransTo; TransTo)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ItemOnHand := ItemOnHand + Quantity;
                        if Quantity > 0 then
                            IncreasesQty := Quantity
                        else
                            DecreasesQty := Abs(Quantity);
                    end;

                    trigger OnPreDataItem()
                    begin
                        CurrReport.CreateTotals(Quantity, IncreasesQty, DecreasesQty);

                        if "Print Bin Card" then begin
                            ItLentry.CopyFilters("Item Ledger Entry");
                            if ItLentry.Find('+') then
                                LastrecEntNo := ItLentry."Entry No.";
                            ItLentry.Next(-2);
                            SetRange("Entry No.", ItLentry."Entry No.", LastrecEntNo);
                        end;
                        "Item Ledger Entry".SetFilter("Posting Date", ItemDateFilter);


                        if InvtSetUp.Get then;
                        TransTo := '';
                        TransFr := '';
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
                                    end else
                                        if TransRecpt.Get("Document No.") then begin
                                            TransTo := TransRecpt."Transfer-to Code";
                                            TransFr := TransRecpt."Transfer-from Code";
                                        end;
                                end;
                        end;

                        PurchRec.SetRange(PurchRec."No.", "Document No.");
                        if PurchRec.Find('-') then TransFr := PurchRec."Buy-from Vendor No.";
                        SalesShi.SetRange(SalesShi."No.", "Document No.");
                        if SalesShi.Find('-') then TransTo := SalesShi."Sell-to Customer No.";
                    end;
                }
            }
            dataitem(PageCounter1; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 .. 35));
            }

            trigger OnAfterGetRecord()
            begin
                StartOnHand := 0;
                if ItemDateFilter <> '' then
                    if GetRangeMin("Date Filter") > 00000101D then begin
                        SetRange("Date Filter", 0D, GetRangeMin("Date Filter") - 1);
                        CalcFields("Net Change");
                        StartOnHand := "Net Change";
                        SetFilter("Date Filter", ItemDateFilter);
                    end;
                ItemOnHand := StartOnHand;

                if PrintOnlyOnePerPage then
                    RecordNo := RecordNo + 1;


                //SETRANGE("Date Filter",0D,GETRANGEMAX("Date Filter"));
                CalcFields("Net Change");
                StockOnHand := "Net Change";
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
                RecordNo := 1;
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
                        ApplicationArea = All;
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

    //[Scope('OnPrem')]
    procedure InitializeRequest(NewPrintOnlyOnePerPage: Boolean)
    begin
        PrintOnlyOnePerPage := NewPrintOnlyOnePerPage;
    end;
}

