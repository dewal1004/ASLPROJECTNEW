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
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                field("Max. Extract Amount"; "Max. Extract Amount")
                {
                    ApplicationArea = All;
                }
                field("Min. Extract Amount"; "Min. Extract Amount")
                {
                    ApplicationArea = All;
                }
                field("Input Factor"; "Input Factor")
                {
                    ApplicationArea = All;
                }
                field("Output Factor"; "Output Factor")
                {
                    ApplicationArea = All;
                }
                field("Rounding Precision"; "Rounding Precision")
                {
                    ApplicationArea = All;
                }
                field("Rounding Direction"; "Rounding Direction")
                {
                    ApplicationArea = All;
                }
            }
            part("Table Lookup Lines."; "Table Lookup Lines.")
            {
                SubPageLink = TableId = FIELD(TableId);
                SubPageView = SORTING(TableId, "Lower Amount", "Lower Code");
                UpdatePropagation = Both;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}

