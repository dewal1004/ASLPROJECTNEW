page 60018 "Leave Categories"
{
    PageType = Card;
    SourceTable = "Leave Categories NU*";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Category Type"; "Category Type")
                {
                    ApplicationArea = All;
                }
                field(Consuming; Consuming)
                {
                    ApplicationArea = All;
                }
                field("Payment Allowed"; "Payment Allowed")
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

