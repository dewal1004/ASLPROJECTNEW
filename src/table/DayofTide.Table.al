table 50036 "Day of Tide"
{
    Caption = 'Day of Tide';
    fields
    {
        field(1; Date; Date)
        {
            NotBlank = true;
        }
        field(2; "Day of tide"; Code[15])
        {
            NotBlank = true;
        }
    }

    keys
    {
        key(Key1; Date)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Date)
        {
        }
    }
}
