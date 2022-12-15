page 50043 "Employee Training sub form"
{
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Course Attendance";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Employee No"; "Employee No")
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
                field(Comments; Comments)
                {
                    Caption = 'Employee Comment';
                }
                field(Cost; Cost)
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        CatRec: Record "Course Attendance";
        TCourseRec: Record "Training Courses";
        TotalCost: Decimal;
        AvgCost: Decimal;
        RecCount: Integer;
}

