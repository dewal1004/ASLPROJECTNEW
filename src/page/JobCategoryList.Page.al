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
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Range; Rec.Range)
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

