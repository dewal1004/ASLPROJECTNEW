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
                field("E/D Code"; Rec."E/D Code")
                {
                    ApplicationArea = All;
                }
                field("Payslip Text"; Rec."Payslip Text")
                {
                    ApplicationArea = All;
                }
                field(Prorate; Rec.Prorate)
                {
                    ApplicationArea = All;
                }
                field("Monthly Variable"; Rec."Monthly Variable")
                {
                    ApplicationArea = All;
                }
                field("Taxable Ref"; Rec."Taxable Ref")
                {
                    ApplicationArea = All;
                }
                field("Variable Unit"; Rec."Variable Unit")
                {
                    ApplicationArea = All;
                }
                field("OverTime(Y/N)"; Rec."OverTime(Y/N)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Part of Absent Deduction"; Rec."Part of Absent Deduction")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Absent Deduction"; Rec."Absent Deduction")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Loan (Y/N)"; Rec."Loan (Y/N)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Units; Rec.Units)
                {
                    ApplicationArea = All;
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;
                }
                field(Compute; Rec.Compute)
                {
                    LookupPageID = "Payroll ED Survey.";
                    ApplicationArea = All;
                }
                field("Add/Subtract"; Rec."Add/Subtract")
                {
                    ApplicationArea = All;
                }
                field("Factor Of"; Rec."Factor Of")
                {
                    LookupPageID = "Payroll ED Survey.";
                    ApplicationArea = All;
                }
                field(Percentage; Rec.Percentage)
                {
                    ApplicationArea = All;
                }
                field("Table Look Up"; Rec."Table Look Up")
                {
                    ApplicationArea = All;
                }
                field("Max. Amount"; Rec."Max. Amount")
                {
                    ApplicationArea = All;
                }
                field("Min. Amount"; Rec."Min. Amount")
                {
                    ApplicationArea = All;
                }
                field("Rounding Direction"; Rec."Rounding Direction")
                {
                    ApplicationArea = All;
                }
                field("Rounding Precision"; Rec."Rounding Precision")
                {
                    ApplicationArea = All;
                }
                field("Edit Amount?"; Rec."Edit Amount?")
                {
                    ApplicationArea = All;
                }
                field("Edit Grp. Amount?"; Rec."Edit Grp. Amount?")
                {
                    ApplicationArea = All;
                }
                field("Yes/No Req.?"; Rec."Yes/No Req.?")
                {
                    ApplicationArea = All;
                }
                field("Reset Next Period?"; Rec."Reset Next Period?")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field("Payslip appearance"; Rec."Payslip appearance")
                {
                    ApplicationArea = All;
                }
                field("Payslip Group ID"; Rec."Payslip Group ID")
                {
                    ApplicationArea = All;
                }
                field("Pos. In Payslip Grp."; Rec."Pos. In Payslip Grp.")
                {
                    ApplicationArea = All;
                }
                field("Payslip Column"; Rec."Payslip Column")
                {
                    ApplicationArea = All;
                }
                field("Overline Column"; Rec."Overline Column")
                {
                    ApplicationArea = All;
                }
                field("Underline Amount"; Rec."Underline Amount")
                {
                    ApplicationArea = All;
                }
                field("Payslip Print Column"; Rec."Payslip Print Column")
                {
                    ApplicationArea = All;
                }
                field("ED Type"; Rec."ED Type")
                {
                    ApplicationArea = All;
                }
                field("Control Type"; Rec."Control Type")
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

