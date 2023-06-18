page 50002 "PAYROLL- EMPLOYEE GROUP LIST."
{
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";
    Caption = 'PAYROLL- EMPLOYEE GROUP LIST.';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field("Gross Pay"; Rec."Gross Pay")
                {
                    ApplicationArea = All;
                }
                field("Tax Charged"; Rec."Tax Charged")
                {
                    ApplicationArea = All;
                }
                field("Tax Deducted"; Rec."Tax Deducted")
                {
                    ApplicationArea = All;
                }
                field("Taxable Pay"; Rec."Taxable Pay")
                {
                    ApplicationArea = All;
                }
                field("Total Deductions"; Rec."Total Deductions")
                {
                    ApplicationArea = All;
                }
                field("Net Pay Due"; Rec."Net Pay Due")
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
