page 50004 "Payroll ED Survey."
{
    Editable = false;
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
                field(Compute; Compute)
                {
                }
                field("Add/Subtract"; "Add/Subtract")
                {
                }
                field("Factor Of"; "Factor Of")
                {
                }
                field(Percentage; Percentage)
                {
                }
                field("Table Look Up"; "Table Look Up")
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
                field("Max. Amount"; "Max. Amount")
                {
                    MaxValue = 99990;
                    MinValue = 0;
                    NotBlank = true;
                }
                field("Min. Amount";"Min. Amount")
                {
                }
                field(Rate;Rate)
                {
                }
            }
        }
    }

    actions
    {
    }
}

