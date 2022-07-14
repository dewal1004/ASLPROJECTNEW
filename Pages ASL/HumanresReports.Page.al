page 50166 "Human res-Reports"
{
    UsageCategory= Administration;
    ApplicationArea = all;
    
    layout
    {
    }

    actions
    {
        area(reporting)
        {
            group(Action107)
            {
                Image = "report";
                action("Payrol Report-NSITF")
                {
                    Caption = 'Payrol Report-NSITF';
                    Image = "Report";
                    RunObject = Report "Payroll Report - NSITF";
                }
                action("Employee-Staff Absences")
                {
                    Caption = 'Staff Absences';
                    Image = "Report";
                    RunObject = Report "Employee - Staff Absences";
                }
                action("Employee-Absences by Causes")
                {
                    Caption = 'Absences by Causes';
                    Image = "Report";
                    RunObject = Report "Employee - Absences by Causes";
                }
                action("Man power budget report")
                {
                    Image = "Report";
                    RunObject = Report "Mp Budget report";
                }
                action("Staff position count")
                {
                    Image = "report";
                    RunObject = Report "Staff Position as at";
                }
                action("Staff position -Group Wise")
                {
                    Image = "Report";
                    RunObject = Report "Staff Position as at by PG";
                }
                action("Employee-List")
                {
                    Image = "Report";
                    RunObject = Report "Employee - List";
                }
                action("Employee-Bank Acc No.s")
                {
                    Caption = 'Employee-Bank Acc Nos';
                    Image = "Report";
                    RunObject = Report "Employee-Bank Acct";
                }
            }
        }
    }
}

