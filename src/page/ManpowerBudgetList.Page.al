page 60013 "Manpower Budget List"
{
    Editable = false;
    PageType = Card;
    SourceTable = "Manpower Budget Table NU*";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Entry No"; Rec."Entry No")
                {
                    ApplicationArea = All;
                }
                field("Region Code"; Rec."Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Job Code"; Rec."Job Code")
                {
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Budget Unit Cost"; Rec."Budget Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Total Budget Cost"; Rec."Total Budget Cost")
                {
                    ApplicationArea = All;
                }
                field("Manpower Budget"; Rec."Manpower Budget")
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

