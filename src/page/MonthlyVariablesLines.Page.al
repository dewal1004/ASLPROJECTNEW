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
                    TableRelation = "Payroll-E/D Codes."."E/D Code" WHERE("Monthly Variable" = CONST(true));
                    ApplicationArea = All;
                }
                field("Payslip Text"; "Payslip Text")
                {
                    ApplicationArea = All;
                }
                field("Variable Unit"; "Variable Unit")
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
            }
        }
    }

    actions
    {
    }
}

