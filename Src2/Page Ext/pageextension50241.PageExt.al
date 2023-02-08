pageextension 50241 "pageextension50241" extends "General Ledger Entries"
{
    layout
    {
        addafter("Entry No.")
        {
            field("Transaction No."; "Transaction No.")
            {
                ApplicationArea = All;
            }
            field("Source Type1"; "Source Type")
            {
                Visible = false;
                ApplicationArea = All;
            }
            field("Source No.1"; "Source No.")
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }
}

