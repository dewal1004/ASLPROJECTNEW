page 50061 "Fishshop Daily sales"
{
    PageType = List;
    SourceTable = "Fish Shop Daily Sales";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No"; "Document No")
                {
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Location; Location)
                {
                    ApplicationArea = All;
                }
                field("Transaction Date"; "Transaction Date")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Payment Type"; "Payment Type")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
                field("Day Sale Qty"; "Day Sale Qty")
                {
                    ApplicationArea = All;
                }
                field("Day Sale Value"; "Day Sale Value")
                {
                    ApplicationArea = All;
                }
                field("Cust No"; "Cust No")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Import Daily Sales")
            {
                RunObject = XMLport "Import FS daily sales";
                ApplicationArea = All;
            }
        }
    }
}

