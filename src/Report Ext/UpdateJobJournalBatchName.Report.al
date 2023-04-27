report 90013 "Update Job Journal Batch Name"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/UpdateJobJournalBatchName.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Posting Date") WHERE("Reason Code" = FILTER('CATCH'));
            RequestFilterFields = "Job No.", "Posting Date";

            trigger OnAfterGetRecord()
            begin
                Job.Get("Job Ledger Entry"."Job No.");
                if "Job Ledger Entry"."Journal Batch Name" <> Job.Vessel then begin
                    "Job Ledger Entry"."Journal Batch Name" := Job.Vessel;
                    Modify;
                end;
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
        Job: Record Job;
}

