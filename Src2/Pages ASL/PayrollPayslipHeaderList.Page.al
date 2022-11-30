page 50068 "Payroll-Payslip Header List"
{
    PageType = List;
    SourceTable = "Payroll-Payslip Header.";
    UsageCategory = Lists;
    ApplicationArea= all;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("Period Start"; "Period Start")
                {
                }
                field("Period End"; "Period End")
                {
                }
                field("Period Name"; "Period Name")
                {
                }
                field(Company; Company)
                {
                }
                field(Section; Section)
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Closed?"; "Closed?")
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
                field("Total Relief"; "Total Relief")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Customer Number"; "Customer Number")
                {
                }
                field(Designation; Designation)
                {
                }
                field(EDFILTER; EDFILTER)
                {
                }
                field(Edvalue; Edvalue)
                {
                }
                field("Debit Amount"; "Debit Amount")
                {
                }
                field("Credit Amount"; "Credit Amount")
                {
                }
            }
        }
    }

    actions
    {
    }
}

