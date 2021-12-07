page 50101 PayrollEmployeeGroup
{
    PageType = List;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Code)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Gross Pay"; "Gross Pay")
                {
                }
                field("Tax Charged"; "Tax Charged")
                {
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                }
                field("Total Deductions"; "Total Deductions")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field(Management; Management)
                {
                }
            }
        }
    }

    actions
    {
    }
}

