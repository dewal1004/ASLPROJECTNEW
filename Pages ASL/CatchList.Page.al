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
                }
                field("Employee No"; "Employee No")
                {
                }
            }
        }
    }

    actions
    {
    }
}

