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
                    ApplicationArea = All;
                }
                field("Period Name"; "Period Name")
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
                field("Net Pay Due"; "Net Pay Due")
                {
                    ApplicationArea = All;
                }
                field("Gross Pay"; "Gross Pay")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Closed?"; "Closed?")
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
        area(reporting)
        {
            group(Action5)
            {
                action(Payslip)
                {
                    Image = "Report";
                    RunObject = Report "Monthly Payslip";
                    ApplicationArea = All;
                }
                action("Monthly PayRoll")
                {
                    Image = "Report";
                    RunObject = Report "ASL Create New payslips - New";
                    ApplicationArea = All;
                }
            }
        }
    }
}

