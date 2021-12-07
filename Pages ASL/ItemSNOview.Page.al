page 50188 "Item S/NO. view"
{
    PageType = Card;
    SourceTable = Item;
    SourceTableView = WHERE ("Gen. Prod. Posting Group" = CONST ('FIS'));

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
                field(Description; Description)
                {
                }
                field("Statistics Group"; "Statistics Group")
                {
                }
                field("S/No."; "S/No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

