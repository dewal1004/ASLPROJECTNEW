page 50013 "Posting Group Header."
{
    PageType = Card;
    SourceTable = "Payroll-Posting Group Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Description; Description)
                {
                }
                field(Management; Management)
                {
                }
            }
            part(Control1000000000; "Posting Group Lines.")
            {
                SubPageLink = "Posting Group" = FIELD ("Posting Group Code");
            }
        }
    }

    actions
    {
    }
}

