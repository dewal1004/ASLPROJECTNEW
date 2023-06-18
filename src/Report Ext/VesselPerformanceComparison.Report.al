report 50201 "Vessel Performance Comparison"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VesselPerformanceComparison.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Vessel Performance Comparison';
    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = SORTING(Category) WHERE("Statistics Group" = FILTER(<> 0), "Source Filter" = FILTER(<> 'PHYSINVJNL' & <> 'TRANSFER' & <> 'ITEMJNL' & <> 'SALES' & <> 'PURCHASES' & <> 'PURCHJNL' & <> 'SALESJNL' & <> 'JOBJNL'));
            RequestFilterFields = Category, "Date Filter";
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
            column(Inventory_Posting_Group_Category; Category)
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Inventory4; Inventory4)
            {
            }
            column(Inventory_Posting_Group__Catch_Budget_; "Catch Budget")
            {
            }
            column(Inventory4__Catch_Budget_; Inventory4 - "Catch Budget")
            {
                DecimalPlaces = 2 : 5;
            }
            column(Inventory_Posting_Group_Inventory4_Control1000000017; Inventory4)
            {
                DecimalPlaces = 2 : 5;
            }
            column(Inventory_Posting_Group_Category_Control1000000007; Category)
            {
            }
            column(Inventory_Posting_Group__Catch_Budget__Control1000000016; "Catch Budget")
            {
            }
            column(Inventory4__Catch_Budget__Control1000000022; Inventory4 - "Catch Budget")
            {
                DecimalPlaces = 2 : 5;
            }
            column(Inventory_Posting_Group_Inventory4_Control1000000000; Inventory4)
            {
            }
            column(Inventory_Posting_Group__Catch_Budget__Control1000000020; "Catch Budget")
            {
            }
            column(Inventory4__Catch_Budget__Control1000000023; Inventory4 - "Catch Budget")
            {
                DecimalPlaces = 2 : 5;
            }
            column(Inventory_Posting_GroupCaption; Inventory_Posting_GroupCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_CodeCaption; FieldCaption(Code))
            {
            }
            column(Inventory_Posting_Group_Inventory4Caption; FieldCaption(Inventory4))
            {
            }
            column(Inventory_Posting_Group__Catch_Budget__Control1000000016Caption; FieldCaption("Catch Budget"))
            {
            }
            column(Inventory4__Catch_Budget__Control1000000022Caption; Inventory4__Catch_Budget__Control1000000022CaptionLbl)
            {
            }
            column(Inventory_Posting_Group_CategoryCaption; FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Inventory4_Control1000000000Caption; FieldCaption(Inventory4))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Category);
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
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Inventory4__Catch_Budget__Control1000000022CaptionLbl: Label 'Variance';
}
