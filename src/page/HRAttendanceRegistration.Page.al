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
                field("Bar Code ID"; Rec."Bar Code ID")
                {
                    ExtendedDatatype = Masked;
                    ApplicationArea = All;
                }
                field("Staff No."; Rec."Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Staff Name"; Rec."Staff Name")
                {
                    ApplicationArea = All;
                }
                field("Time in Premises"; Rec."Time in Premises")
                {
                    ApplicationArea = All;
                }
                field("Log Date"; Rec."Log Date")
                {
                    ApplicationArea = All;
                }
                field("Log Time"; Rec."Log Time")
                {
                    ApplicationArea = All;
                }
                field("IN/OUT"; Rec."IN/OUT")
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

