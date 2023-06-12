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
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Customer Group Map"; Rec."Customer Group Map")
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

