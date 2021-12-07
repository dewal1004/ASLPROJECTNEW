pageextension 50349 pageextension50349 extends "Warehouse Movement Subform"
{

    //Unsupported feature: Code Modification on "ChangeUOM(PROCEDURE 1)".

    //procedure ChangeUOM();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestField("Action Type");
    TestField("Breakbulk No.",0);
    TestField("Qty. to Handle");
    WhseChangeOUM.DefWhseActLine(Rec);
    WhseChangeOUM.RunModal;
    if WhseChangeOUM.ChangeUOMCode(WhseActLine) = true then
      ChangeUOMCode(Rec,WhseActLine);
    Clear(WhseChangeOUM);
    CurrPage.Update(false);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Action Type");
    TestField("Breakbulk No.",0);
    #4..9
    */
    //end;
}

