page 50013 "Posting Group Header."
{
    PageType = Card;
    SourceTable = "Payroll-Posting Group Header.";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Posting Group Code"; "Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Management; Management)
                {
                    ApplicationArea = All;
                }
            }
            part(Control1000000000; "Posting Group Lines.")
            {
                SubPageLink = "Posting Group" = FIELD("Posting Group Code");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}

