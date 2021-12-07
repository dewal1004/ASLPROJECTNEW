query 50000 "Production Report"
{

    elements
    {
        dataitem(Item_Ledger_Entry; "Item Ledger Entry")
        {
            DataItemTableFilter = "Order Type" = CONST (Production);
            column(Item_No; "Item No.")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Entry_Type; "Entry Type")
            {
            }
            column(Order_No; "Order No.")
            {
            }
            column(Quantity; Quantity)
            {
            }
        }
    }
}

