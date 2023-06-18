page 50085 "Fishing Area"
{
    Editable = false;
    PageType = Card;
    SourceTable = "Fishing Area +";
    Caption = 'Fishing Area';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}
