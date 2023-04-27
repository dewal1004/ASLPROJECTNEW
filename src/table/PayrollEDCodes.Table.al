table 50001 "Payroll-E/D Codes."
{
    LookupPageID = "ED Codes.";

    fields
    {
        field(1; "E/D Code"; Code[20])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                "Search Name" := "E/D Code";
            end;
        }
        field(2; "Search Name"; Code[20])
        {
        }
        field(3; "Payslip Text"; Text[35])
        {
        }
        field(4; "Payslip appearance"; Option)
        {
            OptionMembers = "Non-zero & Code","Always & Code","Always & Text","Non-zero & Text","Does not appear",Heading,"Always & Text & Special";
        }
        field(6; Units; Text[10])
        {
        }
        field(7; Compute; Code[20])
        {
            TableRelation = "Payroll-E/D Codes.";

            trigger OnValidate()
            begin
                if Compute <> '' then
                    if Compute = "E/D Code" then
                        Error('An E/D cannot compute itself')
                    else
                        "E/DFileRec".Get(Compute);
            end;
        }
        field(8; "Factor Of"; Code[20])
        {
            TableRelation = "Payroll-E/D Codes.";

            trigger OnValidate()
            begin
                if "Factor Of" <> '' then
                    if "Factor Of" = "E/D Code" then
                        Error('An E/D cannot be a factor of itself')
                    else
                        "E/DFileRec".Get("Factor Of");
            end;
        }
        field(9; Percentage; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(10; "Add/Subtract"; Option)
        {
            OptionMembers = " ",Add,Subtract;
        }
        field(11; "Table Look Up"; Code[20])
        {
            TableRelation = "Payroll-Lookup Header.";

            trigger OnValidate()
            begin
                if "Table Look Up" <> '' then
                    LookupRec.Get("Table Look Up");
            end;
        }
        field(12; "Edit Amount?"; Boolean)
        {
        }
        field(13; "Yes/No Req.?"; Boolean)
        {
        }
        field(14; "Max. Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(15; "Min. Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(16; Rate; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(17; "Payslip Group ID"; Option)
        {
            OptionMembers = " ","GROSS PAY","TAXABLE PAY","TAX CHARGED","TAX DEDUCTED","TOTAL DEDUCTIONS","NET PAY DUE";
        }
        field(18; "Pos. In Payslip Grp."; Integer)
        {
            MaxValue = 99;
            MinValue = 0;
        }
        field(19; "Reset Next Period?"; Boolean)
        {
            InitValue = false;
        }
        field(20; "Rounding Direction"; Option)
        {
            OptionMembers = Nearest,Higher,Lower;
        }
        field(21; "Rounding Precision"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(22; "Payslip Column"; Option)
        {
            InitValue = "1";
            OptionMembers = "1","2","3";
        }
        field(23; Changed; Boolean)
        {
            InitValue = false;
        }
        field(24; "S. Report appearance"; Option)
        {
            InitValue = "Does not appear";
            OptionMembers = "Non-zero & Code","Always & Code","Always & Text","Non-zero & Text","Does not appear",Heading;
        }
        field(25; "Edit Grp. Amount?"; Boolean)
        {
            InitValue = false;
        }
        field(26; "Overline Column"; Option)
        {
            InitValue = "None";
            OptionMembers = "None","1","2","3","1-2","2-3","1-3";
        }
        field(27; "Underline Amount"; Option)
        {
            InitValue = "None";
            OptionMembers = "None",Underline,"Double Underline";
        }
        field(28; Description; Text[30])
        {
        }
        field(29; "Loan (Y/N)"; Boolean)
        {
        }
        field(30; "OverTime(Y/N)"; Boolean)
        {
        }
        field(31; "Absent Deduction"; Boolean)
        {
        }
        field(32; "Part of Absent Deduction"; Boolean)
        {
        }
        field(34; "Payslip Print Column"; Option)
        {
            OptionMembers = " ",Postive,Negative,"Total Earning","Total Deduction","Net Earning";
        }
        field(35; "ED Type"; Option)
        {
            Description = 'Added by Adams for NSITF Report';
            OptionMembers = " ","NSITF Employee","NSITF Employer","Gross Salary","Pension Employee","Pension Employer";
        }
        field(36; "Control Type"; Option)
        {
            OptionMembers = " ",Basic,Absence;
        }
        field(37; Apportionable; Boolean)
        {
            Description = 'Added for 7up';
        }
        field(38; "Monthly Variable"; Boolean)
        {
            Description = 'Added for Monthly Variables';
        }
        field(39; "Taxable Ref"; Boolean)
        {
            Description = 'Added to insert Taxable lines';
        }
        field(41; Prorate; Boolean)
        {
            Description = 'Added for Prorating';
        }
        field(42; "Variable Unit"; Option)
        {
            OptionMembers = " ",Hours,Days;

            trigger OnValidate()
            begin
                if not "Monthly Variable" then "Variable Unit" := 0;
            end;
        }
    }

    keys
    {
        key(Key1; "E/D Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "ED Type")
        {
        }
        key(Key4; "Monthly Variable")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "E/D Code", "Payslip Text")
        {
        }
    }

    var
        "E/DFileRec": Record "Payroll-E/D Codes.";
        LookupRec: Record "Payroll-Lookup Header.";
}

