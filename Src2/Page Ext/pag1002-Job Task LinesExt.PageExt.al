pageextension 50203 pageextension50203 extends "Job Task Lines"
{
    layout
    {
        modify("Job No.")
        {
            Editable = true;
        }
    }
    actions
    {

        //Unsupported feature: Code Modification on ""Create &Sales Invoice"(Action 15).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Job No.");
        Job.Get("Job No.");
        if Job.Blocked = Job.Blocked::All then
          Job.TestBlocked;

        JobTask.SetRange("Job No.",Job."No.");
        if "Job Task No." <> '' then
          JobTask.SetRange("Job Task No.","Job Task No.");

        REPORT.RunModal(REPORT::"Job Create Sales Invoice",true,false,JobTask);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Job No.");
        Job.Get("Job No.");
        if Job.Blocked = Job.Blocked::Posting then
        #4..10
        */
        //end;


        //Unsupported feature: Code Modification on ""Split &Planning Lines"(Action 17).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Job No.");
        Job.Get("Job No.");
        if Job.Blocked = Job.Blocked::All then
          Job.TestBlocked;

        TestField("Job Task No.");
        JobTask.SetRange("Job No.",Job."No.");
        JobTask.SetRange("Job Task No.","Job Task No.");

        REPORT.RunModal(REPORT::"Job Split Planning Line",true,false,JobTask);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Job No.");
        Job.Get("Job No.");
        if Job.Blocked = Job.Blocked::Posting then
        #4..10
        */
        //end;


        //Unsupported feature: Code Modification on ""Change &Dates"(Action 22).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Job No.");
        Job.Get("Job No.");
        if Job.Blocked = Job.Blocked::All then
          Job.TestBlocked;

        JobTask.SetRange("Job No.",Job."No.");
        if "Job Task No." <> '' then
          JobTask.SetRange("Job Task No.","Job Task No.");

        REPORT.RunModal(REPORT::"Change Job Dates",true,false,JobTask);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Job No.");
        Job.Get("Job No.");
        if Job.Blocked = Job.Blocked::Posting then
        #4..10
        */
        //end;
    }
}

