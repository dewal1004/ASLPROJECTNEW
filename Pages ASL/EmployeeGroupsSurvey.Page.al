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
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field("Gross Pay"; "Gross Pay")
                {
                }
                field("Tax Charged"; "Tax Charged")
                {
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                }
                field("Total Deductions"; "Total Deductions")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
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
                    RunPageLink = Code = FIELD (Code);
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }
}

