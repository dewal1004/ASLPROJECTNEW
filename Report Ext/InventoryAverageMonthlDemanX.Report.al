report 55999 "Inventory Average MonthlDemanX"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/InventoryAverageMonthlDemanX.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Statistics Group", "Inventory Posting Group") WHERE("Statistics Group" = CONST(0), "No." = FILTER('AG-001' | 'K' .. 'LC'));
            RequestFilterFields = "Statistics Group", "Inventory Posting Group";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Item__Statistics_Group_; "Statistics Group")
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(BillBoard; BillBoard)
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
            column(Item__Base_Unit_of_Measure_; "Base Unit of Measure")
            {
            }
            column(Item__Unit_Cost_; "Unit Cost")
            {
            }
            column(StkVal; StkVal)
            {
            }
            column(MAD; MAD)
            {
            }
            column(CoverPrd; CoverPrd)
            {
            }
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item__CRM___STR__Control1000000035; "CRM / STR")
            {
            }
            column(StkVal_Control1000000036; StkVal)
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Item__CRM___STR__Control1000000038; "CRM / STR")
            {
            }
            column(StkVal_Control1000000039; StkVal)
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
            column(Item__CRM___STR_Caption; FieldCaption("CRM / STR"))
            {
            }
            column(Item__Base_Unit_of_Measure_Caption; FieldCaption("Base Unit of Measure"))
            {
            }
            column(Item__Unit_Cost_Caption; FieldCaption("Unit Cost"))
            {
            }
            column(StkValCaption; StkValCaptionLbl)
            {
            }
            column(MADCaption; MADCaptionLbl)
            {
            }
            column(CoverPrdCaption; CoverPrdCaptionLbl)
            {
            }
            column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Inventory Posting Group");
                CurrReport.CreateTotals(StkVal);

                StkVal := "CRM / STR" * "Unit Cost";
                if Item2.Get("No.") then;
                Item2.SetFilter(Item2."Date Filter", '%1..%2', CalcDate('-6M', WorkDate), WorkDate);
                Item2.CalcFields(Item2."Monthly Ave. Dem");
                MAD := -Item2."Monthly Ave. Dem" / 6;
                if MAD <> 0 then CoverPrd := "CRM / STR" / MAD else CoverPrd := 0;
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
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "---": Integer;
        InvtPG: Record "Inventory Posting Group";
        Item2: Record Item;
        StkVal: Decimal;
        MAD: Decimal;
        CoverPrd: Decimal;
        BillBoard: Text[30];
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        StkValCaptionLbl: Label 'Value';
        MADCaptionLbl: Label 'Avg. Monthly Consumption';
        CoverPrdCaptionLbl: Label 'Cover Period';
}

