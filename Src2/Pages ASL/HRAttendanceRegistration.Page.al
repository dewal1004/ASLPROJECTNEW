page 50033 "HR Attendance Registration"
{
    PageType = Card;
    SourceTable = "Staff Log";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Bar Code ID"; "Bar Code ID")
                {
                    ExtendedDatatype = Masked;
                }
                field("Staff No."; "Staff No.")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Time in Premises"; "Time in Premises")
                {
                }
                field("Log Date"; "Log Date")
                {
                }
                field("Log Time"; "Log Time")
                {
                }
                field("IN/OUT"; "IN/OUT")
                {
                }
            }
        }
    }

    actions
    {
    }
}

