page 50084 "Catch Default"
{
    PageType = Card;
    SourceTable = "Catch Default";
    SourceTableView = SORTING("S/No.");

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
                field("Pack Size"; "Pack Size")
                {
                    ApplicationArea = All;
                }
                field(Brand; Brand)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("In Use"; "In Use")
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

