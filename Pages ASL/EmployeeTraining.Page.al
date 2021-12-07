page 50042 "Employee Training"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = "Training Courses";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Courses Code"; "Courses Code")
                {
                }
                field("Training Group"; "Training Group")
                {

                    trigger OnValidate()
                    begin
                        EnableControls
                    end;
                }
                field("Course Type"; "Course Type")
                {
                    Caption = 'Course Group';
                }
                field("Course Name"; "Course Name")
                {
                    Editable = false;
                }
                field("Vendor Code"; "Vendor Code")
                {
                    Enabled = "Vendor CodeEnable";

                    trigger OnValidate()
                    begin
                        if VendRec.Get("Vendor Code") then "Total CostEnable" := true;
                    end;
                }
                field("Vendor name"; "Vendor name")
                {
                    Editable = false;
                    Enabled = "Vendor nameEnable";
                }
                field("Course Description"; "Course Description")
                {
                    Caption = 'Course Description';
                }
                field(Comment; Comment)
                {
                    Caption = 'HHR Comment';
                }
                field("Course Start Date"; "Course Start Date")
                {
                }
                field(Time; Time)
                {
                }
                field("Course Duration"; "Course Duration")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Caption = 'Unit Cost';
                    Editable = false;
                }
                field("Total Cost"; "Total Cost")
                {
                    Enabled = "Total CostEnable";
                }
            }
            part("Training Lines"; "Employee Training sub form")
            {
                SubPageLink = "Training Course Code" = FIELD ("Courses Code");
                SubPageView = SORTING ("Training Group", "Training Course Code", "Course Line No.");
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        EnableControls
    end;

    trigger OnClosePage()
    begin
        ClearAll;
    end;

    trigger OnInit()
    begin
        "Vendor nameEnable" := true;
        "Vendor CodeEnable" := true;
        "Total CostEnable" := true;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        EnableControls
    end;

    var
        CatRec: Record "Course Attendance";
        TCourseRec: Record "Training Courses";
        TotalCost: Decimal;
        AvgCost: Decimal;
        RecCount: Integer;
        CTypeRec: Record "Course Types";
        VendRec: Record Vendor;
        [InDataSet]
        "Total CostEnable": Boolean;
        [InDataSet]
        "Vendor CodeEnable": Boolean;
        [InDataSet]
        "Vendor nameEnable": Boolean;

    [Scope('Internal')]
    procedure EnableControls()
    begin
        if ("Training Group" = 0) or ("Training Group" = "Training Group"::"In-House") then begin
            "Vendor CodeEnable" := false;
            "Vendor nameEnable" := false;
        end
        else begin
            "Vendor CodeEnable" := true;
            "Vendor nameEnable" := true;
        end
    end;
}

