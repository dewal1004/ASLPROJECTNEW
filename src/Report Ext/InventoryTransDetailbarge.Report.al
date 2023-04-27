report 50243 "Inventory-Trans.Detail-barge"
{
    // Item."Unit Cost"
    // "Print Bin Card"
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/InventoryTransDetailbarge.rdlc';

    Caption = 'Inventory - Transaction Detail';
    Permissions = TableData "Sales Shipment Header" = rimd;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Item; Item)
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", Description, "Assembly BOM", "Inventory Posting Group", "Statistics Group", "Date Filter", "Location Filter";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_ItemDateFilter_; StrSubstNo(Text000, ItemDateFilter))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(STRSUBSTNO___1___2__Item_TABLECAPTION_ItemFilter_; StrSubstNo('%1: %2', Item.TableCaption, ItemFilter))
            {
            }
            column(Item_Item__Unit_Cost_; Item."Unit Cost")
            {
            }
            column(Item_Item_Description; Item.Description)
            {
            }
            column(Item_Item__No__; Item."No.")
            {
            }
            column(Item_Item__CRM___STR_; Item."CRM / STR")
            {

            }
            column(Item_Item__Inventory_Posting_Group_; Item."Inventory Posting Group")
            {
            }
            column(Inventory___Transaction_DetailCaption; Inventory___Transaction_DetailCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Unit_CostCaption; Unit_CostCaptionLbl)
            {
            }
            column(Stock_On_Hand__Caption; Stock_On_Hand__CaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Posting_Date_Caption; "Item Ledger Entry".FieldCaption("Posting Date"))
            {
            }
            column(TransToCaption; TransToCaptionLbl)
            {
            }
            column(TransFrCaption; TransFrCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Entry_No__Caption; "Item Ledger Entry".FieldCaption("Entry No."))
            {
            }
            column(ItemOnHandCaption; ItemOnHandCaptionLbl)
            {
            }
            column(DecreasesQtyCaption; DecreasesQtyCaptionLbl)
            {
            }
            column(IncreasesQtyCaption; IncreasesQtyCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Document_No__Caption; "Item Ledger Entry".FieldCaption("Document No."))
            {
            }
            column(Item_Ledger_Entry__Entry_Type_Caption; Item_Ledger_Entry__Entry_Type_CaptionLbl)
            {
            }
            column(Item_Variant_Filter; "Variant Filter")
            {
            }
            column(Item_Date_Filter; "Date Filter")
            {
            }
            column(Item_Location_Filter; "Location Filter")
            {
            }
            column(Item_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(Item_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            dataitem(PageCounter; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(Item__No__; Item."No.")
                {
                }
                column(Item_Description; Item.Description)
                {
                }
                column(Item__Unit_Cost_; Item."Unit Cost")
                {
                }
                column(StartOnHand; StartOnHand)
                {

                }
                column(Unit_CostCaption_Control1000000001; Unit_CostCaption_Control1000000001Lbl)
                {
                }
                column(PageCounter_Number; Number)
                {
                }
                dataitem("Item Ledger Entry"; "Item Ledger Entry")
                {
                    DataItemLink = "Item No." = FIELD("No."), "Variant Code" = FIELD("Variant Filter"), "Posting Date" = FIELD("Date Filter"), "Location Code" = FIELD("Location Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter");
                    DataItemLinkReference = Item;
                    DataItemTableView = SORTING("Item No.", "Variant Code", "Drop Shipment", "Location Code", "Posting Date");
                    column(StartOnHand___Quantity; StartOnHand + Quantity)
                    {

                    }
                    column(Item_Ledger_Entry__Posting_Date_; "Posting Date")
                    {
                    }
                    column(Item_Ledger_Entry__Entry_Type_; "Entry Type")
                    {
                    }
                    column(Item_Ledger_Entry__Document_No__; "Document No.")
                    {
                    }
                    column(IncreasesQty; IncreasesQty)
                    {

                    }
                    column(DecreasesQty; DecreasesQty)
                    {

                    }
                    column(ItemOnHand; ItemOnHand)
                    {

                    }
                    column(Item_Ledger_Entry__Entry_No__; "Entry No.")
                    {
                    }
                    column(TransFr; TransFr)
                    {

                    }
                    column(TransTo; TransTo)
                    {

                    }
                    column(StartOnHand___Quantity_Control31; StartOnHand + Quantity)
                    {

                    }
                    column(Item_Description_Control32; Item.Description)
                    {
                    }
                    column(IncreasesQty_Control33; IncreasesQty)
                    {

                    }
                    column(DecreasesQty_Control34; DecreasesQty)
                    {

                    }
                    column(StartOnHand___Quantity_Control35; StartOnHand + Quantity)
                    {

                    }
                    column(DecreasesQty_Control1000000044; DecreasesQty)
                    {

                    }
                    column(IncreasesQty_Control1000000045; IncreasesQty)
                    {

                    }
                    column(Item_Description_Control1000000046; Item.Description)
                    {
                    }
                    column(ContinuedCaption; ContinuedCaptionLbl)
                    {
                    }
                    column(ContinuedCaption_Control30; ContinuedCaption_Control30Lbl)
                    {
                    }
                    column(Item_Ledger_Entry_Item_No_; "Item No.")
                    {
                    }
                    column(Item_Ledger_Entry_Variant_Code; "Variant Code")
                    {
                    }
                    column(Item_Ledger_Entry_Location_Code; "Location Code")
                    {
                    }
                    column(Item_Ledger_Entry_Global_Dimension_1_Code; "Global Dimension 1 Code")
                    {
                    }
                    column(Item_Ledger_Entry_Global_Dimension_2_Code; "Global Dimension 2 Code")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        /*
                        IF "Print Bin Card" THEN ItemOnHand:=0
                        ELSE
                        ItemOnHand := ItemOnHand + Quantity;
                        IF Quantity > 0 THEN
                          IncreasesQty := Quantity
                        ELSE
                          DecreasesQty := ABS(Quantity);
                           */  //#1

                    end;

                    trigger OnPreDataItem()
                    begin
                        /*
                        CurrReport.CREATETOTALS(Quantity,IncreasesQty,DecreasesQty);
                        IF "Print Bin Card" THEN
                        BEGIN
                          ItLentry.COPYFILTERS("Item Ledger Entry");
                          IF ItLentry.FIND('+') THEN
                          LastrecEntNo:=ItLentry."Entry No.";
                          ItLentry.NEXT(-2);
                          SETRANGE("Entry No.",ItLentry."Entry No.",LastrecEntNo);
                        END;
                          */  //#1

                    end;
                }
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 .. 35));
                column(Integer_Number; Number)
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                /*
                StartOnHand := 0;
                IF ItemDateFilter <> '' THEN
                  IF GETRANGEMIN("Date Filter") > 01010000D THEN BEGIN
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change");
                    StartOnHand := "Net Change";
                    SETFILTER("Date Filter",ItemDateFilter);
                  END;
                ItemOnHand := StartOnHand;
                  */  //#1

            end;

            trigger OnPreDataItem()
            begin
                //CurrReport.NEWPAGEPERRECORD := PrintOnlyOnePerPage;  //#1
            end;
        }
    }

    requestpage
    {

        layout
        {
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

        /*ItemFilter := Item.GETFILTERS;
        ItemDateFilter := Item.GETFILTER("Date Filter");
           */  //#1

    end;

    var
        Text000: Label 'Period: %1';
        ItemFilter: Text[250];
        ItemDateFilter: Text[30];
        ItemOnHand: Decimal;
        StartOnHand: Decimal;
        IncreasesQty: Decimal;
        DecreasesQty: Decimal;
        PrintOnlyOnePerPage: Boolean;
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
        StopOnHand: Decimal;
        items2: Record Item;
        BinOp: Decimal;
        Inventory___Transaction_DetailCaptionLbl: Label 'Inventory - Transaction Detail';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Unit_CostCaptionLbl: Label 'Unit Cost';
        Stock_On_Hand__CaptionLbl: Label 'Stock On Hand :';
        TransToCaptionLbl: Label 'Transfer To';
        TransFrCaptionLbl: Label 'Transfer From';
        ItemOnHandCaptionLbl: Label 'Inventory';
        DecreasesQtyCaptionLbl: Label 'Decreases';
        IncreasesQtyCaptionLbl: Label 'Increases';
        Item_Ledger_Entry__Entry_Type_CaptionLbl: Label 'Entry Type';
        Unit_CostCaption_Control1000000001Lbl: Label 'Unit Cost';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control30Lbl: Label 'Continued';
}

