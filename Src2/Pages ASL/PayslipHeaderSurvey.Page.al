page 50022 "Payslip Header Survey."
{
    CardPageID = "Payslip Header Card.";
    PageType = List;
    SourceTable = "Payroll-Payslip Header.";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("Period Name"; "Period Name")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
                field("Gross Pay"; "Gross Pay")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Visible = false;
                }
                field("Closed?"; "Closed?")
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
        area(reporting)
        {
            group(Action5)
            {
                action(Payslip)
                {
                    Image = "Report";
                    RunObject = Report "Monthly Payslip";
                }
                action("Monthly PayRoll")
                {
                    Image = "Report";
                    RunObject = Report "ASL Create New payslips - New";
                }
            }
        }
    }
}

