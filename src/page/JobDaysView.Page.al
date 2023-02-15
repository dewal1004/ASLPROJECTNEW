page 99190 "Job Days View"
{
    PageType = Card;
    SourceTable = Job;

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
                field("Cycle Day (Manual)"; "Cycle Day (Manual)")
                {
                    ApplicationArea = All;
                }
                field("Fishing Day (Manual)"; "Fishing Day (Manual)")
                {
                    ApplicationArea = All;
                }
                field("Lost At Sea (Manual)"; "Lost At Sea (Manual)")
                {
                    ApplicationArea = All;
                }
                field("Port Day (Manual)"; "Port Day (Manual)")
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

