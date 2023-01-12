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
                field("E/D Code"; "E/D Code")
                {
                    ApplicationArea = All;
                }
                field("Payslip Text"; "Payslip Text")
                {
                    ApplicationArea = All;
                }
                field(Units; Units)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field(Rate; Rate)
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Loan ID"; "Loan ID")
                {
                    ApplicationArea = All;
                }
                field("Debit Account"; "Debit Account")
                {
                    ApplicationArea = All;
                }
                field("Credit Account"; "Credit Account")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Payslip Print Column"; "Payslip Print Column")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Payslip appearance"; "Payslip appearance")
                {
                    ApplicationArea = All;
                }
                field("Payslip Column"; "Payslip Column")
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
                field("Overline Column"; "Overline Column")
                {
                    ApplicationArea = All;
                }
                field("Underline Amount"; "Underline Amount")
                {
                    ApplicationArea = All;
                }
                field("Postg Group"; "Postg Group")
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

