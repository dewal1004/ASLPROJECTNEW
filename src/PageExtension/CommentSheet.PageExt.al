pageextension 50211 "pageextension50211" extends "Comment Sheet"
{
    layout
    {

        //Unsupported feature: Property Modification (ImplicitType) on "Comment(Control 4)".

        addafter("Code")
        {
            field("Fuel Consumed"; Rec."Fuel Consumed")
            {
                ApplicationArea = All;
            }
            field("Fuel Days"; Rec."Fuel Days")
            {
                ApplicationArea = All;
            }
            field("Fuel Average"; Rec."Fuel Average")
            {
                ApplicationArea = All;
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

