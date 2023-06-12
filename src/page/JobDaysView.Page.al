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
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Cycle Day (Manual)"; Rec."Cycle Day (Manual)")
                {
                    ApplicationArea = All;
                }
                field("Fishing Day (Manual)"; Rec."Fishing Day (Manual)")
                {
                    ApplicationArea = All;
                }
                field("Lost At Sea (Manual)"; Rec."Lost At Sea (Manual)")
                {
                    ApplicationArea = All;
                }
                field("Port Day (Manual)"; Rec."Port Day (Manual)")
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

