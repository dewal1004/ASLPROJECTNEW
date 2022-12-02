page 50012 "Table Lookup Survey."
{
    Editable = false;
    PageType = Card;
    SourceTable = "Payroll-Lookup Header.";
    UsageCategory = Documents;
    ApplicationArea = All,Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(TableId; TableId)
                {
                }
                field(Type; Type)
                {
                }
                field(Description; Description)
                {
                }
                field("Max. Extract Amount"; "Max. Extract Amount")
                {
                }
                field("Min. Extract Amount"; "Min. Extract Amount")
                {
                }
            }
        }
    }

    actions
    {
    }
}

