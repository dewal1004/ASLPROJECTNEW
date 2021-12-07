pageextension 50206 pageextension50206 extends "Account Schedule"
{

    //Unsupported feature: Code Modification on "SetupAccSchedLine(PROCEDURE 3)".

    //procedure SetupAccSchedLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    AccSchedLine := Rec;
    if "Line No." = 0 then begin
      AccSchedLine := xRec;
      AccSchedLine.SetRange("Schedule Name",CurrentSchedName);
      if AccSchedLine.Next = 0 then
        AccSchedLine."Line No." := xRec."Line No." + 10000
      else begin
        if AccSchedLine.FindLast then
          AccSchedLine."Line No." += 10000;
        AccSchedLine.SetRange("Schedule Name");
      end;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    #5..7
        AccSchedLine.SetRange("Schedule Name",AccSchedLine."Schedule Name");
    #8..12
    */
    //end;
}

