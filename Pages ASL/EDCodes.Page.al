page 50003 "ED Codes."
{
    PageType = Card;
    SourceTable = "Payroll-E/D Codes.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("E/D Code"; "E/D Code")
                {
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
                field(Prorate; Prorate)
                {
                }
                field("Monthly Variable"; "Monthly Variable")
                {
                }
                field("Taxable Ref"; "Taxable Ref")
                {
                }
                field("Variable Unit"; "Variable Unit")
                {
                }
                field("OverTime(Y/N)"; "OverTime(Y/N)")
                {
                    Visible = false;
                }
                field("Part of Absent Deduction"; "Part of Absent Deduction")
                {
                    Visible = false;
                }
                field("Absent Deduction"; "Absent Deduction")
                {
                    Visible = false;
                }
                field("Loan (Y/N)"; "Loan (Y/N)")
                {
                    Visible = false;
                }
                field(Units; Units)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Compute; Compute)
                {
                    LookupPageID = "Payroll ED Survey.";
                }
                field("Add/Subtract"; "Add/Subtract")
                {
                }
                field("Factor Of"; "Factor Of")
                {
                    LookupPageID = "Payroll ED Survey.";
                }
                field(Percentage; Percentage)
                {
                }
                field("Table Look Up"; "Table Look Up")
                {
                }
                field("Max. Amount"; "Max. Amount")
                {
                }
                field("Min. Amount"; "Min. Amount")
                {
                }
                field("Rounding Direction"; "Rounding Direction")
                {
                }
                field("Rounding Precision"; "Rounding Precision")
                {
                }
                field("Edit Amount?"; "Edit Amount?")
                {
                }
                field("Edit Grp. Amount?"; "Edit Grp. Amount?")
                {
                }
                field("Yes/No Req.?"; "Yes/No Req.?")
                {
                }
                field("Reset Next Period?"; "Reset Next Period?")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Payslip appearance"; "Payslip appearance")
                {
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                }
                field("Pos. In Payslip Grp."; "Pos. In Payslip Grp.")
                {
                }
                field("Payslip Column"; "Payslip Column")
                {
                }
                field("Overline Column"; "Overline Column")
                {
                }
                field("Underline Amount"; "Underline Amount")
                {
                }
                field("Payslip Print Column"; "Payslip Print Column")
                {
                }
                field("ED Type"; "ED Type")
                {
                }
                field("Control Type"; "Control Type")
                {
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
                }
            }
        }
    }
}

