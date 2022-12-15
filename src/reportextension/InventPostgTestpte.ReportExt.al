reportextension 50001 "InventPostgTest_pte" extends "Inventory Posting - Test"
{
    RDLCLayout = './src/reportextension/InventoryPostgTest_pte.rdlc';

    dataset
    {
        add("Item Journal Batch")
        {
            column(IssuedBy; IssuedBy) { }
            column(ReceivedBy; ReceivedBy) { }
            column(ApprovedBy; ApprovedBy) { }
        }

        add("Item Journal Line")
        {
            column(Unit_of_Measure_Code;"Unit of Measure Code") { }
            Column(Location_Code;"Location Code") { }
            column(ExpenseCtr;ExpenseCtr) { }
            column(External_Document_No_;"External Document No.") { }
        }
    }

    var
        IssuedBy: Label 'Issued By: ';
        ReceivedBy: Label 'Received By';
        ApprovedBy: Label 'Approved By: ';
        ExpenseCtr: Label 'Expense Centre';
}