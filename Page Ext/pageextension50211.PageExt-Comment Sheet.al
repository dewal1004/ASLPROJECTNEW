pageextension 50211 pageextension50211 extends "Comment Sheet"
{
    layout
    {

        //Unsupported feature: Property Modification (ImplicitType) on "Comment(Control 4)".

        addafter("Code")
        {
            field("Fuel Consumed"; "Fuel Consumed")
            {
            }
            field("Fuel Days"; "Fuel Days")
            {
            }
            field("Fuel Average"; "Fuel Average")
            {
            }
        }
    }


    //Unsupported feature: Code Modification on "OnNewRecord".

    //trigger OnNewRecord(BelowxRec: Boolean)
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetUpNewLine;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //SetUpNewLine;
    SetUpNewLine(Rec); ///AAA
    */
    //end;
}

