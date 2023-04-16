pageextension 50327 "pageextension50327" extends "Posted Transfer Shipments"
{
    layout
    {
        addafter("Shortcut Dimension 1 Code")
        {
            field("Transfer Order No."; "Transfer Order No.")
            {
                ApplicationArea = All;
            }
        }
    }
}

