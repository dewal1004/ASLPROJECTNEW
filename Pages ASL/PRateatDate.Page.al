page 50056 "P & Rate at Date"
{
    PageType = Card;
    SourceTable = "P & L Rates";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Starting Date"; "Starting Date")
                {
                }
                field("Fixed Salary Rate"; "Fixed Salary Rate")
                {
                }
                field("Travelling Expenses Rate"; "Travelling Expenses Rate")
                {
                }
                field("License Fee Rate"; "License Fee Rate")
                {
                }
                field(Clearing_Fwrd_NPA; Clearing_Fwrd_NPA)
                {
                }
                field("Shore Overheads"; "Shore Overheads")
                {
                }
                field("Other Direct Cost"; "Other Direct Cost")
                {
                }
            }
        }
    }

    actions
    {
    }
}

