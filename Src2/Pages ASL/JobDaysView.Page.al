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
                }
                field("Cycle Day (Manual)"; "Cycle Day (Manual)")
                {
                }
                field("Fishing Day (Manual)"; "Fishing Day (Manual)")
                {
                }
                field("Lost At Sea (Manual)"; "Lost At Sea (Manual)")
                {
                }
                field("Port Day (Manual)"; "Port Day (Manual)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

