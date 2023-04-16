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
                    ApplicationArea = All;
                }
                field("Payslip Text"; "Payslip Text")
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
                field(Compute; Compute)
                {
                    ApplicationArea = All;
                }
                field("Add/Subtract"; "Add/Subtract")
                {
                    ApplicationArea = All;
                }
                field("Factor Of"; "Factor Of")
                {
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
                field("Max. Amount"; "Max. Amount")
                {
                    MaxValue = 99990;
                    MinValue = 0;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Min. Amount"; "Min. Amount")
                {
                    ApplicationArea = All;
                }
                field(Rate; Rate)
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

