page 50012 "Table Lookup Survey."
{
    Editable = false;
    PageType = Card;
    SourceTable = "Payroll-Lookup Header.";
    UsageCategory = Documents;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(TableId; TableId)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Max. Extract Amount"; "Max. Extract Amount")
                {
                    ApplicationArea = All;
                }
                field("Min. Extract Amount"; "Min. Extract Amount")
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

