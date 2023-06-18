page 50017 "Employee Groups Survey."
{
    Editable = false;
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";
    Caption = 'Employee Groups Survey.';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                }
                field(Step; Rec.Step)
                {
                    ApplicationArea = All;
                }
                field("Posting Group Code"; Rec."Posting Group Code")
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
        area(navigation)
        {
            group("Employee &Group")
            {
                Caption = 'Employee &Group';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Employee Group Header.";
                    RunPageLink = Code = FIELD(Code);
                    ShortCutKey = 'Shift+F7';
                    ApplicationArea = All;
                }
            }
        }
    }
}
