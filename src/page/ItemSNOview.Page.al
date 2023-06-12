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
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Statistics Group"; Rec."Statistics Group")
                {
                    ApplicationArea = All;
                }
                field("S/No."; Rec."S/No.")
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

