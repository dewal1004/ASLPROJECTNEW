page 50188 "Item S/NO. view"
{
    PageType = Card;
    SourceTable = Item;
    SourceTableView = WHERE("Gen. Prod. Posting Group" = CONST('FIS'));

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
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Statistics Group"; "Statistics Group")
                {
                    ApplicationArea = All;
                }
                field("S/No."; "S/No.")
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

