page 50101 "PayrollEmployeeGroup"
{
    PageType = List;
    SourceTable = "Payroll-Employee Group Header.";
    Caption = 'Payroll-Employee Group Header';
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    CardPageId = "Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field("Gross Pay"; "Gross Pay")
                {
                    ApplicationArea = All;
                }
                field("Tax Charged"; "Tax Charged")
                {
                    ApplicationArea = All;
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                    ApplicationArea = All;
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                    ApplicationArea = All;
                }
                field("Total Deductions"; "Total Deductions")
                {
                    ApplicationArea = All;
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                    ApplicationArea = All;
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field(Grade; Grade)
                {
                    ApplicationArea = All;
                }
                field(Step; Step)
                {
                    ApplicationArea = All;
                }
                field(Management; Management)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

