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
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Management; Rec.Management)
                {
                    ApplicationArea = All;
                }
                field(StaffCount; Rec.StaffCount)
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
            action("&Detail lines")
            {
                Caption = '&Detail lines';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Posting Group Lines.";
                RunPageLink = "Posting Group" = FIELD("Posting Group Code");
                ApplicationArea = All;
            }
        }
    }
}

