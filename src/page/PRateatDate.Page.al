page 50056 "P & Rate at Date"
{
    PageType = Card;
    SourceTable = "P & L Rates";
    UsageCategory = Lists;
    ApplicationArea = Basic, Suite;
    Caption = 'P & Rate at Date';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Fixed Salary Rate"; Rec."Fixed Salary Rate")
                {
                    ApplicationArea = All;
                }
                field("Travelling Expenses Rate"; Rec."Travelling Expenses Rate")
                {
                    ApplicationArea = All;
                }
                field("License Fee Rate"; Rec."License Fee Rate")
                {
                    ApplicationArea = All;
                }
                field(Clearing_Fwrd_NPA; Rec.Clearing_Fwrd_NPA)
                {
                    ApplicationArea = All;
                }
                field("Shore Overheads"; Rec."Shore Overheads")
                {
                    ApplicationArea = All;
                }
                field("Other Direct Cost"; Rec."Other Direct Cost")
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
