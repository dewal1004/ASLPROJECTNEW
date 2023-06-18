page 50084 "Catch Default"
{
    PageType = Card;
    SourceTable = "Catch Default";
    SourceTableView = SORTING("S/No.");
    Caption = 'Catch Default';
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
                field("Pack Size"; Rec."Pack Size")
                {
                    ApplicationArea = All;
                }
                field(Brand; Rec.Brand)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("In Use"; Rec."In Use")
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
