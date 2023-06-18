pageextension 50302 "pageextension50302" extends "View Applied Entries"
{
    //Unsupported feature: Code Modification on "RemoveApplications(PROCEDURE 1)".

    //procedure RemoveApplications();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Application.SetCurrentKey("Inbound Item Entry No.","Outbound Item Entry No.");
    Application.SetRange("Inbound Item Entry No.",Inbound);
    Application.SetRange("Outbound Item Entry No.",OutBound);
    if Application.FindSet then
      repeat
        Apply.UnApply(Application);
        Apply.LogUnapply(Application);
      until Application.Next = 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
      until Application.Next = 0;
    */
    //end;
}
