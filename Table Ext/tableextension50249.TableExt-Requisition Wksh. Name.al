tableextension 50249 tableextension50249 extends "Requisition Wksh. Name"
{
    fields
    {
        field(50001; Approved; Boolean)
        {
        }
        field(50002; "Requested By"; Code[10])
        {
            CalcFormula = Min ("Requisition Line"."Requester ID" WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"),
                                                                       "Journal Batch Name" = FIELD (Name)));
            FieldClass = FlowField;
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ReqLine.SetRange("Worksheet Template Name","Worksheet Template Name");
    ReqLine.SetRange("Journal Batch Name",Name);
    ReqLine.DeleteAll(true);

    PlanningErrorLog.SetRange("Worksheet Template Name","Worksheet Template Name");
    PlanningErrorLog.SetRange("Journal Batch Name",Name);
    PlanningErrorLog.DeleteAll;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..7

    //AAA Dec 2001

    //IF USERID
    HR:='HRR';
    if GLSetUp.Find('-') then ;
    if HR<>GLSetUp.Administrator then
    Error('You cannot delete anything');
    */
    //end;

    var
        GLSetUp: Record "General Ledger Setup";
        HR: Code[10];
}

