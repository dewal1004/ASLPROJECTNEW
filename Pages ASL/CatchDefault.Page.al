page 50084 "Catch Default"
{
    PageType = Card;
    SourceTable = "Catch Default";
    SourceTableView = SORTING ("S/No.");

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                }
                field("Pack Size"; "Pack Size")
                {
                }
                field(Brand; Brand)
                {
                }
                field(Description; Description)
                {
                }
                field("In Use"; "In Use")
                {
                }
            }
        }
    }

    actions
    {
    }
}

