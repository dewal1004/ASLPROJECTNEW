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
                field("Entry No"; "Entry No")
                {
                    ApplicationArea = All;
                }
                field("Region Code"; "Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Job Code"; "Job Code")
                {
                    ApplicationArea = All;
                }
                field("Starting Date"; "Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Budget Unit Cost"; "Budget Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Total Budget Cost"; "Total Budget Cost")
                {
                    ApplicationArea = All;
                }
                field("Manpower Budget"; "Manpower Budget")
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

