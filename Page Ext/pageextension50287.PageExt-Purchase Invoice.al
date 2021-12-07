pageextension 50287 pageextension50287 extends "Purchase Invoice"
{
    layout
    {
        modify("No.")
        {
            Visible = true;
        }

        //Unsupported feature: Property Modification (Level) on "Control93(Control 93)".


        //Unsupported feature: Property Modification (Level) on ""Buy-from County"(Control 92)".


        //Unsupported feature: Property Modification (Level) on ""Buy-from Post Code"(Control 77)".


        //Unsupported feature: Property Modification (Level) on ""Buy-from Country/Region Code"(Control 95)".


        //Unsupported feature: Property Modification (Level) on ""Buy-from Contact No."(Control 128)".

        modify("Responsibility Center")
        {
            Visible = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Location Code"(Control 89)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Ship-to City"(Control 42)".


        //Unsupported feature: Property Modification (Level) on ""Ship-to County"(Control 97)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Pay-to City"(Control 24)".


        //Unsupported feature: Property Modification (Level) on ""Pay-to County"(Control 101)".

        addafter("Area")
        {
            field("Posting No."; "Posting No.")
            {
            }
        }
    }
}

