page 50085 "Fishing Area"
{
    Editable = false;
    PageType = Card;
    SourceTable = "Fishing Area +";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Code"; Code)
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

