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
                }
                field("Courses Code"; "Courses Code")
                {
                }
                field("Course Name"; "Course Name")
                {
                }
                field("Training Group"; "Training Group")
                {
                }
                field("Course Description"; "Course Description")
                {
                }
                field("Vendor Code"; "Vendor Code")
                {
                }
                field("Vendor name"; "Vendor name")
                {
                }
                field(Time; Time)
                {
                }
                field("Course Start Date"; "Course Start Date")
                {
                }
                field("Course Duration"; "Course Duration")
                {
                }
                field("Total Cost"; "Total Cost")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field(Comment; Comment)
                {
                }
                field("No Series"; "No Series")
                {
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
                }
                action(Attendance)
                {
                    Caption = 'Attendance';
                    RunObject = Page "Course Attendance List";
                    RunPageLink = "Training Course Code" = FIELD ("Courses Code");
                }
            }
        }
    }
}

