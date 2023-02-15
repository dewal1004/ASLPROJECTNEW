page 50003 "ED Codes."
{
    PageType = List;
    SourceTable = "Payroll-E/D Codes.";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("E/D Code"; "E/D Code")
                {
                    ApplicationArea = All;
                }
                field("Payslip Text"; "Payslip Text")
                {
                    ApplicationArea = All;
                }
                field(Prorate; Prorate)
                {
                    ApplicationArea = All;
                }
                field("Monthly Variable"; "Monthly Variable")
                {
                    ApplicationArea = All;
                }
                field("Taxable Ref"; "Taxable Ref")
                {
                    ApplicationArea = All;
                }
                field("Variable Unit"; "Variable Unit")
                {
                    ApplicationArea = All;
                }
                field("OverTime(Y/N)"; "OverTime(Y/N)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Part of Absent Deduction"; "Part of Absent Deduction")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Absent Deduction"; "Absent Deduction")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Loan (Y/N)"; "Loan (Y/N)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Units; Units)
                {
                    ApplicationArea = All;
                }
                field(Rate; Rate)
                {
                    ApplicationArea = All;
                }
                field(Compute; Compute)
                {
                    LookupPageID = "Payroll ED Survey.";
                    ApplicationArea = All;
                }
                field("Add/Subtract"; "Add/Subtract")
                {
                    ApplicationArea = All;
                }
                field("Factor Of"; "Factor Of")
                {
                    LookupPageID = "Payroll ED Survey.";
                    ApplicationArea = All;
                }
                field(Percentage; Percentage)
                {
                    ApplicationArea = All;
                }
                field("Table Look Up"; "Table Look Up")
                {
                    ApplicationArea = All;
                }
                field("Max. Amount"; "Max. Amount")
                {
                    ApplicationArea = All;
                }
                field("Min. Amount"; "Min. Amount")
                {
                    ApplicationArea = All;
                }
                field("Rounding Direction"; "Rounding Direction")
                {
                    ApplicationArea = All;
                }
                field("Rounding Precision"; "Rounding Precision")
                {
                    ApplicationArea = All;
                }
                field("Edit Amount?"; "Edit Amount?")
                {
                    ApplicationArea = All;
                }
                field("Edit Grp. Amount?"; "Edit Grp. Amount?")
                {
                    ApplicationArea = All;
                }
                field("Yes/No Req.?"; "Yes/No Req.?")
                {
                    ApplicationArea = All;
                }
                field("Reset Next Period?"; "Reset Next Period?")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field("Payslip appearance"; "Payslip appearance")
                {
                    ApplicationArea = All;
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                    ApplicationArea = All;
                }
                field("Pos. In Payslip Grp."; "Pos. In Payslip Grp.")
                {
                    ApplicationArea = All;
                }
                field("Payslip Column"; "Payslip Column")
                {
                    ApplicationArea = All;
                }
                field("Overline Column"; "Overline Column")
                {
                    ApplicationArea = All;
                }
                field("Underline Amount"; "Underline Amount")
                {
                    ApplicationArea = All;
                }
                field("Payslip Print Column"; "Payslip Print Column")
                {
                    ApplicationArea = All;
                }
                field("ED Type"; "ED Type")
                {
                    ApplicationArea = All;
                }
                field("Control Type"; "Control Type")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Functions")
            {
                Caption = '&Functions';
                action("Amend Payslip Details")
                {
                    Caption = 'Amend Payslip Details';
                    Ellipsis = true;
                    RunObject = Report "MR Reconciliation Report";
                    ApplicationArea = All;
                }
            }
        }
    }
}

