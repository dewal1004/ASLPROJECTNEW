page 50133 "Tel Entering Sheet"
{
    PageType = Card;
    SourceTable = "AGO Table";
    Caption = 'Tel Entering Sheet';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Vessel; Rec.Vessel)
                {
                    ApplicationArea = All;
                }
                field(ETD; Rec.ETD)
                {
                    ApplicationArea = All;
                }
                field(ETA; Rec.ETA)
                {
                    ApplicationArea = All;
                }
                field("Start ROB"; Rec."Start ROB")
                {
                    ApplicationArea = All;
                }
                field("Quantity Supplied"; Rec."Quantity Supplied")
                {
                    ApplicationArea = All;
                }
                field("Quantity Purchased 1"; Rec."Quantity Purchased 1")
                {
                    ApplicationArea = All;
                }
                field("Rate 1"; Rec."Rate 1")
                {
                    ApplicationArea = All;
                }
                field("Quantity Purchased 2"; Rec."Quantity Purchased 2")
                {
                    ApplicationArea = All;
                }
                field("Rate 2"; Rec."Rate 2")
                {
                    ApplicationArea = All;
                }
                field("Transfer 1"; Rec."Transfer 1")
                {
                    ApplicationArea = All;
                }
                field("Transfer 2"; Rec."Transfer 2")
                {
                    ApplicationArea = All;
                }
                field("END ROB"; Rec."END ROB")
                {
                    ApplicationArea = All;
                }
                field("Quantity Consumed"; Rec."Quantity Consumed")
                {
                    ApplicationArea = All;
                }
                field("Drain Qty"; Rec."Drain Qty")
                {
                    ApplicationArea = All;
                }
                field("Sea Days"; Rec."Sea Days")
                {
                    ApplicationArea = All;
                }
                field("Engr Days"; Rec."Engr Days")
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
