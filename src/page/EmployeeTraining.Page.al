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
                field("Courses Code"; Rec."Courses Code")
                {
                    ApplicationArea = All;
                }
                field("Training Group"; Rec."Training Group")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        EnableControls
                    end;
                }
                field("Course Type"; Rec."Course Type")
                {
                    Caption = 'Course Group';
                    ApplicationArea = All;
                }
                field("Course Name"; Rec."Course Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Vendor Code"; Rec."Vendor Code")
                {
                    Enabled = "Vendor CodeEnable";
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if VendRec.Get(Rec."Vendor Code") then "Total CostEnable" := true;
                    end;
                }
                field("Vendor name"; Rec."Vendor name")
                {
                    Editable = false;
                    Enabled = "Vendor nameEnable";
                    ApplicationArea = All;
                }
                field("Course Description"; Rec."Course Description")
                {
                    Caption = 'Course Description';
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    Caption = 'HHR Comment';
                    ApplicationArea = All;
                }
                field("Course Start Date"; Rec."Course Start Date")
                {
                    ApplicationArea = All;
                }
                field(Time; Rec.Time)
                {
                    ApplicationArea = All;
                }
                field("Course Duration"; Rec."Course Duration")
                {
                    ApplicationArea = All;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Total Cost"; Rec."Total Cost")
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
        if (Rec."Training Group" = 0) or (Rec."Training Group" = Rec."Training Group"::"In-House") then begin
            "Vendor CodeEnable" := false;
            "Vendor nameEnable" := false;
        end
        else begin
            "Vendor CodeEnable" := true;
            "Vendor nameEnable" := true;
        end
    end;
}

