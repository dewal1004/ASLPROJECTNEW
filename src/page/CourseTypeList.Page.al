page 50037 "Course Type List"
{
    PageType = Card;
    SourceTable = "Course Types";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Course Type Code"; "Course Type Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
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

