page 50018 "Posting Groups Survey."
{
    Editable = false;
    PageType = Card;
    SourceTable = "Payroll-Posting Group Header.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
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
                field(StaffCount; StaffCount)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Detail lines")
            {
                Caption = '&Detail lines';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Posting Group Lines.";
                RunPageLink = "Posting Group" = FIELD ("Posting Group Code");
            }
        }
    }
}

