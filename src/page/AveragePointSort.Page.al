page 50195 "Average Point Sort"
{
    PageType = Card;
    SourceTable = Job;
    Caption = 'Average Point Sort';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Vessel; Rec.Vessel)
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                }
                field(AvgPtSortBay; Rec.AvgPtSortBay)
                {
                    ApplicationArea = All;
                }
                field("Points Sort Bay"; Rec."Points Sort Bay")
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
