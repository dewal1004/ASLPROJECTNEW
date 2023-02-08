page 60100 "Date"
{
    PageType = Card;
    SourceTable = Date;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Period No."; "Period No.")
                {
                    ApplicationArea = All;
                }
                field("Period Name"; "Period Name")
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

