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
                }
                field(Name; Name)
                {
                }
                field("Main Bank Code"; "Main Bank Code")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

