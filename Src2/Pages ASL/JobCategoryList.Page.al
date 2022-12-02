page 50036 "Job Category List"
{
    PageType = Card;
    SourceTable = "Job Category";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Code)
                {
                }
                field(Description; Description)
                {
                }
                field(Range; Range)
                {
                }
            }
        }
    }

    actions
    {
    }
}

