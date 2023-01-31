page 50166 "Human res-Reports"
{
    UsageCategory = Administration;
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
                    ApplicationArea = All;
                }
                action("Employee-Staff Absences")
                {
                    Caption = 'Staff Absences';
                    Image = "Report";
                    RunObject = Report "Employee - Staff Absences";
                    ApplicationArea = All;
                }
                action("Employee-Absences by Causes")
                {
                    Caption = 'Absences by Causes';
                    Image = "Report";
                    RunObject = Report "Employee - Absences by Causes";
                    ApplicationArea = All;
                }
                action("Man power budget report")
                {
                    Image = "Report";
                    RunObject = Report "Mp Budget report";
                    ApplicationArea = All;
                }
                action("Staff position count")
                {
                    Image = "report";
                    RunObject = Report "Staff Position as at";
                    ApplicationArea = All;
                }
                action("Staff position -Group Wise")
                {
                    Image = "Report";
                    RunObject = Report "Staff Position as at by PG";
                    ApplicationArea = All;
                }
                action("Employee-List")
                {
                    Image = "Report";
                    RunObject = Report "Employee - List";
                    ApplicationArea = All;
                }
                action("Employee-Bank Acc No.s")
                {
                    Caption = 'Employee-Bank Acc Nos';
                    Image = "Report";
                    RunObject = Report "Employee-Bank Acct";
                    ApplicationArea = All;
                }
            }
        }
    }
}

