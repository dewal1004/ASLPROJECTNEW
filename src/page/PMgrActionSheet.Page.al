page 50122 "PMgr Action Sheet"
{
    Caption = 'Procurement Manager Action Sheet';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE("QCC Check" = CONST(true),
                            Process = CONST(false),
                            "Procurement Mgr. Action" = FILTER(<> Approved));

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
                    ApplicationArea = All;
                }
                field("Req. Line No."; "Req. Line No.")
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
                field("Shortage Supplied  Quantity"; "Shortage Supplied  Quantity")
                {
                    ApplicationArea = All;
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
                        ApplicationArea = All;
                    }
                    field("Security Check Quantity"; "Security Check Quantity")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Comment"; "Security Comment")
                    {
                        ApplicationArea = All;
                    }
                    field("Security checked"; "Security checked")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Check By"; "Security Check By")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Checked By Name"; "Security Checked By Name")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Check Time"; "Security Check Time")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Returned"; "Security Returned")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Return Quantity"; "Security Return Quantity")
                    {
                        ApplicationArea = All;
                    }
                }
                group("Quality Control")
                {
                    //The GridLayout property is only supported on controls of type Grid
                    //GridLayout = Columns;
                    field("Sent For QCC"; "Sent For QCC")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check Quantity"; "QCC Check Quantity")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Comment"; "QCC Comment")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check"; "QCC Check")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check  By"; "QCC Check  By")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check  Name"; "QCC Check  Name")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check Time"; "QCC Check Time")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Rejected Quantity"; "QCC Rejected Quantity")
                    {
                        ApplicationArea = All;
                    }
                }
            }
            group("Procurement Manager Action")
            {
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Columns;
                field("Supply By"; "Supply By")
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    ApplicationArea = All;
                }
                field("Quantity To Return"; "Quantity To Return")
                {
                    ApplicationArea = All;
                }
                field("Return to Security"; "Return to Security")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Procurement Mgr. Action"; "Procurement Mgr. Action")
                {
                    ApplicationArea = All;
                }
            }
            group(Pricing)
            {
                Editable = false;
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Columns;
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
            group("Process Action")
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
    }
}

