report 50199 "Update Job catch defa"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/UpdateJobcatchdefa.rdlc';

    dataset
    {
        dataitem("Job catch Default"; "Job catch Default")
        {
            RequestFilterFields = "Table Name", "No.", "Code";
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
            column(Job_catch_Default__Table_Name_; "Table Name")
            {
            }
            column(Job_catch_Default__No__; "No.")
            {
            }
            column(Job_catch_Default_Code; Code)
            {
            }
            column(Job_catch_Default_Description; Description)
            {
            }
            column(Job_catch_Default__Pack_Size_; "Pack Size")
            {
            }
            column(Job_catch_Default_Brand; Brand)
            {
            }
            column(Job_catch_Default__Statistics_Group_; "Statistics Group")
            {
            }
            column(Job_catch_Default__S_No__; "S/No.")
            {
            }
            column(Job_catch_Default__Budget_Quantity_; "Budget Quantity")
            {
            }
            column(Job_catch_Default__Marked_Rec_; "Marked Rec")
            {
            }
            column(Job_catch_Default_GroupSort; GroupSort)
            {
            }
            column(Job_catch_Default_Vessel; Vessel)
            {
            }
            column(Job_Catch_DefaultCaption; Job_Catch_DefaultCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_catch_Default__Table_Name_Caption; FieldCaption("Table Name"))
            {
            }
            column(Job_catch_Default__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_catch_Default_CodeCaption; FieldCaption(Code))
            {
            }
            column(Job_catch_Default_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job_catch_Default__Pack_Size_Caption; FieldCaption("Pack Size"))
            {
            }
            column(Job_catch_Default_BrandCaption; FieldCaption(Brand))
            {
            }
            column(Job_catch_Default__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Job_catch_Default__S_No__Caption; FieldCaption("S/No."))
            {
            }
            column(Job_catch_Default__Budget_Quantity_Caption; FieldCaption("Budget Quantity"))
            {
            }
            column(Job_catch_Default__Marked_Rec_Caption; FieldCaption("Marked Rec"))
            {
            }
            column(Job_catch_Default_GroupSortCaption; FieldCaption(GroupSort))
            {
            }
            column(Job_catch_Default_VesselCaption; FieldCaption(Vessel))
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Job catch Default".Validate("Job catch Default"."Budget Quantity");
                "Job catch Default".Modify;
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
        Job_Catch_DefaultCaptionLbl: Label 'Job Catch Default';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

