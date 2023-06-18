table 50046 "Revenue Table VJ"
{
    Caption = 'Revenue Table VJ';
    fields
    {
        field(1; "Job No."; Code[30])
        {
        }
        field(2; Vessel; Text[50])
        {
        }
        field(3; "Export Revenue"; Decimal)
        {
        }
        field(4; "Local Revenue"; Decimal)
        {
        }
        field(5; "Budget Export"; Decimal)
        {
        }
        field(6; "Budget Local"; Decimal)
        {
        }
        field(7; ETD; Date)
        {
        }
        field(8; ETA; Date)
        {
        }
        field(9; "Sea Days"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "Job No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}
