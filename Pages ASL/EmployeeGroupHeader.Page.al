page 50015 "Employee Group Header."
{
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Code)
                {
                    Lookup = false;
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
            }
            part(Control12; "Employee Group Lines.")
            {
                SubPageLink = "Employee Group" = FIELD (Code);
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Functions")
            {
                Caption = '&Functions';
                action("Copy Lines from another group")
                {
                    Caption = 'Copy Lines from another group';
                    Ellipsis = false;
                    RunObject = Report "PRoll; Create next Payroll";
                }
            }
        }
    }
}

