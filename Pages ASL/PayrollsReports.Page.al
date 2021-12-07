page 50167 "Payrolls-Reports"
{

    layout
    {
    }

    actions
    {
        area(reporting)
        {
            group(Action152)
            {
                Image = "report";
                action("Create New Payslips ")
                {
                    Image = "Report";
                    RunObject = Report "ASL Create New payslips - New";
                }
                action("Monthly Payslip")
                {
                    Image = "Report";
                    RunObject = Report "Monthly Payslip";
                }
                action("Payroll Report")
                {
                    Image = "Report";
                    RunObject = Report "Payroll Report";
                }
                action("Outstanding Loans")
                {
                    Image = "Report";
                    RunObject = Report "OUTSTANDING LOANS";
                }
                action("Payroll Report - NSITF")
                {
                    Image = "report";
                    RunObject = Report "Payroll Report - NSITF";
                }
                action("PRoll; Create Journal Entries")
                {
                    Image = "report";
                    RunObject = Report "PRoll; Create Journal Entries";
                }
                action("Bank Account - Employee")
                {
                    Image = "report";
                    RunObject = Report "Employee-Bank Acct";
                }
            }
        }
    }
}

