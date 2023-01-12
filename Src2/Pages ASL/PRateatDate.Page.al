page 50056 "P & Rate at Date"
{
    PageType = Card;
    SourceTable = "P & L Rates";
    UsageCategory = Lists;
    ApplicationArea = Basic, Suite;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Starting Date"; "Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Fixed Salary Rate"; "Fixed Salary Rate")
                {
                    ApplicationArea = All;
                }
                field("Travelling Expenses Rate"; "Travelling Expenses Rate")
                {
                    ApplicationArea = All;
                }
                field("License Fee Rate"; "License Fee Rate")
                {
                    ApplicationArea = All;
                }
                field(Clearing_Fwrd_NPA; Clearing_Fwrd_NPA)
                {
                    ApplicationArea = All;
                }
                field("Shore Overheads"; "Shore Overheads")
                {
                    ApplicationArea = All;
                }
                field("Other Direct Cost"; "Other Direct Cost")
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

