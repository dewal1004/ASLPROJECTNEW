report 99999 "Update Catch Sea Day on Jlegen"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateCatchSeaDayonJlegen.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Posting Date", "Job No.";
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
            column(Job_Ledger_Entry__Entry_No__; "Job Ledger Entry"."Entry No.")
            {
            }
            column(Job_Ledger_Entry__Job_No__; "Job No.")
            {
            }
            column(Job_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Job_Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Job_Ledger_EntryCaption; Job_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_Entry__Entry_No__Caption; "Job Ledger Entry"."Entry No.")
            {
            }
            column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
            {
            }
            column(Job_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Job_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if "Catch Sea Days" = 0 then
                    if jobss.Get("Job Ledger Entry"."Job No.") then
                        "Catch Sea Days" := "Posting Date" - jobss."Starting Date";
                Modify();
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
        jobss: Record Job;
        Job_Ledger_EntryCaptionLbl: Label 'Job Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

