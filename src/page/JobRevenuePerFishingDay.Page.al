page 89345 "Job Revenue Per Fishing Day"
{
    PageType = Card;
    SourceTable = Job;
    SourceTableView = WHERE("Ending Date" = FILTER(20030101D .. 20030131D));

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
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                }
                field(Vessel; Rec.Vessel)
                {
                    ApplicationArea = All;
                }
                field("Revenue per Sea Day"; Rec."Revenue per Sea Day")
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

