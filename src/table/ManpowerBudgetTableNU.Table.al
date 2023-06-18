table 60011 "Manpower Budget Table NU*"
{
    Caption = 'Manpower Budget Table NU*';
    // DrillDownPageID = "Manpower Budget List"; ***
    // LookupPageID = "Manpower Budget List";

    fields
    {
        field(1; "Entry No"; Integer)
        {
        }
        field(2; "Region Code"; Code[10])
        {
            TableRelation = "Business Unit".Code;
        }
        field(3; "Global Dimension 1 Code"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));

            trigger OnValidate()
            begin
                if BCRec.Get("Global Dimension 1 Code") then "Region Code" := BCRec."Dimension Code";
            end;
        }
        field(4; "Global Dimension 2 Code"; Code[10])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));

            trigger OnValidate()
            begin
                if CCRec.Get("Global Dimension 2 Code") then
                    "Global Dimension 1 Code" := CCRec."Dimension Code";
                //  "Region Code" := CCRec."Region Code";
            end;
        }
        field(5; "Job Code"; Code[10])
        {
            TableRelation = "Employment Contract";

            trigger OnValidate()
            begin
                UpdateCosts()
            end;
        }
        field(6; "Starting Date"; Date)
        {
            TableRelation = "Accounting Period"."Starting Date";
        }
        field(7; "Manpower Budget"; Decimal)
        {
            BlankZero = true;
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                UpdateCosts()
            end;
        }
        field(8; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit".Code;
        }
        field(9; "Global Dimension 1 Filter"; Code[10])
        {
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(10; "Global Dimension 2 Filter"; Code[10])
        {
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(11; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(12; "Budget Unit Cost"; Decimal)
        {
            Editable = false;
        }
        field(13; "Total Budget Cost"; Decimal)
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No")
        {
            Clustered = true;
        }
        key(Key2; "Starting Date")
        {
            SumIndexFields = "Manpower Budget";
        }
        key(Key3; "Starting Date", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Job Code")
        {
            SumIndexFields = "Manpower Budget";
        }
        key(Key4; "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code")
        {
            SumIndexFields = "Manpower Budget";
        }
        key(Key5; "Global Dimension 1 Code")
        {
            SumIndexFields = "Manpower Budget";
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        if ManPwrRec.Find('+') then
            "Entry No" := ManPwrRec."Entry No" + 1
        else
            "Entry No" := 1;
    end;

    var
        ManPwrRec: Record "Manpower Budget Table NU*";
        BCRec: Record "Dimension Value";
        CCRec: Record "Dimension Value";
        EmpGrpRec: Record "Payroll-Employee Group Header.";
        EmpContRec: Record "Employment Contract";

    //[Scope('OnPrem')]
    procedure UpdateCosts()
    begin
        if EmpContRec.Get("Job Code") then begin
            Validate("Budget Unit Cost", EmpGrpRec.GetGross("Job Code"));
            "Total Budget Cost" := "Budget Unit Cost" * "Manpower Budget";
        end
        else begin
            "Budget Unit Cost" := 0;
            "Total Budget Cost" := 0;
        end;
    end;
}
