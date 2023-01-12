page 80089 "Catch List"
{
    PageType = Card;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Line No"; "Line No")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
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

