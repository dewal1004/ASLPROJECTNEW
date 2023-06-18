page 50051 "Monthly Variables Lines."
{
    PageType = ListPart;
    SourceTable = "Monthly Variables Lines.";
    Caption = 'Monthly Variables Lines.';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("E/D Code"; Rec."E/D Code")
                {
                    TableRelation = "Payroll-E/D Codes."."E/D Code" WHERE("Monthly Variable" = CONST(true));
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
            }
        }
    }

    actions
    {
    }
}
