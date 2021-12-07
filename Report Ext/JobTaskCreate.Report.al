report 90051 "JobTask Create"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                Jobtask.SetRange(Jobtask."Job No.", JobNo);
                if Jobtask.FindFirst then
                    if Jobtask."Job Task No." <> '' then begin
                        Jobtask.Init;
                        Jobtask."Job No." := JobNo;
                        Jobtask."Job Task No." := 'TEMP';
                        Jobtask.Description := Job.Description;
                        Jobtask."End Date" := Job."Ending Date";
                        Jobtask."Start Date" := Job."Starting Date";
                        Jobtask."Job Task Type" := Jobtask."Job Task Type"::Posting;
                        Jobtask."Job Posting Group" := 'OPERATION';
                        Jobtask.Insert(true);
                    end else
                        CurrReport.Skip;
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
        Jobtask: Record "Job Task";
        JobNo: Code[20];

    [Scope('Internal')]
    procedure GetJobNo(var JobNo1: Code[20])
    begin
        JobNo := JobNo1;
    end;
}

