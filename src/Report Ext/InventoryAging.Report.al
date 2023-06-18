report 50146 "Inventory Aging"
{
    //  Item."CRM / STR"
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/InventoryAging.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Inventory Aging';
    dataset
    {
        dataitem("item upd"; Item)
        {
            DataItemTableView = SORTING("Statistics Group", "Inventory Posting Group") WHERE("Gen. Prod. Posting Group" = CONST('DK'), "No." = FILTER('DK-001' .. 'E0001'));

            trigger OnAfterGetRecord()
            begin
                ItLedEnt.SetCurrentKey("Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date");
                ItLedEnt.SetRange(ItLedEnt."Item No.", "No.");
                ItLedEnt.SetRange(ItLedEnt.Open, true);
                ItLedEnt.SetRange(ItLedEnt."Location Code", 'GNRL ASL');
                if ItLedEnt.Find('-') then "Oldest Stock" := ItLedEnt."Remaining Quantity";
                Modify();
            end;
        }
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Oldest Stock") ORDER(Descending) WHERE("Gen. Prod. Posting Group" = CONST('DK'), "No." = FILTER('DK-001' .. 'E0001'));
            RequestFilterFields = "Inventory Posting Group";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__CRM___STR_; "CRM / STR")
            {
            }
            column(OldstDat; OldstDat)
            {
            }
            column(OldstQty; OldstQty)
            {
            }
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item__CRM___STR__Control20; "CRM / STR")
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FieldCaption("No."))
            {
            }
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Item__CRM___STR_Caption; Item__CRM___STR_CaptionLbl)
            {
            }
            column(OldstDatCaption; OldstDatCaptionLbl)
            {
            }
            column(OldstQtyCaption; OldstQtyCaptionLbl)
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItLedEnt.SetCurrentKey("Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date");
                ItLedEnt.SetRange(ItLedEnt."Item No.", "No.");
                ItLedEnt.SetRange(ItLedEnt.Open, true);
                ItLedEnt.SetRange(ItLedEnt."Location Code", 'GNRL ASL');
                if ItLedEnt.Find('-') then begin
                    OldstQty := ItLedEnt."Remaining Quantity";
                    OldstDat := ItLedEnt."Posting Date";
                end
                else begin
                    OldstQty := 0;
                    OldstDat := 0D;
                end;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Inventory Posting Group");
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

    var
        LastFieldNo: Integer;
        TotalFor: Label 'Total for ';
        ItLedEnt: Record "Item Ledger Entry";
        OldstQty: Decimal;
        OldstDat: Date;
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Item__CRM___STR_CaptionLbl: Label 'Inventory';
        OldstDatCaptionLbl: Label 'Inventory Since';
        OldstQtyCaptionLbl: Label 'Old Stock';
}
