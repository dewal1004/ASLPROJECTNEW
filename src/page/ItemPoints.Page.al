page 50057 "Item Points"
{
    PageType = List;
    SourceTable = "Item Points";
    Caption = 'Item Points';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Price Group Code"; Rec."Price Group Code")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Price Includes VAT"; Rec."Price Includes VAT")
                {
                    ApplicationArea = All;
                }
                field("Allow Quantity Disc."; Rec."Allow Quantity Disc.")
                {
                    ApplicationArea = All;
                }
                field("Allow Cust./Item Disc."; Rec."Allow Cust./Item Disc.")
                {
                    ApplicationArea = All;
                }
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field("VAT Bus. Posting Gr. (Price)"; Rec."VAT Bus. Posting Gr. (Price)")
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = All;
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}
