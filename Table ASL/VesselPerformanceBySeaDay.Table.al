table 50042 "Vessel Performance By Sea Day"
{

    fields
    {
        field(10; "No."; Code[20])
        {
        }
        field(20; "Voyage Sea Days"; Option)
        {
            OptionMembers = " ","40","45","60";
        }
        field(30; "Revenue Per Sea Day"; Decimal)
        {
        }
        field(40; Vess; Code[10])
        {
        }
        field(41; "Cycle Day"; Decimal)
        {
        }
        field(42; "Fishing Days"; Decimal)
        {
        }
        field(43; "Lost Days"; Decimal)
        {
        }
        field(44; "Port Days"; Decimal)
        {
        }
        field(45; "Fish Perct"; Decimal)
        {
        }
        field(46; "Export Val (N)"; Decimal)
        {
        }
        field(47; "Local Val (N)"; Decimal)
        {
        }
        field(48; Revenue; Decimal)
        {
        }
        field(49; "Rev/SD"; Decimal)
        {
        }
        field(50; "Rev/FD"; Decimal)
        {
        }
        field(51; AGO; Decimal)
        {
        }
        field(52; "AGO Perct"; Decimal)
        {
        }
        field(53; Direct; Decimal)
        {
        }
        field(54; Margin; Decimal)
        {
        }
        field(55; "Gross Margin Perc"; Decimal)
        {
        }
        field(56; Indirect; Decimal)
        {
        }
        field(57; Profit; Decimal)
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Voyage Sea Days", "Revenue Per Sea Day")
        {
        }
    }

    fieldgroups
    {
    }
}

