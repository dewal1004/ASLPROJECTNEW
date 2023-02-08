pageextension 50300 "pageextension50300" extends "Misc. Articles"
{
    layout
    {
        addafter("Code")
        {
            field("Mat Type"; "Mat Type")
            {
                ApplicationArea = All;
            }
            field("Item No."; "Item No.")
            {
                ApplicationArea = All;
            }
        }
        addafter(Description)
        {
            field("Replacement Interval"; "Replacement Interval")
            {
                ApplicationArea = All;
            }
            field(Replaceable; Replaceable)
            {
                ApplicationArea = All;
            }
        }
    }
}

