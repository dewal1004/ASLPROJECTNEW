page 50038 "Course Attendance List"
{
    Editable = false;
    PageType = Card;
    SourceTable = "Course Attendance";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Rec No."; "Rec No.")
                {
                    ApplicationArea = All;
                }
                field("Training Course Code"; "Training Course Code")
                {
                    ApplicationArea = All;
                }
                field("Course name"; "Course name")
                {
                    ApplicationArea = All;
                }
                field("Training Group"; "Training Group")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    ApplicationArea = All;
                }
                field(Cost; Cost)
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Region Code"; "Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; "Start Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LookupMode := true;
    end;
}

