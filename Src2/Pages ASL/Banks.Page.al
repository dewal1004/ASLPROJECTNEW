page 50021 "Banks."
{
    PageType = Card;
    SourceTable = "Payroll-Banks.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("Main Bank Code"; "Main Bank Code")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
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

