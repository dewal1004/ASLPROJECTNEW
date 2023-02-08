pageextension 50243 "pageextension50243" extends "Units of Measure"
{
    layout
    {
        addafter("International Standard Code")
        {
            field("Catch Code"; "Catch Code")
            {
                Visible = false;
                ApplicationArea = All;
            }
            field("In Use"; "In Use")
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }
}

