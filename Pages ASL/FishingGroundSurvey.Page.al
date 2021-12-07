page 50079 "Fishing Ground Survey"
{
    PageType = List;
    SourceTable = "Job Task";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Job Task No."; "Job Task No.")
                {
                }
                field(Description; Description)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Edit Fishing Ground")
            {
                RunObject = Page "Job Task Lines";
            }
        }
    }
}

