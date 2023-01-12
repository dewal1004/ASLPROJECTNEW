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
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; "Ending Date")
                {
                    ApplicationArea = All;
                }
                field(Vessel; Vessel)
                {
                    ApplicationArea = All;
                }
                field("Revenue per Sea Day"; "Revenue per Sea Day")
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

