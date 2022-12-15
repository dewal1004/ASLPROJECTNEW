page 50076 "Lost day Typex"
{
    PageType = Card;
    SourceTable = "Lost Days";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    Visible = false;
                }
                field("Code"; Code)
                {
                }
                field(SeaPort; SeaPort)
                {
                }
                field(Description; Description)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Edit Fishing Ground")
            {
                Caption = '&Edit Fishing Ground';
                Ellipsis = true;
                Promoted = true;
                PromotedCategory = Process;
               //*** RunObject = Page Page82;
            }
        }
    }
}

