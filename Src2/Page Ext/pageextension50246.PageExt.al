pageextension 50246 "pageextension50246" extends "Apply Customer Entries"
{
    layout
    {
        addafter("Global Dimension 2 Code")
        {
            field("Loan ID"; "Loan ID")
            {
                ApplicationArea = All;
            }
        }
    }
}

