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
                field("Course Type"; Rec."Course Type")
                {
                    ApplicationArea = All;
                }
                field("Courses Code"; Rec."Courses Code")
                {
                    ApplicationArea = All;
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                }
                field("Training Group"; Rec."Training Group")
                {
                    ApplicationArea = All;
                }
                field("Course Description"; Rec."Course Description")
                {
                    ApplicationArea = All;
                }
                field("Vendor Code"; Rec."Vendor Code")
                {
                    ApplicationArea = All;
                }
                field("Vendor name"; Rec."Vendor name")
                {
                    ApplicationArea = All;
                }
                field(Time; Rec.Time)
                {
                    ApplicationArea = All;
                }
                field("Course Start Date"; Rec."Course Start Date")
                {
                    ApplicationArea = All;
                }
                field("Course Duration"; Rec."Course Duration")
                {
                    ApplicationArea = All;
                }
                field("Total Cost"; Rec."Total Cost")
                {
                    ApplicationArea = All;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                }
                field("No Series"; Rec."No Series")
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

