table 50040 "IOU"
{

    fields
    {
        field(1; Date; Date)
        {
        }
        field(2; "No."; Code[10])
        {
        }
        field(3; "Employee No."; Code[10])
        {
            TableRelation = Employee;
        }
        field(4; Amount; Decimal)
        {
        }
        field(5; "Due Date"; Date)
        {
        }
        field(16; "Global Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,1,1';
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(17; Redeemed; Boolean)
        {
            InitValue = false;
        }
        field(18; "Redeemded by Voucher No."; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; Date, "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        if ((UserId <> 'VJM') and (UserId <> 'AAA')) then Error('You may not delete the entered Line(s)');
    end;

    var
        Employee: Record Employee;

    //[Scope('OnPrem')]
    procedure EmployeeName(): Text[30]
    begin
        if Employee.Get("Employee No.") then
            exit(Employee.FullName);
    end;
}

