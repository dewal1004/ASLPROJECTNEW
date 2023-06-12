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
                field("Req No."; Rec."Req No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Req Department"; Rec."Req Department")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Req Location"; Rec."Req Location")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Supply By"; Rec."Supply By")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Supplier Name"; Rec."Supplier Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Security Check Quantity"; Rec."Security Check Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("QCC Check Quantity"; Rec."QCC Check Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group("Store Action")
            {
                Editable = false;
                field(Process; Rec.Process)
                {
                    ApplicationArea = All;
                }
                field("Process By"; Rec."Process By")
                {
                    ApplicationArea = All;
                }
                field("Process By Name"; Rec."Process By Name")
                {
                    ApplicationArea = All;
                }
                field("Invoice No."; Rec."Invoice No.")
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
                    Rec.CreatePurchInv;
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

