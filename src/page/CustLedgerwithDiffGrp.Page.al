page 50106 "Cust.  Ledger with Diff. Grp"
{
    PageType = List;
    UsageCategory = Administration;
    ApplicationArea = all;
    SourceTable = "Cust. Ledger Entry";
    SourceTableView = WHERE("Customer Group Map" = CONST(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; "Document Type")
                {
                    ApplicationArea = All;
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("Customer Posting Group"; "Customer Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Customer Group Map"; "Customer Group Map")
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

