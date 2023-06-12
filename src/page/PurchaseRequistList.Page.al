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
                field("Req No."; Rec."Req No.")
                {
                    ApplicationArea = All;
                }
                field("Req Department"; Rec."Req Department")
                {
                    ApplicationArea = All;
                }
                field("Req Location"; Rec."Req Location")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Req. By"; Rec."Req. By")
                {
                    ApplicationArea = All;
                }
                field("Req. By Name"; Rec."Req. By Name")
                {
                    ApplicationArea = All;
                }
                field("Req. Date"; Rec."Req. Date")
                {
                    ApplicationArea = All;
                }
                field("Req. Proc. Date"; Rec."Req. Proc. Date")
                {
                    ApplicationArea = All;
                }
                field("Req. Line No."; Rec."Req. Line No.")
                {
                    ApplicationArea = All;
                }
            }
            group("Store Action")
            {
                field("Supply By"; Rec."Supply By")
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; Rec."Supplier Name")
                {
                    ApplicationArea = All;
                }
                group(Security)
                {
                    field("Sent to Security"; Rec."Sent to Security")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Check By"; Rec."Security Check By")
                    {
                        ApplicationArea = All;
                    }
                    field("Security Checked By Name"; Rec."Security Checked By Name")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Security Check Quantity"; Rec."Security Check Quantity")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Security checked"; Rec."Security checked")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Security Check Time"; Rec."Security Check Time")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                }
                group("Quality Control")
                {
                    field("Sent For QCC"; Rec."Sent For QCC")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check  By"; Rec."QCC Check  By")
                    {
                        ApplicationArea = All;
                    }
                    field("QCC Check  Name"; Rec."QCC Check  Name")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("QCC Check Quantity"; Rec."QCC Check Quantity")
                    {
                        Editable = false;
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("QCC Check"; Rec."QCC Check")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("QCC Check Time"; Rec."QCC Check Time")
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
                field("Procurement Mgr. Action"; Rec."Procurement Mgr. Action")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("QCC Rejected Quantity"; Rec."QCC Rejected Quantity")
                {
                    ApplicationArea = All;
                }
                field("Quantity To Return"; Rec."Quantity To Return")
                {
                    ApplicationArea = All;
                }
                field("Shortage Supplied  Quantity"; Rec."Shortage Supplied  Quantity")
                {
                    ApplicationArea = All;
                }
                field("Return to Security"; Rec."Return to Security")
                {
                    ApplicationArea = All;
                }
                field("Security Return Quantity"; Rec."Security Return Quantity")
                {
                    ApplicationArea = All;
                }
                field("Security Returned"; Rec."Security Returned")
                {
                    ApplicationArea = All;
                }
            }
            group("Store Process")
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
            group(History)
            {
                Editable = false;
                field("LPrice1 InvoiceNo"; Rec."LPrice1 InvoiceNo")
                {
                    ApplicationArea = All;
                }
                field("LPrice1 Date"; Rec."LPrice1 Date")
                {
                    ApplicationArea = All;
                }
                field("Last Price1"; Rec."Last Price1")
                {
                    ApplicationArea = All;
                }
                field("LPrice2 InvoiceNo"; Rec."LPrice2 InvoiceNo")
                {
                    ApplicationArea = All;
                }
                field("LPrice2 Date"; Rec."LPrice2 Date")
                {
                    ApplicationArea = All;
                }
                field("Last Price2"; Rec."Last Price2")
                {
                    ApplicationArea = All;
                }
                field("LPrice3 InvoiceNo"; Rec."LPrice3 InvoiceNo")
                {
                    ApplicationArea = All;
                }
                field("LPrice3 Date"; Rec."LPrice3 Date")
                {
                    ApplicationArea = All;
                }
                field("Last Price3"; Rec."Last Price3")
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

