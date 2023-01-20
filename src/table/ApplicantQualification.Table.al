table 50019 "Applicant Qualification"
{
    DataCaptionFields = "Employee No.";
    DrillDownPageID = "Qualified Employees";
    LookupPageID = "Employee Qualifications";

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            NotBlank = true;
            TableRelation = Employee;
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; "Qualification Code"; Code[10])
        {
            TableRelation = Qualification;

            trigger OnValidate()
            begin
                Qualification.Get("Qualification Code");
                Description := Qualification.Description;
            end;
        }
        field(4; "From Date"; Date)
        {
        }
        field(5; "To Date"; Date)
        {
        }
        field(6; Type; Option)
        {
            OptionMembers = " ",Internal,External,"Previous Position";
        }
        field(7; Description; Text[30])
        {
        }
        field(8; "Institution/Company"; Text[30])
        {
        }
        field(9; Cost; Decimal)
        {
            AutoFormatType = 1;
        }
        field(10; "Course Grade"; Text[30])
        {
        }
        field(11; "Employee Status"; Enum "Employee Status")
        {
            Editable = false;
        }
        field(12; Comment; Boolean)
        {
            CalcFormula = Exist("Human Resource Comment Line" 
                          WHERE("Table Name" = CONST("Employee Qualification"),
                                "No." = FIELD("Employee No."),
                                "Table Line No." = FIELD("Line No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Expiration Date"; Date)
        {
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Qualification Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        if Comment then
            Error('You cannot delete employee qualification information if there are comments associated with it.');
    end;

    trigger OnInsert()
    begin
        Employee.Get("Employee No.");
        "Employee Status" := Employee.Status;
    end;

    var
        Qualification: Record Qualification;
        Employee: Record Employee;
}

