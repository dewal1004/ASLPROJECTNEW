page 50133 "Tel Entering Sheet"
{
    PageType = Card;
    SourceTable = "AGO Table";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Vessel; Vessel)
                {
                    ApplicationArea = All;
                }
                field(ETD; ETD)
                {
                    ApplicationArea = All;
                }
                field(ETA; ETA)
                {
                    ApplicationArea = All;
                }
                field("Start ROB"; "Start ROB")
                {
                    ApplicationArea = All;
                }
                field("Quantity Supplied"; "Quantity Supplied")
                {
                    ApplicationArea = All;
                }
                field("Quantity Purchased 1"; "Quantity Purchased 1")
                {
                    ApplicationArea = All;
                }
                field("Rate 1"; "Rate 1")
                {
                    ApplicationArea = All;
                }
                field("Quantity Purchased 2"; "Quantity Purchased 2")
                {
                    ApplicationArea = All;
                }
                field("Rate 2"; "Rate 2")
                {
                    ApplicationArea = All;
                }
                field("Transfer 1"; "Transfer 1")
                {
                    ApplicationArea = All;
                }
                field("Transfer 2"; "Transfer 2")
                {
                    ApplicationArea = All;
                }
                field("END ROB"; "END ROB")
                {
                    ApplicationArea = All;
                }
                field("Quantity Consumed"; "Quantity Consumed")
                {
                    ApplicationArea = All;
                }
                field("Drain Qty"; "Drain Qty")
                {
                    ApplicationArea = All;
                }
                field("Sea Days"; "Sea Days")
                {
                    ApplicationArea = All;
                }
                field("Engr Days"; "Engr Days")
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

