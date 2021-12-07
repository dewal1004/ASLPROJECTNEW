page 50010 "Table Lookup Header."
{
    PageType = Card;
    SourceTable = "Payroll-Lookup Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                field(TableId; TableId)
                {
                }
                field(Description; Description)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Type; Type)
                {
                }
            }
            group(Details)
            {
                field("Max. Extract Amount"; "Max. Extract Amount")
                {
                }
                field("Min. Extract Amount"; "Min. Extract Amount")
                {
                }
                field("Input Factor"; "Input Factor")
                {
                }
                field("Output Factor"; "Output Factor")
                {
                }
                field("Rounding Precision"; "Rounding Precision")
                {
                }
                field("Rounding Direction"; "Rounding Direction")
                {
                }
            }
            part("Table Lookup Lines."; "Table Lookup Lines.")
            {
                SubPageLink = TableId = FIELD (TableId);
                SubPageView = SORTING (TableId, "Lower Amount", "Lower Code");
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
    }
}

