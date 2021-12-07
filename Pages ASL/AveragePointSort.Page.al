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
                }
                field(Vessel; Vessel)
                {
                }
                field("Ending Date"; "Ending Date")
                {
                }
                field(AvgPtSortBay; AvgPtSortBay)
                {
                }
                field("Points Sort Bay"; "Points Sort Bay")
                {
                }
            }
        }
    }

    actions
    {
    }
}

