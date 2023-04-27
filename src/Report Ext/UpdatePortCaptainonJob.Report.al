report 50207 "Update Port Captain on Job"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdatePortCaptainonJob.rdlc';

    dataset
    {
        dataitem(Job; Job)
        {
            // DataItemTableView = SORTING ("No.") WHERE (Status = CONST ("Voyage Start"));  //***R Revisit
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
            column(Job__No__; "No.")
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job_Captain; Captain)
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job_CaptainCaption; FieldCaption(Captain))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Job.Vessel <> '' then Job.Validate(Job.Vessel);
                //MODIFY;
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
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

