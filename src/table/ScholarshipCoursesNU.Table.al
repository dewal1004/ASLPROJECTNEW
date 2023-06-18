table 60031 "Scholarship Courses NU*"
{
    Caption = 'Scholarship Courses NU*';
    //***DrillDownPageID = 60044;
    //***LookupPageID = 60044;

    fields
    {
        field(1; Group; Code[10])
        {
            NotBlank = true;
            TableRelation = "Scholarship Courses Grp NU*".Code;
        }
        field(2; "Course Code"; Code[10])
        {
            NotBlank = true;
        }
        field(3; Description; Text[30])
        {
        }
        field(4; "Staff Count"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Scholarship Register NU*" WHERE("Course Code" = FIELD("Course Code")));
            FieldClass = FlowField;
            Editable = false;
        }
        field(5; "Date Filter"; Date)
        {
        }
        field(6; "Employee Filter"; Text[50])
        {
            FieldClass = FlowFilter;
            TableRelation = Employee."No.";
        }
        field(7; "Bonding Period"; Code[10])
        {
            DateFormula = true;
        }
    }

    keys
    {
        key(Key1; "Course Code")
        {
            Clustered = true;
        }
        key(Key2; Group)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description)
        {
        }
    }
}
