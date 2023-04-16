tableextension 50327 "tableextension50327" extends "Assembly Header"
{

    //Unsupported feature: Code Modification on "ValidateDueDate(PROCEDURE 35)".

    //procedure ValidateDueDate();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Due Date" := NewDueDate;
    CheckIsNotAsmToOrder;
    TestStatusOpen;

    if CallValidateOnOtherDates then
      ValidateDates(FieldNo("Due Date"),false);
    if (xRec."Due Date" <> "Due Date") and (Quantity <> 0) then
      ReservationCheckDateConfl.AssemblyHeaderCheck(Rec,(CurrFieldNo <> 0) or TestReservationDateConflict);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    if (xRec."Due Date" <> "Due Date") and (Quantity <> 0) then
      ReservationCheckDateConfl.AssemblyHeaderCheck(Rec,(CurrFieldNo <> 0) or TestReservationDateConflict);
    if CallValidateOnOtherDates then
      ValidateDates(FieldNo("Due Date"),false);
    */
    //end;
}

