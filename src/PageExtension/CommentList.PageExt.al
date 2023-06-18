pageextension 50212 "pageextension50212" extends "Comment List"
{
    layout
    {
        //Unsupported feature: Property Modification (ImplicitType) on "Comment(Control 6)".

        addafter("Code")
        {
            field(Vessel; Rec.Vessel)
            {
                ApplicationArea = All;
            }
            field("Day Lost Cause"; Rec."Day Lost Cause")
            {
                ApplicationArea = All;
            }
            field("Days Lost"; Rec."Days Lost")
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }
}
