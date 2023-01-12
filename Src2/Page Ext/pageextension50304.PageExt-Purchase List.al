pageextension 50304 pageextension50304 extends "Purchase List"
{
    layout
    {
        addafter("Currency Code")
        {
            field("Completely Received"; "Completely Received")
            {
                ApplicationArea = All;
            }
            field("Due Date"; "Due Date")
            {
                ApplicationArea = All;
            }
        }
    }
}

