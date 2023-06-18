page 50038 "Course Attendance List"
{
    Editable = false;
    PageType = Card;
    SourceTable = "Course Attendance";
    Caption = 'Course Attendance List';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Rec No."; Rec."Rec No.")
                {
                    ApplicationArea = All;
                }
                field("Training Course Code"; Rec."Training Course Code")
                {
                    ApplicationArea = All;
                }
                field("Course name"; Rec."Course name")
                {
                    ApplicationArea = All;
                }
                field("Training Group"; Rec."Training Group")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field(Cost; Rec.Cost)
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Region Code"; Rec."Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
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
