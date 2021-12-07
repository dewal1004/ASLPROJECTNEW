table 50028 "Course Attendance"
{
    DrillDownPageID = "Course Attendance List";
    LookupPageID = "Course Attendance List";

    fields
    {
        field(1; "Rec No."; Integer)
        {
        }
        field(2; "Training Course Code"; Code[10])
        {
            TableRelation = "Training Courses"."Courses Code";

            trigger OnValidate()
            begin
                if TCourseRec.Get("Training Course Code") then begin
                    "Training Group" := TCourseRec."Training Group";
                    "Course name" := TCourseRec."Course Name";
                    "Start Date" := TCourseRec."Course Start Date";
                end;
            end;
        }
        field(3; "Course name"; Text[30])
        {
            Editable = false;
        }
        field(4; "Employee No"; Code[10])
        {
            TableRelation = Employee;

            trigger OnValidate()
            begin
                EmploRec.Get("Employee No");
                "Employee Name" := EmploRec.FullName;
                "Region Code" := EmploRec."Region Code";
                "Global Dimension 1 Code" := EmploRec."Global Dimension 1 Code";
                "Global Dimension 2 Code" := EmploRec."Global Dimension 2 Code";
            end;
        }
        field(5; "Employee Name"; Text[100])
        {
            Editable = false;
        }
        field(6; "Region Code"; Code[10])
        {
            Editable = false;
        }
        field(7; "Global Dimension 1 Code"; Code[10])
        {
            Editable = false;
        }
        field(8; "Global Dimension 2 Code"; Code[10])
        {
            Editable = false;
        }
        field(9; "Start Date"; Date)
        {
            Editable = false;
        }
        field(10; Cost; Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(11; Comments; Text[100])
        {
        }
        field(12; "Course Line No."; Integer)
        {
            Editable = false;
        }
        field(13; "Training Group"; Option)
        {
            OptionMembers = " ",Mixed,Outdoor,"In-House";
        }
    }

    keys
    {
        key(Key1; "Training Course Code", "Employee No")
        {
            Clustered = true;
            SumIndexFields = Cost;
        }
        key(Key2; "Training Group", "Training Course Code", "Course Line No.")
        {
            SumIndexFields = Cost;
        }
        key(Key3; "Employee No", "Training Course Code")
        {
            SumIndexFields = Cost;
        }
        key(Key4; "Training Course Code", "Course Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        CalcAvgCost(-1);
    end;

    trigger OnInsert()
    begin

        if CAtRec.Find('+') then
            "Rec No." := CAtRec."Rec No." + 1
        else
            "Rec No." := 1;

        CAtRec.Reset;
        CAtRec.SetCurrentKey("Training Group", "Training Course Code", "Course Line No.");
        CAtRec.SetRange("Training Course Code", "Training Course Code");

        if CAtRec.Find('+') then
            "Course Line No." := CAtRec."Course Line No." + 10
        else
            "Course Line No." := 10;

        CalcAvgCost(1);
    end;

    var
        CAtRec: Record "Course Attendance";
        HumanResSetup: Record "Human Resources Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        TCourseRec: Record "Training Courses";
        EmploRec: Record Employee;
        TotalCost: Decimal;
        AvgCost: Decimal;
        RecCount: Integer;

    //[Scope('Internal')]
    procedure CalcAvgCost(Normalizer: Integer)
    begin
        TCourseRec.Get("Training Course Code");

        CAtRec.SetCurrentKey("Training Course Code");
        CAtRec.SetRange("Training Course Code", "Training Course Code");
        RecCount := CAtRec.Count + Normalizer;
        TotalCost := TCourseRec."Total Cost";
        if RecCount <> 0 then begin
            AvgCost := TotalCost / RecCount;
            CAtRec.ModifyAll(CAtRec.Cost, AvgCost);

            if Normalizer = 1 then
                Validate(Cost, AvgCost);
        end;
    end;
}

