pageextension 50296 "pageextension50296" extends "Application Worksheet"
{
    actions
    {

        //Unsupported feature: Property Modification (Name) on "UnappliedEntries(Action 16)".

    }

    //Unsupported feature: Code Insertion on "OnClosePage".

    //trigger OnClosePage()
    //begin
    /*
    UnblockItems;
    Reapplyall;
    */
    //end;


    //Unsupported feature: Code Modification on "OnQueryClosePage".

    //trigger OnQueryClosePage(CloseAction: Action): Boolean
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if Apply.AnyTouchedEntries then begin
      if not Confirm(Text003) then
        exit(false);

      UnblockItems;
      Reapplyall;
    end;

    exit(true);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Apply.AnyTouchedEntries then
      if not Confirm(Text003) then
        exit(false);
      UnblockItems;
      Reapplyall;

    exit(true);
    */
    //end;


    //Unsupported feature: Code Modification on "Reapplyall(PROCEDURE 1)".

    //procedure Reapplyall();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Apply.RedoApplications;
    Apply.CostAdjust;
    Apply.ClearApplicationLog;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Apply.RedoApplications;
    Apply.CostAdjust;
    */
    //end;
}

