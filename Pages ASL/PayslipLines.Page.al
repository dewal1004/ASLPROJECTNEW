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
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
                field(Units; Units)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Loan ID"; "Loan ID")
                {
                }
                field("Debit Account"; "Debit Account")
                {
                }
                field("Credit Account"; "Credit Account")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Payslip Print Column"; "Payslip Print Column")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Payslip appearance"; "Payslip appearance")
                {
                }
                field("Payslip Column"; "Payslip Column")
                {
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                }
                field("Pos. In Payslip Grp."; "Pos. In Payslip Grp.")
                {
                }
                field("Overline Column"; "Overline Column")
                {
                }
                field("Underline Amount"; "Underline Amount")
                {
                }
                field("Postg Group"; "Postg Group")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }
}

