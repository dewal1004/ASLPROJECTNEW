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
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Range; Range)
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

