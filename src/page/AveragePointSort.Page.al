page 50195 "Average Point Sort"
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
                field(Vessel; Vessel)
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; "Ending Date")
                {
                    ApplicationArea = All;
                }
                field(AvgPtSortBay; AvgPtSortBay)
                {
                    ApplicationArea = All;
                }
                field("Points Sort Bay"; "Points Sort Bay")
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

