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
            action("&Edit Lost Day")
            {
                Caption = '&Edit Lost Day';
                Ellipsis = true;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Lost day Typex";
                ApplicationArea = All;
            }
        }
    }
}

