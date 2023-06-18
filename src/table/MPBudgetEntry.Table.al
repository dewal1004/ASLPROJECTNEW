table 50023 "MP Budget Entry"
{
    DrillDownPageID = "MP Budget Entries";
    LookupPageID = "MP Budget Entries";
    Caption = 'MP Budget Entry';
    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Budget Name"; Code[10])
        {
            TableRelation = "MP Budget Name";
        }
        field(3; "Employee Grp"; Code[30])
        {
            TableRelation = "Employment Contract"."Unique Cd No";
        }
        field(4; Date; Date)
        {
            ClosingDates = true;
        }
        field(5; "Global Dimension 1 Code"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(6; "Global Dimension 2 Code"; Code[10])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(7; "Employee Count"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            DecimalPlaces = 0 : 0;
        }
        field(9; Description; Text[50])
        {
        }
        field(10; "Region Code"; Code[10])
        {
            TableRelation = "Business Unit";
        }
        field(11; "User ID"; Code[20])
        {
            Editable = false;
            TableRelation = User;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Budget Name", "Employee Grp", Date)
        {
            SumIndexFields = "Employee Count";
        }
        key(Key3; "Budget Name", "Employee Grp", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", Date)
        {
            SumIndexFields = "Employee Count";
        }
        key(Key4; "Employee Grp", Date)
        {
            SumIndexFields = "Employee Count";
        }
        key(Key5; "Employee Grp", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", Date)
        {
            SumIndexFields = "Employee Count";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description)
        {
        }
    }

    trigger OnInsert()
    begin
        TestField(Date);
        TestField("Budget Name");
        "User ID" := UserId;
    end;
}
