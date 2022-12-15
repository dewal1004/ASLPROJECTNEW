table 60030 "Scholarship Courses Grp NU*"
{
    // DrillDownPageID = 60043;
    // LookupPageID = 60043;

    fields
    {
        field(1; "Code"; Code[10])
        {
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
        }
        field(3; "Staff Count"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Scholarship Register NU*" WHERE ("Course Group" = FIELD (Code)));
            FieldClass = FlowField;
        }
        field(4; "Date Filter"; Date)
        {
        }
        field(5; "Employee Filter"; Text[50])
        {
            FieldClass = FlowFilter;
            TableRelation = Employee."No.";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

