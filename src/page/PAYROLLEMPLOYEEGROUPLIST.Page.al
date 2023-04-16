page 50002 "PAYROLL- EMPLOYEE GROUP LIST."
{
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Posting Group Code"; "Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
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
    }
}

