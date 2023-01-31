page 50068 "Payroll-Payslip Header List"
{
    PageType = List;
    SourceTable = "Payroll-Payslip Header.";
    UsageCategory = Lists;
    ApplicationArea = all;
    CardPageId = "Payslip Header Card.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payroll Period"; "Payroll Period")
                {
                    ApplicationArea = All;
                }
                field("Period Start"; "Period Start")
                {
                    ApplicationArea = All;
                }
                field("Period End"; "Period End")
                {
                    ApplicationArea = All;
                }
                field("Period Name"; "Period Name")
                {
                    ApplicationArea = All;
                }
                field(Company; Company)
                {
                    ApplicationArea = All;
                }
                field(Section; Section)
                {
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Closed?"; "Closed?")
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
                field("Total Relief"; "Total Relief")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Customer Number"; "Customer Number")
                {
                    ApplicationArea = All;
                }
                field(Designation; Designation)
                {
                    ApplicationArea = All;
                }
                field(EDFILTER; EDFILTER)
                {
                    ApplicationArea = All;
                }
                field(Edvalue; Edvalue)
                {
                    ApplicationArea = All;
                }
                field("Debit Amount"; "Debit Amount")
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; "Credit Amount")
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

