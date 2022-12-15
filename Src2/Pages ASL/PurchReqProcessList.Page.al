page 50118 "Purch. Req. Process List"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All,Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE ("QCC Check" = CONST (true),
                            "Security checked" = CONST (true),
                            "Procurement Mgr. Action" = CONST (Approved),
                            Process = CONST (false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                Editable = false;
                field("Req No."; "Req No.")
                {
                    Editable = false;
                }
                field("Req Department"; "Req Department")
                {
                    Editable = false;
                }
                field("Req Location"; "Req Location")
                {
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                }
                field(Quantity; Quantity)
                {
                    Editable = false;
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Supply By"; "Supply By")
                {
                    Editable = false;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    Editable = false;
                }
                field("Security Check Quantity"; "Security Check Quantity")
                {
                    Editable = false;
                }
                field("QCC Check Quantity"; "QCC Check Quantity")
                {
                    Editable = false;
                }
            }
            group("Store Action")
            {
                Editable = false;
                field(Process; Process)
                {
                }
                field("Process By"; "Process By")
                {
                }
                field("Process By Name"; "Process By Name")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Create Purchase Order")
            {
                Image = Invoice;
                Promoted = true;

                trigger OnAction()
                begin
                    CreatePurchInv;
                end;
            }
            action("Print Status List")
            {
                Image = Purchase;
                RunObject = Report "Purchase Request List";
            }
        }
    }
}

