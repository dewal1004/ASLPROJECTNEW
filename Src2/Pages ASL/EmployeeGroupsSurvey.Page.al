page 50017 "Employee Groups Survey."
{
    Editable = false;
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field(Grade; Grade)
                {
                    ApplicationArea = All;
                }
                field(Step; Step)
                {
                    ApplicationArea = All;
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field("Gross Pay"; "Gross Pay")
                {
                    ApplicationArea = All;
                }
                field("Tax Charged"; "Tax Charged")
                {
                    ApplicationArea = All;
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                    ApplicationArea = All;
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                    ApplicationArea = All;
                }
                field("Total Deductions"; "Total Deductions")
                {
                    ApplicationArea = All;
                }
                field("Net Pay Due"; "Net Pay Due")
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

