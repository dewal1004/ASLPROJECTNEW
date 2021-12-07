page 50106 "Cust.  Ledger with Diff. Grp"
{
    PageType = List;
    SourceTable = "Cust. Ledger Entry";
    SourceTableView = WHERE ("Customer Group Map" = CONST (false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Type"; "Document Type")
                {
                }
                field("Document No."; "Document No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                }
                field("Customer Posting Group"; "Customer Posting Group")
                {
                }
                field("Customer Group Map"; "Customer Group Map")
                {
                }
            }
        }
    }

    actions
    {
    }
}

