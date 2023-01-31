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
                    ApplicationArea = All;
                }
                field("Staff No."; "Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Staff Name"; "Staff Name")
                {
                    ApplicationArea = All;
                }
                field("Time in Premises"; "Time in Premises")
                {
                    ApplicationArea = All;
                }
                field("Log Date"; "Log Date")
                {
                    ApplicationArea = All;
                }
                field("Log Time"; "Log Time")
                {
                    ApplicationArea = All;
                }
                field("IN/OUT"; "IN/OUT")
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

