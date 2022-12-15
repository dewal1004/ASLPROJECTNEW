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
                }
                field("Code"; Code)
                {
                }
                field("Search Name"; "Search Name")
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
    }
}

