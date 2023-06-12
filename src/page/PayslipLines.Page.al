page 50006 "Payslip Lines."
{
    PageType = ListPart;
    SourceTable = "Payroll-Payslip Lines.";

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
                field(Units; Rec.Units)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Loan ID"; Rec."Loan ID")
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
                field("Payslip Print Column"; Rec."Payslip Print Column")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Payslip appearance"; Rec."Payslip appearance")
                {
                    ApplicationArea = All;
                }
                field("Payslip Column"; Rec."Payslip Column")
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
                field("Overline Column"; Rec."Overline Column")
                {
                    ApplicationArea = All;
                }
                field("Underline Amount"; Rec."Underline Amount")
                {
                    ApplicationArea = All;
                }
                field("Postg Group"; Rec."Postg Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

