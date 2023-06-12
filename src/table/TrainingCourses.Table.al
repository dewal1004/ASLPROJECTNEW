table 50027 "Training Courses"
{
    DrillDownPageID = "Training Courses List";
    LookupPageID = "Training Courses List";

    fields
    {
        field(1; "Courses Code"; Code[10])
        {
        }
        field(2; "Course Type"; Code[10])
        {
            TableRelation = "Course Types"."Course Type Code";

            trigger OnValidate()
            begin
                if CTypeRec.Get("Course Type") then
                    "Course Name" := CTypeRec.Description
                else
                    "Course Name" := '';
            end;
        }
        field(3; "Course Name"; Text[100])
        {
            Editable = false;
        }
        field(4; "Vendor Code"; Code[10])
        {
            TableRelation = IF ("Training Group" = FILTER(Mixed | Outdoor)) Vendor."No." WHERE(Trainer = CONST(true));

            trigger OnValidate()
            begin
                if VendRec.Get("Vendor Code") then
                    "Vendor name" := VendRec.Name
                else
                    "Vendor name" := '';
            end;
        }
        field(5; "Vendor name"; Text[30])
        {
            Editable = false;
        }
        field(6; Time; Time)
        {
        }
        field(7; "Course Start Date"; Date)
        {
        }
        field(8; "Course Duration"; Code[10])
        {
            DateFormula = true;
        }
        field(9; "Total Cost"; Decimal)
        {
            BlankZero = true;
            DecimalPlaces = 2 : 2;

            trigger OnValidate()
            begin
                CattRec.SetRange(CattRec."Training Course Code", "Courses Code");
                CCount := CattRec.Count;
                if (CCount <> 0) then CattRec.ModifyAll(CattRec.Cost, "Total Cost" / CCount);
            end;
        }
        field(10; "Unit Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Average("Course Attendance".Cost WHERE("Training Course Code" = FIELD("Courses Code")));
            FieldClass = FlowField;

            trigger OnValidate()
            begin
                Validate("Total Vendor Cost", "Unit Cost");
            end;
        }
        field(11; Comment; Text[250])
        {
        }
        field(12; "No Series"; Code[10])
        {
        }
        field(13; "Region Code"; Code[10])
        {
        }
        field(14; "Global Dimension 1 Code"; Code[10])
        {
        }
        field(15; "Global Dimension 2 Code"; Code[10])
        {
        }
        field(16; "Total Vendor Cost"; Decimal)
        {
            FieldClass = Normal;
        }
        field(17; "Class Size"; Integer)
        {
            CalcFormula = Count("Course Attendance" WHERE("Training Course Code" = FIELD("Courses Code")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Course Description"; Text[100])
        {
        }
        field(19; "Training Group"; Option)
        {
            OptionMembers = " ",Mixed,Outdoor,"In-House";
        }
    }

    keys
    {
        key(Key1; "Courses Code")
        {
            Clustered = true;
            SumIndexFields = "Total Vendor Cost", "Total Cost";
        }
        key(Key2; "Vendor Code")
        {
            SumIndexFields = "Total Cost";
        }
        key(Key3; "Training Group", "Courses Code")
        {
            SumIndexFields = "Total Vendor Cost", "Total Cost";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        LockTable;
        CattRec.SetRange("Training Course Code", "Courses Code");
        CattRec.DeleteAll;
    end;

    trigger OnInsert()
    begin

        if "Courses Code" = '' then begin
            HumanResSetup.Get;
            HumanResSetup.TestField("Course Attendance No");
            NoSeriesMgt.InitSeries(HumanResSetup."Course Attendance No", xRec."No Series", 0D, "Courses Code", "No Series");
        end;

        "Course Start Date" := Today;
    end;

    var
        TCourseRec: Record "Training Courses";
        HumanResSetup: Record "Human Resources Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        VendRec: Record Vendor;
        CattRec: Record "Course Attendance";
        CTypeRec: Record "Course Types";
        CCount: Integer;
}

