report 99994 "Validt Vesl Desc on JBCatch Re"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/ValidtVeslDesconJBCatchRe.rdlc';

    dataset
    {
        dataitem("Job Journal Batch"; "Job Journal Batch")
        {
            RequestFilterFields = "Journal Template Name";
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
            column(Job_Journal_Batch__Journal_Template_Name_; "Journal Template Name")
            {
            }
            column(Job_Journal_Batch_Name; Name)
            {
            }
            column(Job_Journal_Batch__Voyage_No__; "Voyage No.")
            {
            }
            column(Job_Journal_Batch_Description; Description)
            {
            }
            column(Job_Journal_Batch__Vessel_Name_; "Vessel Name")
            {
            }
            column(Job_Journal_BatchCaption; Job_Journal_BatchCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Journal_Batch__Journal_Template_Name_Caption; FieldCaption("Journal Template Name"))
            {
            }
            column(Job_Journal_Batch_NameCaption; FieldCaption(Name))
            {
            }
            column(Job_Journal_Batch__Voyage_No__Caption; FieldCaption("Voyage No."))
            {
            }
            column(Job_Journal_Batch_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job_Journal_Batch__Vessel_Name_Caption; FieldCaption("Vessel Name"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Validate(Name);
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
        Job_Journal_BatchCaptionLbl: Label 'Job Journal Batch';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

