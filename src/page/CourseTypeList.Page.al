page 50037 "Course Type List"
{
    PageType = Card;
    SourceTable = "Course Types";
    Caption = 'Course Type List';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Course Type Code"; Rec."Course Type Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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
