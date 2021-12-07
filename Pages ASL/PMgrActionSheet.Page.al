page 50122 "PMgr Action Sheet"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE ("QCC Check" = CONST (true),
                            Process = CONST (false),
                            "Procurement Mgr. Action" = FILTER (<> Approved));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
               /* group(Control51)
                {
                    Editable = false;
                    //The GridLayout property is only supported on controls of type Grid
                    //GridLayout = Columns;
                    ShowCaption = false; */
                    field("Req No."; "Req No.")
                    {
                    }
                    field("Req. Line No."; "Req. Line No.")
                    {
                    }
                    field("Req Department"; "Req Department")
                    {
                    }
                    field("Req Location"; "Req Location")
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
                    field("Item No."; "Item No.")
                    {
                    }
                    field(Description; Description)
                    {
                    }
                    field(Quantity; Quantity)
                    {
                    }
                    field("Shortage Supplied  Quantity"; "Shortage Supplied  Quantity")
                    {
                    }
               // }
            }
            group("Security and Quality Check")
            {
                Editable = false;
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Rows;
                group(Security)
                {
                    field("Sent to Security"; "Sent to Security")
                    {
                    }
                    field("Security Check Quantity"; "Security Check Quantity")
                    {
                    }
                    field("Security Comment"; "Security Comment")
                    {
                    }
                    field("Security checked"; "Security checked")
                    {
                    }
                    field("Security Check By"; "Security Check By")
                    {
                    }
                    field("Security Checked By Name"; "Security Checked By Name")
                    {
                    }
                    field("Security Check Time"; "Security Check Time")
                    {
                    }
                    field("Security Returned"; "Security Returned")
                    {
                    }
                    field("Security Return Quantity"; "Security Return Quantity")
                    {
                    }
                }
                group("Quality Control")
                {
                    //The GridLayout property is only supported on controls of type Grid
                    //GridLayout = Columns;
                    field("Sent For QCC"; "Sent For QCC")
                    {
                    }
                    field("QCC Check Quantity"; "QCC Check Quantity")
                    {
                    }
                    field("QCC Comment"; "QCC Comment")
                    {
                    }
                    field("QCC Check"; "QCC Check")
                    {
                    }
                    field("QCC Check  By"; "QCC Check  By")
                    {
                    }
                    field("QCC Check  Name"; "QCC Check  Name")
                    {
                    }
                    field("QCC Check Time"; "QCC Check Time")
                    {
                    }
                    field("QCC Rejected Quantity"; "QCC Rejected Quantity")
                    {
                    }
                }
            }
            group("Procurement Manager Action")
            {
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Columns;
                field("Supply By"; "Supply By")
                {
                }
                field("Supplier Name"; "Supplier Name")
                {
                }
                field("Quantity To Return"; "Quantity To Return")
                {
                }
                field("Return to Security"; "Return to Security")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Procurement Mgr. Action"; "Procurement Mgr. Action")
                {
                }
            }
            group(Pricing)
            {
                Editable = false;
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Columns;
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
            group("Process Action")
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
    }
}

