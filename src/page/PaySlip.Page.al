page 59999 "PaySlip"
{
    PageType = List;
    SourceTable = "Payroll-Payslip Lines.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payroll Period"; Rec."Payroll Period")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field("E/D Code"; Rec."E/D Code")
                {
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
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Flag; Rec.Flag)
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Debit Account"; Rec."Debit Account")
                {
                    ApplicationArea = All;
                }
                field("Credit Account"; Rec."Credit Account")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field(AmountToBook; Rec.AmountToBook)
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
                field("Payslip appearance"; Rec."Payslip appearance")
                {
                    ApplicationArea = All;
                }
                field("Debit Acc. Type"; Rec."Debit Acc. Type")
                {
                    ApplicationArea = All;
                }
                field("Credit Acc. Type"; Rec."Credit Acc. Type")
                {
                    ApplicationArea = All;
                }
                field(ChangeOthers; Rec.ChangeOthers)
                {
                    ApplicationArea = All;
                }
                field(HasBeenChanged; Rec.HasBeenChanged)
                {
                    ApplicationArea = All;
                }
                field(ChangeCounter; Rec.ChangeCounter)
                {
                    ApplicationArea = All;
                }
                field("Payslip Column"; Rec."Payslip Column")
                {
                    ApplicationArea = All;
                }
                field("S. Report appearance"; Rec."S. Report appearance")
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
                field("Loan ID"; Rec."Loan ID")
                {
                    ApplicationArea = All;
                }
                field("Payslip Print Column"; Rec."Payslip Print Column")
                {
                    ApplicationArea = All;
                }
                field("Payslip Text"; Rec."Payslip Text")
                {
                    ApplicationArea = All;
                }
                field("Variable Unit"; Rec."Variable Unit")
                {
                    ApplicationArea = All;
                }
                field("Monthly Variable"; Rec."Monthly Variable")
                {
                    ApplicationArea = All;
                }
                field("Postg Group"; Rec."Postg Group")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

