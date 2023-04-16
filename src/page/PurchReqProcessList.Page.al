page 50118 "Purch. Req. Process List"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE("QCC Check" = CONST(true),
                            "Security checked" = CONST(true),
                            "Procurement Mgr. Action" = CONST(Approved),
                            Process = CONST(false));

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
                    ApplicationArea = All;
                }
                field("Req Department"; "Req Department")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Req Location"; "Req Location")
                {
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Supply By"; "Supply By")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Security Check Quantity"; "Security Check Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("QCC Check Quantity"; "QCC Check Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group("Store Action")
            {
                Editable = false;
                field(Process; Process)
                {
                    ApplicationArea = All;
                }
                field("Process By"; "Process By")
                {
                    ApplicationArea = All;
                }
                field("Process By Name"; "Process By Name")
                {
                    ApplicationArea = All;
                }
                field("Invoice No."; "Invoice No.")
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CreatePurchInv;
                end;
            }
            action("Print Status List")
            {
                Image = Purchase;
                RunObject = Report "Purchase Request List";
                ApplicationArea = All;
            }
        }
    }
}

