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
                }
                field(Description; Description)
                {
                }
                field("Category Type"; "Category Type")
                {
                }
                field(Consuming; Consuming)
                {
                }
                field("Payment Allowed"; "Payment Allowed")
                {
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

