page 50115 "Purchase Requist List"
{
    PageType = List;
    Caption = 'Purchase Requisition List';
    SourceTable = "Purchase Requisition1";
    UsageCategory = Lists;
    ApplicationArea = All,Basic;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req No."; "Req No.")
                {
                }
                field("Req Department"; "Req Department")
                {
                }
                field("Req Location"; "Req Location")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Req. By"; "Req. By")
                {
                }
                field("Req. By Name"; "Req. By Name")
                {
                }
                field("Req. Date"; "Req. Date")
                {
                }
                field("Req. Proc. Date"; "Req. Proc. Date")
                {
                }
                field("Req. Line No."; "Req. Line No.")
                {
                }
            }
            group("Store Action")
            {
                field("Supply By"; "Supply By")
                {
                }
                field("Supplier Name"; "Supplier Name")
                {
                }
                group(Security)
                {
                    field("Sent to Security"; "Sent to Security")
                    {
                    }
                    field("Security Check By"; "Security Check By")
                    {
                    }
                    field("Security Checked By Name"; "Security Checked By Name")
                    {
                        Editable = false;
                        Importance = Additional;
                    }
                    field("Security Check Quantity"; "Security Check Quantity")
                    {
                        Editable = false;
                        Importance = Additional;
                    }
                    field("Security checked"; "Security checked")
                    {
                        Importance = Additional;
                    }
                    field("Security Check Time"; "Security Check Time")
                    {
                        Editable = false;
                        Importance = Additional;
                    }
                }
                group("Quality Control")
                {
                    field("Sent For QCC"; "Sent For QCC")
                    {
                    }
                    field("QCC Check  By"; "QCC Check  By")
                    {
                    }
                    field("QCC Check  Name"; "QCC Check  Name")
                    {
                        Editable = false;
                        Importance = Additional;
                    }
                    field("QCC Check Quantity"; "QCC Check Quantity")
                    {
                        Editable = false;
                        Importance = Additional;
                    }
                    field("QCC Check"; "QCC Check")
                    {
                        Importance = Additional;
                    }
                    field("QCC Check Time"; "QCC Check Time")
                    {
                        Editable = false;
                        Importance = Additional;
                    }
                }
            }
            group(Store)
            {
                Editable = false;
                field("Procurement Mgr. Action"; "Procurement Mgr. Action")
                {
                    Editable = false;
                }
                field("QCC Rejected Quantity"; "QCC Rejected Quantity")
                {
                }
                field("Quantity To Return"; "Quantity To Return")
                {
                }
                field("Shortage Supplied  Quantity"; "Shortage Supplied  Quantity")
                {
                }
                field("Return to Security"; "Return to Security")
                {
                }
                field("Security Return Quantity"; "Security Return Quantity")
                {
                }
                field("Security Returned"; "Security Returned")
                {
                }
            }
            group("Store Process")
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
            group(History)
            {
                Editable = false;
                field("LPrice1 InvoiceNo"; "LPrice1 InvoiceNo")
                {
                }
                field("LPrice1 Date"; "LPrice1 Date")
                {
                }
                field("Last Price1"; "Last Price1")
                {
                }
                field("LPrice2 InvoiceNo"; "LPrice2 InvoiceNo")
                {
                }
                field("LPrice2 Date"; "LPrice2 Date")
                {
                }
                field("Last Price2"; "Last Price2")
                {
                }
                field("LPrice3 InvoiceNo"; "LPrice3 InvoiceNo")
                {
                }
                field("LPrice3 Date"; "LPrice3 Date")
                {
                }
                field("Last Price3"; "Last Price3")
                {
                }
            }
        }
        area(factboxes)
        {
            systempart(Control37; Notes)
            {
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("Print Requisition Status  List")
            {
                Image = Register;
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Purchase Request List";
            }
        }
    }
}

