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
                }
                field("Training Course Code"; "Training Course Code")
                {
                }
                field("Course name"; "Course name")
                {
                }
                field("Training Group"; "Training Group")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field(Cost; Cost)
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Region Code"; "Region Code")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Start Date"; "Start Date")
                {
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

