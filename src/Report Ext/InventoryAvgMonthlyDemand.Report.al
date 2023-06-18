report 50153 "Inventory Avg. Monthly Demand"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/InventoryAvgMonthlyDemand.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Inventory Avg. Monthly Demand';
    dataset
    {
        dataitem("Item Update"; Item)
        {
            RequestFilterFields = "Inventory Posting Group";
            column(Item_Update__Cover_Period_; "Cover Period")
            {
            }
            column(Item_Update__Monthly_Ave__Dem_Val_; "Monthly Ave. Dem Val")
            {
            }
            column(Item_Update__Unit_Cost_; "Unit Cost")
            {
            }
            column(Item_Update__Base_Unit_of_Measure_; "Base Unit of Measure")
            {
            }
            column(Item_Update__CRM___STR_; "CRM / STR")
            {
            }
            column(Item_Update_Description; Description)
            {
            }
            column(Item_Update__No__; "No.")
            {
            }
        }
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Statistics Group", "Inventory Posting Group", "Cover Period") ORDER(Descending) WHERE("Statistics Group" = CONST(0));
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
            column(Item__Statistics_Group_; "Statistics Group")
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(StkVal; StkVal)
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
            column(Item__Monthly_Ave__Dem_Val_; "Monthly Ave. Dem Val")
            {
            }
            column(Item__Cover_Period_; "Cover Period")
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
            column(Grand_Total_; 'Grand Total')
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
            column(GrandTotalCaption; GrandTotalCaptionLbl)
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
            column(StkVal_Control1000000029Caption; StkVal_Control1000000029CaptionLbl)
            {
            }
            column(Item__Monthly_Ave__Dem_Val_Caption; Item__Monthly_Ave__Dem_Val_CaptionLbl)
            {
            }
            column(Item__Cover_Period_Caption; Item__Cover_Period_CaptionLbl)
            {
            }
            column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                StkVal := "CRM / STR" * "Unit Cost";

                if InvtPG.Get("Inventory Posting Group") then BillBoard := InvtPG.Description else BillBoard := '';
            end;

            trigger OnPreDataItem()
            begin
                CopyFilters("Item Update");
                LastFieldNo := FieldNo("Inventory Posting Group");
                CurrReport.CreateTotals(StkVal);

                if InvtPG.Get("Inventory Posting Group") then BillBoard := InvtPG.Description else BillBoard := '';
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
            }
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
        InvtPG: Record "Inventory Posting Group";
        StkVal: Decimal;
        BillBoard: Text[30];
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        StkVal_Control1000000029CaptionLbl: Label 'Value';
        Item__Monthly_Ave__Dem_Val_CaptionLbl: Label 'Avg. Monthly Consumption';
        Item__Cover_Period_CaptionLbl: Label 'Cover Period';
        GrandTotalCaptionLbl: Label 'Grand Total';
}
