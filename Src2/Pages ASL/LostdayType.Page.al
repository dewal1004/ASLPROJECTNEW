page 50081 "Lost day Type"
{
    PageType = Card;
    SourceTable = "Lost Days";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                Editable = false;
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
            action("&Edit Lost Day")
            {
                Caption = '&Edit Lost Day';
                Ellipsis = true;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Lost day Typex";
            }
        }
    }
}

