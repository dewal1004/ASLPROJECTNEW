report 99970 "Update Vessel on Job Catch Def"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateVesselonJobCatchDef.rdlc';

    dataset
    {
        dataitem("Job catch Default"; "Job catch Default")
        {
            DataItemTableView = WHERE("Budget Quantity" = FILTER(<> 0));
            RequestFilterFields = "Table Name";
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
            column(Job_catch_Default__No__; "No.")
            {
            }
            column(Job_catch_Default_Code; Code)
            {
            }
            column(Job_catch_Default_Description; Description)
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
            column(Job_catch_Default__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_catch_Default_CodeCaption; FieldCaption(Code))
            {
            }
            column(Job_catch_Default_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job_catch_Default_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job_catch_Default_Table_Name; "Table Name")
            {
            }
            column(Job_catch_Default_Pack_Size; "Pack Size")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Validate("No.");
                if Jobs.Get("No.") then Vessel := Jobs.Vessel;

                Modify;
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
        Jobs: Record Job;
        Job_Catch_DefaultCaptionLbl: Label 'Job Catch Default';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

