table 50043 "P & L Rates"
{

    fields
    {
        field(1; "Starting Date"; Date)
        {
        }
        field(50331; "Fixed Salary Rate"; Decimal)
        {
            Description = 'Non Incentive: Salaries in cycle days multiplied with a daily salary in Naira';
        }
        field(50332; "Travelling Expenses Rate"; Decimal)
        {
            Description = 'Expatriate: Fixed rate per date';
        }
        field(50333; "License Fee Rate"; Decimal)
        {
        }
        field(50334; Clearing_Fwrd_NPA; Decimal)
        {
        }
        field(50335; "Shore Overheads"; Decimal)
        {
        }
        field(50336; "Other Direct Cost"; Decimal)
        {
            Description = 'In exchange for Sal&Wages,Travellg Expenses,Clearing&FWRD & NPA';
        }
    }

    keys
    {
        key(Key1; "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

