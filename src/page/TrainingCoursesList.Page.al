page 50039 "Training Courses List"
{
    Editable = false;
    PageType = Card;
    SourceTable = "Training Courses";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Course Type"; "Course Type")
                {
                    ApplicationArea = All;
                }
                field("Courses Code"; "Courses Code")
                {
                    ApplicationArea = All;
                }
                field("Course Name"; "Course Name")
                {
                    ApplicationArea = All;
                }
                field("Training Group"; "Training Group")
                {
                    ApplicationArea = All;
                }
                field("Course Description"; "Course Description")
                {
                    ApplicationArea = All;
                }
                field("Vendor Code"; "Vendor Code")
                {
                    ApplicationArea = All;
                }
                field("Vendor name"; "Vendor name")
                {
                    ApplicationArea = All;
                }
                field(Time; Time)
                {
                    ApplicationArea = All;
                }
                field("Course Start Date"; "Course Start Date")
                {
                    ApplicationArea = All;
                }
                field("Course Duration"; "Course Duration")
                {
                    ApplicationArea = All;
                }
                field("Total Cost"; "Total Cost")
                {
                    ApplicationArea = All;
                }
                field("Unit Cost"; "Unit Cost")
                {
                    ApplicationArea = All;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
                field("No Series"; "No Series")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Course")
            {
                Caption = '&Course';
                action("&Card")
                {
                    Caption = '&Card';
                    Image = EditLines;
                    RunObject = Page "Employee Training";
                    ApplicationArea = All;
                }
                action(Attendance)
                {
                    Caption = 'Attendance';
                    RunObject = Page "Course Attendance List";
                    RunPageLink = "Training Course Code" = FIELD("Courses Code");
                    ApplicationArea = All;
                }
            }
        }
    }
}

