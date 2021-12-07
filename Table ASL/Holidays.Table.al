table 50025 Holidays
{

    fields
    {
        field(1; "Serial No."; Integer)
        {
        }
        field(2; Date; Date)
        {
        }
        field(3; Month; Integer)
        {
            MaxValue = 12;
            MinValue = 0;
        }
        field(4; Day; Integer)
        {
            MaxValue = 31;
            MinValue = 0;
        }
        field(5; "Day Of Week"; Text[10])
        {
        }
        field(6; Description; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Serial No.")
        {
            Clustered = true;
        }
        key(Key2; Date)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        HCounter := HRec.Count + 1;
        "Serial No." := HCounter;
    end;

    var
        HRec: Record Holidays;
        HCounter: Integer;
}

