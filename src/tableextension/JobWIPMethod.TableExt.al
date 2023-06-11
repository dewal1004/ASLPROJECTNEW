tableextension 50203 "tableextension50203" extends "Job WIP Method"
{
    fields
    {

        //Unsupported feature: Code Modification on ""WIP Cost"(Field 3).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateModification;
        if "Recognized Costs" <> "Recognized Costs"::"Usage (Total Cost)" then
          Error(Text003,FieldCaption("Recognized Costs"),"Recognized Costs");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateModification;
        if "Recognized Costs" <> "Recognized Costs"::"Usage (Total Cost)" then
          Error(Text003,FieldCaption("Recognized Sales"),"Recognized Sales");
        */
        //end;
    }
}

