page 50051 "Monthly Variables Lines."
{
    PageType = ListPart;
    SourceTable = "Monthly Variables Lines.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("E/D Code"; "E/D Code")
                {
                    TableRelation = "Payroll-E/D Codes."."E/D Code" WHERE ("Monthly Variable" = CONST (true));
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
                field("Variable Unit"; "Variable Unit")
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
            }
        }
    }

    actions
    {
    }
}

