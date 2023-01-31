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
                    ApplicationArea = All;
                }
                field("Training Group"; "Training Group")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        EnableControls
                    end;
                }
                field("Course Type"; "Course Type")
                {
                    Caption = 'Course Group';
                    ApplicationArea = All;
                }
                field("Course Name"; "Course Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Vendor Code"; "Vendor Code")
                {
                    Enabled = "Vendor CodeEnable";
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if VendRec.Get("Vendor Code") then "Total CostEnable" := true;
                    end;
                }
                field("Vendor name"; "Vendor name")
                {
                    Editable = false;
                    Enabled = "Vendor nameEnable";
                    ApplicationArea = All;
                }
                field("Course Description"; "Course Description")
                {
                    Caption = 'Course Description';
                    ApplicationArea = All;
                }
                field(Comment; Comment)
                {
                    Caption = 'HHR Comment';
                    ApplicationArea = All;
                }
                field("Course Start Date"; "Course Start Date")
                {
                    ApplicationArea = All;
                }
                field(Time; Time)
                {
                    ApplicationArea = All;
                }
                field("Course Duration"; "Course Duration")
                {
                    ApplicationArea = All;
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Caption = 'Unit Cost';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Total Cost"; "Total Cost")
                {
                    Enabled = "Total CostEnable";
                    ApplicationArea = All;
                }
            }
            part("Training Lines"; "Employee Training sub form")
            {
                SubPageLink = "Training Course Code" = FIELD("Courses Code");
                SubPageView = SORTING("Training Group", "Training Course Code", "Course Line No.");
                ApplicationArea = All;
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

    [Scope('OnPrem')]
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

