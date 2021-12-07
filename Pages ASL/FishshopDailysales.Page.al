page 50061 "Fishshop Daily sales"
{
    PageType = List;
    SourceTable = "Fish Shop Daily Sales";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No"; "Document No")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Location; Location)
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Payment Type"; "Payment Type")
                {
                }
                field(Processed; Processed)
                {
                }
                field("Day Sale Qty"; "Day Sale Qty")
                {
                }
                field("Day Sale Value"; "Day Sale Value")
                {
                }
                field("Cust No"; "Cust No")
                {
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
            }
        }
    }
}

