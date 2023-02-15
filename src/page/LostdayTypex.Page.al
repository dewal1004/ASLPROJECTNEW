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
                    ApplicationArea = All;
                }
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field(SeaPort; SeaPort)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;
                //*** RunObject = Page Page82;
            }
        }
    }
}

