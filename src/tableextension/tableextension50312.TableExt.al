tableextension 50312 "tableextension50312" extends "Service Contract Line"
{
    fields
    {
        //Unsupported feature: Code Modification on ""Line Value"(Field 22).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Line Value" < 0 then
          FieldError("Line Value");

        Validate("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Line Discount %");
        */
        //end;
    }
}
