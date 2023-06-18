page 60018 "Leave Categories"
{
    PageType = Card;
    SourceTable = "Leave Categories NU*";
    Caption = 'Leave Categories';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Category Type"; Rec."Category Type")
                {
                    ApplicationArea = All;
                }
                field(Consuming; Rec.Consuming)
                {
                    ApplicationArea = All;
                }
                field("Payment Allowed"; Rec."Payment Allowed")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LookupMode := true;
    end;
}
