page 50022 "Payslip Header Survey."
{
    CardPageID = "Payslip Header Card.";
    PageType = List;
    SourceTable = "Payroll-Payslip Header.";
    SourceTableView = sorting("Payroll Period") order(descending);
    UsageCategory = Lists;
    ApplicationArea = All;
    AdditionalSearchTerms = 'Payslip';

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Payroll Period"; Rec."Payroll Period")
                {
                    ApplicationArea = All;

                }
                field("Period Name"; Rec."Period Name")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Net Pay Due"; Rec."Net Pay Due")
                {
                    ApplicationArea = All;
                }
                field("Gross Pay"; Rec."Gross Pay")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Closed?"; Rec."Closed?")
                {
                    ApplicationArea = All;
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; Rec."Credit Amount")
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

