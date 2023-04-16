page 50115 "Purchase Requist List"
{
    PageType = List;
    Caption = 'Purchase Requisition List';
    SourceTable = "Purchase Requisition1";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req No."; "Req No.")
                {
                    ApplicationArea = All;
                }
                field("Req Department"; "Req Department")
                {
                    ApplicationArea = All;
                }
                field("Req Location"; "Req Location")
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
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Req. By"; "Req. By")
                {
                    ApplicationArea = All;
                }
                field("Req. By Name"; "Req. By Name")
                {
                    ApplicationArea = All;
                }
                field("Req. Date"; "Req. Date")
                {
                    ApplicationArea = All;
                }
                field("Req. Proc. Date"; "Req. Proc. Date")
                {
                    ApplicationArea = All;
                }
                field("Req. Line No."; "Req. Line No.")
                {
                    ApplicationArea = All;
                }
            }
            group("Store Action")
            {
                field("Supply By"; "Supply By")
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    ApplicationArea = All;
                }
                group(Security)
                {
                    field("Sent to Security"; "Sent to Security")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Check By"; "Security Check By")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Checked By Name"; "Security Checked By Name")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Security Check Quantity"; "Security Check Quantity")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Security checked"; "Security checked")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Security Check Time"; "Security Check Time")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                }
                group("Quality Control")
                {
                    field("Sent For QCC"; "Sent For QCC")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check  By"; "QCC Check  By")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check  Name"; "QCC Check  Name")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("QCC Check Quantity"; "QCC Check Quantity")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("QCC Check"; "QCC Check")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("QCC Check Time"; "QCC Check Time")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                }
            }
            group(Store)
            {
                Editable = false;
                field("Procurement Mgr. Action"; "Procurement Mgr. Action")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("QCC Rejected Quantity"; "QCC Rejected Quantity")
                {
                    ApplicationArea = All;
                }
                field("Quantity To Return"; "Quantity To Return")
                {
                    ApplicationArea = All;
                }
                field("Shortage Supplied  Quantity"; "Shortage Supplied  Quantity")
                {
                    ApplicationArea = All;
                }
                field("Return to Security"; "Return to Security")
                {
                    ApplicationArea = All;
                }
                field("Security Return Quantity"; "Security Return Quantity")
                {
                    ApplicationArea = All;
                }
                field("Security Returned"; "Security Returned")
                {
                    ApplicationArea = All;
                }
            }
            group("Store Process")
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
            group(History)
            {
                Editable = false;
                field("LPrice1 InvoiceNo"; "LPrice1 InvoiceNo")
                {
                    ApplicationArea = All;
                }
                field("LPrice1 Date"; "LPrice1 Date")
                {
                    ApplicationArea = All;
                }
                field("Last Price1"; "Last Price1")
                {
                    ApplicationArea = All;
                }
                field("LPrice2 InvoiceNo"; "LPrice2 InvoiceNo")
                {
                    ApplicationArea = All;
                }
                field("LPrice2 Date"; "LPrice2 Date")
                {
                    ApplicationArea = All;
                }
                field("Last Price2"; "Last Price2")
                {
                    ApplicationArea = All;
                }
                field("LPrice3 InvoiceNo"; "LPrice3 InvoiceNo")
                {
                    ApplicationArea = All;
                }
                field("LPrice3 Date"; "LPrice3 Date")
                {
                    ApplicationArea = All;
                }
                field("Last Price3"; "Last Price3")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control37; Notes)
            {
                ApplicationArea = All;
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
                ApplicationArea = All;
            }
        }
    }
}

