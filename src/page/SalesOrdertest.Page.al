page 90000 "Sales Order test"
{
    Caption = 'Sales Order';
    PageType = Document;
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Prepare,Invoice,Request Approval';
    RefreshOnActivate = true;
    SourceTable = "Sales Header";
    SourceTableView = WHERE("Document Type" = FILTER(Order));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    Importance = Promoted;
                    Visible = DocNoVisible;
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    Importance = Promoted;
                    ShowMandatory = true;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        SelltoCustomerNoOnAfterValidat();
                    end;
                }
                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if Rec.GetFilter("Sell-to Contact No.") = xRec."Sell-to Contact No." then
                            if Rec."Sell-to Contact No." <> xRec."Sell-to Contact No." then
                                Rec.SetRange("Sell-to Contact No.");
                    end;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    QuickEntry = false;
                    ApplicationArea = All;
                }
                field("Sell-to Address"; Rec."Sell-to Address")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Sell-to Address 2"; Rec."Sell-to Address 2")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Sell-to Post Code"; Rec."Sell-to Post Code")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Sell-to City"; Rec."Sell-to City")
                {
                    QuickEntry = false;
                    ApplicationArea = All;
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("No. of Archived Versions"; Rec."No. of Archived Versions")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    QuickEntry = false;
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    Importance = Promoted;
                    QuickEntry = false;
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document Date")
                {
                    QuickEntry = false;
                    ApplicationArea = All;
                }
                field("Requested Delivery Date"; Rec."Requested Delivery Date")
                {
                    ApplicationArea = All;
                }
                field("Promised Delivery Date"; Rec."Promised Delivery Date")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Quote No."; Rec."Quote No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("External Document No."; Rec."External Document No.")
                {
                    Importance = Promoted;
                    ShowMandatory = ExternalDocNoMandatory;
                    ApplicationArea = All;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    QuickEntry = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        SalespersonCodeOnAfterValidate();
                    end;
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Opportunity No."; Rec."Opportunity No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Job Queue Status"; Rec."Job Queue Status")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    Importance = Promoted;
                    QuickEntry = false;
                    ApplicationArea = All;
                }
            }
            part(SalesLines; "Sales Order Subform")
            {
                Editable = DynamicEditable;
                SubPageLink = "Document No." = FIELD("No.");
                UpdatePropagation = Both;
                ApplicationArea = All;
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    Importance = Promoted;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        BilltoCustomerNoOnAfterValidat();
                    end;
                }
                field("Bill-to Contact No."; Rec."Bill-to Contact No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Bill-to Name"; Rec."Bill-to Name")
                {
                    ApplicationArea = All;
                }
                field("Bill-to Address"; Rec."Bill-to Address")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Bill-to Address 2"; Rec."Bill-to Address 2")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Bill-to Post Code"; Rec."Bill-to Post Code")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Bill-to City"; Rec."Bill-to City")
                {
                    ApplicationArea = All;
                }
                field("Bill-to Contact"; Rec."Bill-to Contact")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        ShortcutDimension1CodeOnAfterV();
                    end;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        ShortcutDimension2CodeOnAfterV();
                    end;
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field("Direct Debit Mandate ID"; Rec."Direct Debit Mandate ID")
                {
                    ApplicationArea = All;
                }
                field("Prices Including VAT"; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        PricesIncludingVATOnAfterValid();
                    end;
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                label(Control226)
                {
                    ShowCaption = false;
                    ApplicationArea = All;
                }
                label("Cr. Card Number (Last 4 Digits)")
                {
                    Caption = 'Cr. Card Number (Last 4 Digits)';
                    ApplicationArea = All;
                }
            }
            group(Shipping)
            {
                Caption = 'Shipping';
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Outbound Whse. Handling Time"; Rec."Outbound Whse. Handling Time")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Shipping Time"; Rec."Shipping Time")
                {
                    ApplicationArea = All;
                }
                field("Late Order Shipping"; Rec."Late Order Shipping")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Package Tracking No."; Rec."Package Tracking No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Shipping Advice"; Rec."Shipping Advice")
                {
                    Importance = Promoted;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if Rec."Shipping Advice" <> xRec."Shipping Advice" then
                            if not Confirm(Text001, false, Rec.FieldCaption("Shipping Advice")) then
                                Error(Text002);
                    end;
                }
            }
            group("Foreign Trade")
            {
                Caption = 'Foreign Trade';
                field("Currency Code"; Rec."Currency Code")
                {
                    Importance = Promoted;
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        Clear(ChangeExchangeRate);
                        if Rec."Posting Date" <> 0D then
                            ChangeExchangeRate.SetParameter(Rec."Currency Code", Rec."Currency Factor", Rec."Posting Date")
                        else
                            ChangeExchangeRate.SetParameter(Rec."Currency Code", Rec."Currency Factor", WorkDate());
                        if ChangeExchangeRate.RunModal() = ACTION::OK then begin
                            Rec.Validate("Currency Factor", ChangeExchangeRate.GetParameter());
                            CurrPage.Update();
                        end;
                        Clear(ChangeExchangeRate);
                    end;

                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                        SalesCalcDiscountByType.ApplyDefaultInvoiceDiscount(0, Rec);
                    end;
                }
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                }
                field("Exit Point"; Rec."Exit Point")
                {
                    ApplicationArea = All;
                }
                field("Area"; Rec.Area)
                {
                    ApplicationArea = All;
                }
            }
            group(Control1900201301)
            {
                Caption = 'Prepayment';
                field("Prepayment %"; Rec."Prepayment %")
                {
                    Importance = Promoted;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Prepayment37OnAfterValidate();
                    end;
                }
                field("Compress Prepayment"; Rec."Compress Prepayment")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Payment Terms Code"; Rec."Prepmt. Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field("Prepayment Due Date"; Rec."Prepayment Due Date")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Prepmt. Payment Discount %"; Rec."Prepmt. Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Pmt. Discount Date"; Rec."Prepmt. Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("O&rder")
            {
                Caption = 'O&rder';
                Image = "Order";
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'F7';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Rec.OpenSalesOrderStatistics();
                        SalesCalcDiscountByType.ResetRecalculateInvoiceDisc(Rec);
                    end;
                }
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Customer Card";
                    RunPageLink = "No." = FIELD("Sell-to Customer No.");
                    ShortCutKey = 'Shift+F7';
                    ApplicationArea = All;
                }
                action(Dimensions)
                {
                    AccessByPermission = TableData Dimension = R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Rec.ShowDocDim();
                        CurrPage.SaveRecord();
                    end;
                }
                action("A&pprovals")
                {
                    Caption = 'A&pprovals';
                    Image = Approvals;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalEntries: Page "Approval Entries";
                    begin
                        ApprovalEntries.Setfilters(DATABASE::"Sales Header", Rec."Document Type", Rec."No.");
                        ApprovalEntries.Run();
                    end;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Sales Comment Sheet";
                    RunPageLink = "Document Type" = FIELD("Document Type"),
                                  "No." = FIELD("No."),
                                  "Document Line No." = CONST(0);
                    ApplicationArea = All;
                }
                action("Credit Cards Transaction Lo&g Entries")
                {
                    Caption = 'Credit Cards Transaction Lo&g Entries';
                    Image = CreditCardLog;
                    ApplicationArea = All;
                    //*** RunObject = Page Page829;
                }
                action("Assembly Orders")
                {
                    AccessByPermission = TableData "BOM Component" = R;
                    Caption = 'Assembly Orders';
                    Image = AssemblyOrder;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        AssembleToOrderLink: Record "Assemble-to-Order Link";
                    begin
                        AssembleToOrderLink.ShowAsmOrders(Rec);
                    end;
                }
            }
            group(ActionGroupCRM)
            {
                Caption = 'Dynamics CRM';
                Visible = CRMIntegrationEnabled;
                action(CRMGoToSalesOrder)
                {
                    Caption = 'Sales Order';
                    Enabled = CRMIntegrationEnabled AND CRMIsCoupledToRecord;
                    Image = CoupledOrder;
                    ToolTip = 'Open the coupled Microsoft Dynamics CRM sales order.';
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowCRMEntityFromRecordID(Rec.RecordId);
                    end;
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = Documents;
                action("S&hipments")
                {
                    Caption = 'S&hipments';
                    Image = Shipment;
                    RunObject = Page "Posted Sales Shipments";
                    RunPageLink = "Order No." = FIELD("No.");
                    RunPageView = SORTING("Order No.");
                    ApplicationArea = All;
                }
                action(Invoices)
                {
                    Caption = 'Invoices';
                    Image = Invoice;
                    RunObject = Page "Posted Sales Invoices";
                    RunPageLink = "Order No." = FIELD("No.");
                    RunPageView = SORTING("Order No.");
                    ApplicationArea = All;
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("In&vt. Put-away/Pick Lines")
                {
                    Caption = 'In&vt. Put-away/Pick Lines';
                    Image = PickLines;
                    RunObject = Page "Warehouse Activity List";
                    RunPageLink = "Source Document" = CONST("Sales Order"),
                                  "Source No." = FIELD("No.");
                    RunPageView = SORTING("Source Document", "Source No.", "Location Code");
                    ApplicationArea = All;
                }
                action("Whse. Shipment Lines")
                {
                    Caption = 'Whse. Shipment Lines';
                    Image = ShipmentLines;
                    RunObject = Page "Whse. Shipment Lines";
                    RunPageLink = "Source Type" = CONST(37),
                                  "Source Subtype" = FIELD("Document Type"),
                                  "Source No." = FIELD("No.");
                    RunPageView = SORTING("Source Type", "Source Subtype", "Source No.", "Source Line No.");
                    ApplicationArea = All;
                }
            }
            group(Prepayment)
            {
                Caption = 'Prepayment';
                Image = Prepayment;
                action("Prepa&yment Invoices")
                {
                    Caption = 'Prepa&yment Invoices';
                    Image = PrepaymentInvoice;
                    RunObject = Page "Posted Sales Invoices";
                    RunPageLink = "Prepayment Order No." = FIELD("No.");
                    RunPageView = SORTING("Prepayment Order No.");
                    ApplicationArea = All;
                }
                action("Prepayment Credi&t Memos")
                {
                    Caption = 'Prepayment Credi&t Memos';
                    Image = PrepaymentCreditMemo;
                    RunObject = Page "Posted Sales Credit Memos";
                    RunPageLink = "Prepayment Order No." = FIELD("No.");
                    RunPageView = SORTING("Prepayment Order No.");
                    ApplicationArea = All;
                }
            }
        }
        area(processing)
        {
            group(Approval)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.ApproveRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Reject)
                {
                    Caption = 'Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.RejectRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Delegate)
                {
                    Caption = 'Delegate';
                    Image = Delegate;
                    Promoted = true;
                    PromotedCategory = Category4;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.DelegateRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Comment)
                {
                    Caption = 'Comments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category4;
                    RunObject = Page "Approval Comments";
                    RunPageLink = "Table ID" = CONST(36),
                                  "Document Type" = FIELD("Document Type"),
                                  "Document No." = FIELD("No.");
                    Visible = OpenApprovalEntriesExistForCurrUser;
                    ApplicationArea = All;
                }
            }
            group(Action21)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                action(Release)
                {
                    Caption = 'Re&lease';
                    Image = ReleaseDoc;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'Ctrl+F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ReleaseSalesDoc: Codeunit "Release Sales Document";
                    begin
                        ReleaseSalesDoc.PerformManualRelease(Rec);
                    end;
                }
                action("Re&open")
                {
                    Caption = 'Re&open';
                    Image = ReOpen;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ReleaseSalesDoc: Codeunit "Release Sales Document";
                    begin
                        ReleaseSalesDoc.PerformManualReopen(Rec);
                    end;
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action(CalculateInvoiceDiscount)
                {
                    Caption = 'Calculate &Invoice Discount';
                    Image = CalculateInvoiceDiscount;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ApproveCalcInvDisc();
                        SalesCalcDiscountByType.ResetRecalculateInvoiceDisc(Rec);
                    end;
                }
                action("Get St&d. Cust. Sales Codes")
                {
                    Caption = 'Get St&d. Cust. Sales Codes';
                    Ellipsis = true;
                    Image = CustomerCode;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        StdCustSalesCode: Record "Standard Customer Sales Code";
                    begin
                        StdCustSalesCode.InsertSalesLines(Rec);
                    end;
                }
                action(CopyDocument)
                {
                    Caption = 'Copy Document';
                    Ellipsis = true;
                    Image = CopyDocument;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CopySalesDoc.SetSalesHeader(Rec);
                        CopySalesDoc.RunModal();
                        Clear(CopySalesDoc);
                    end;
                }
                action("Move Negative Lines")
                {
                    Caption = 'Move Negative Lines';
                    Ellipsis = true;
                    Image = MoveNegativeLines;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Clear(MoveNegSalesLines);
                        MoveNegSalesLines.SetSalesHeader(Rec);
                        MoveNegSalesLines.RunModal();
                        MoveNegSalesLines.ShowDocument();
                    end;
                }
                action("Archive Document")
                {
                    Caption = 'Archi&ve Document';
                    Image = Archive;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ArchiveManagement.ArchiveSalesDocument(Rec);
                        CurrPage.Update(false);
                    end;
                }
                action("Send IC Sales Order Cnfmn.")
                {
                    AccessByPermission = TableData "IC G/L Account" = R;
                    Caption = 'Send IC Sales Order Cnfmn.';
                    Image = IntercompanyOrder;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ICInOutboxMgt: Codeunit ICInboxOutboxMgt;
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        if ApprovalsMgmt.PrePostApprovalCheckSales(Rec) then
                            ICInOutboxMgt.SendSalesDoc(Rec, false);
                    end;
                }
                group(IncomingDocument)
                {
                    Caption = 'Incoming Document';
                    Image = Documents;
                    action(IncomingDocCard)
                    {
                        Caption = 'View Incoming Document';
                        Enabled = HasIncomingDocument;
                        Image = ViewOrder;
                        ApplicationArea = All;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';

                        trigger OnAction()
                        var
                            IncomingDocument: Record "Incoming Document";
                        begin
                            IncomingDocument.ShowCardFromEntryNo(Rec."Incoming Document Entry No.");
                        end;
                    }
                    action(SelectIncomingDoc)
                    {
                        AccessByPermission = TableData "Incoming Document" = R;
                        Caption = 'Select Incoming Document';
                        Image = SelectLineToApply;
                        ApplicationArea = All;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';

                        trigger OnAction()
                        begin
                            //VALIDATE("Incoming Document Entry No.",IncomingDocument.SelectIncomingDocument("Incoming Document Entry No."));
                        end;
                    }
                    action(IncomingDocAttachFile)
                    {
                        Caption = 'Create Incoming Document from File';
                        Ellipsis = true;
                        Enabled = NOT HasIncomingDocument;
                        Image = Attach;
                        ApplicationArea = All;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';

                        trigger OnAction()
                        var
                            IncomingDocumentAttachment: Record "Incoming Document Attachment";
                        begin
                            IncomingDocumentAttachment.NewAttachmentFromSalesDocument(Rec);
                        end;
                    }
                    action(RemoveIncomingDoc)
                    {
                        Caption = 'Remove Incoming Document';
                        Enabled = HasIncomingDocument;
                        Image = RemoveLine;
                        ApplicationArea = All;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';

                        trigger OnAction()
                        begin
                            Rec."Incoming Document Entry No." := 0;
                        end;
                    }
                }
            }
            group(Plan)
            {
                Caption = 'Plan';
                Image = Planning;
                action("Order &Promising")
                {
                    AccessByPermission = TableData "Order Promising Line" = R;
                    Caption = 'Order &Promising';
                    Image = OrderPromising;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        OrderPromisingLine: Record "Order Promising Line" temporary;
                    begin
                        OrderPromisingLine.SetRange("Source Type", Rec."Document Type");
                        OrderPromisingLine.SetRange("Source ID", Rec."No.");
                        PAGE.RunModal(PAGE::"Order Promising Lines", OrderPromisingLine);
                    end;
                }
                action("Demand Overview")
                {
                    Caption = 'Demand Overview';
                    Image = Forecast;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        DemandOverview: Page "Demand Overview";
                    begin
                        DemandOverview.SetCalculationParameter(true);
                        DemandOverview.Initialize(0D, 1, Rec."No.", '', '');
                        DemandOverview.RunModal();
                    end;
                }
                action("Pla&nning")
                {
                    Caption = 'Pla&nning';
                    Image = Planning;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        SalesPlanForm: Page "Sales Order Planning";
                    begin
                        SalesPlanForm.SetSalesOrder(Rec."No.");
                        SalesPlanForm.RunModal();
                    end;
                }
            }
            group("Request Approval")
            {
                Caption = 'Request Approval';
                Image = SendApprovalRequest;
                action(SendApprovalRequest)
                {
                    Caption = 'Send A&pproval Request';
                    Enabled = NOT OpenApprovalEntriesExist;
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category9;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //IF ApprovalsMgmt.CheckSalesApprovalsWorkflowEnabled(Rec) THEN
                        //ApprovalsMgmt.OnSendSalesDocForApproval(Rec);
                    end;
                }
                action(CancelApprovalRequest)
                {
                    Caption = 'Cancel Approval Re&quest';
                    Enabled = OpenApprovalEntriesExist;
                    Image = Cancel;
                    Promoted = true;
                    PromotedCategory = Category9;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.OnCancelSalesApprovalRequest(Rec);
                    end;
                }
            }
            group("Credit Card")
            {
                Caption = 'Credit Card';
                Image = AuthorizeCreditCard;
                action(Authorize)
                {
                    Caption = 'Authorize';
                    Image = AuthorizeCreditCard;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //Authorize;
                    end;
                }
                action("Void A&uthorize")
                {
                    Caption = 'Void A&uthorize';
                    Image = VoidCreditCard;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //Void;
                    end;
                }
            }
            group(Action3)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("Create Inventor&y Put-away/Pick")
                {
                    AccessByPermission = TableData "Posted Invt. Pick Header" = R;
                    Caption = 'Create Inventor&y Put-away/Pick';
                    Ellipsis = true;
                    Image = CreateInventoryPickup;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Rec.CreateInvtPutAwayPick();

                        if not Rec.Find('=><') then
                            Rec.Init();
                    end;
                }
                action("Create &Whse. Shipment")
                {
                    AccessByPermission = TableData "Warehouse Shipment Header" = R;
                    Caption = 'Create &Whse. Shipment';
                    Image = NewShipment;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        GetSourceDocOutbound: Codeunit "Get Source Doc. Outbound";
                    begin
                        GetSourceDocOutbound.CreateFromSalesOrder(Rec);

                        if not Rec.Find('=><') then
                            Rec.Init();
                    end;
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                Image = Post;
                action(Post)
                {
                    Caption = 'P&ost';
                    Ellipsis = true;
                    Image = PostOrder;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Post(CODEUNIT::"Sales-Post (Yes/No)");
                    end;
                }
                action("Post and &Print")
                {
                    Caption = 'Post and &Print';
                    Ellipsis = true;
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Post(CODEUNIT::"Sales-Post + Print");
                    end;
                }
                action("Post and Email")
                {
                    Caption = 'Post and Email';
                    Ellipsis = true;
                    Image = PostMail;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        SalesPostPrint: Codeunit "Sales-Post + Print";
                    begin
                        SalesPostPrint.PostAndEmail(Rec);
                    end;
                }
                action("Test Report")
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ReportPrint.PrintSalesHeader(Rec);
                    end;
                }
                action("Post &Batch")
                {
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        REPORT.RunModal(REPORT::"Batch Post Sales Orders", true, true, Rec);
                        CurrPage.Update(false);
                    end;
                }
                action("Remove From Job Queue")
                {
                    Caption = 'Remove From Job Queue';
                    Image = RemoveLine;
                    Visible = JobQueueVisible;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Rec.CancelBackgroundPosting();
                    end;
                }
                action("Preview Posting")
                {
                    Caption = 'Preview Posting';
                    Image = ViewPostedOrder;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowPreview();
                    end;
                }
                group("Prepa&yment")
                {
                    Caption = 'Prepa&yment';
                    Image = Prepayment;
                    action("Prepayment &Test Report")
                    {
                        Caption = 'Prepayment &Test Report';
                        Ellipsis = true;
                        Image = PrepaymentSimulation;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ReportPrint.PrintSalesHeaderPrepmt(Rec);
                        end;
                    }
                    action(PostPrepaymentInvoice)
                    {
                        Caption = 'Post Prepayment &Invoice';
                        Ellipsis = true;
                        Image = PrepaymentPost;
                        ApplicationArea = All;

                        trigger OnAction()
                        var
                            SalesPostYNPrepmt: Codeunit "Sales-Post Prepayment (Yes/No)";
                        begin
                            if ApprovalsMgmt.PrePostApprovalCheckSales(Rec) then
                                SalesPostYNPrepmt.PostPrepmtInvoiceYN(Rec, false);
                        end;
                    }
                    action("Post and Print Prepmt. Invoic&e")
                    {
                        Caption = 'Post and Print Prepmt. Invoic&e';
                        Ellipsis = true;
                        Image = PrepaymentPostPrint;
                        ApplicationArea = All;

                        trigger OnAction()
                        var
                            SalesPostYNPrepmt: Codeunit "Sales-Post Prepayment (Yes/No)";
                        begin
                            if ApprovalsMgmt.PrePostApprovalCheckSales(Rec) then
                                SalesPostYNPrepmt.PostPrepmtInvoiceYN(Rec, true);
                        end;
                    }
                    action(PostPrepaymentCreditMemo)
                    {
                        Caption = 'Post Prepayment &Credit Memo';
                        Ellipsis = true;
                        Image = PrepaymentPost;
                        ApplicationArea = All;

                        trigger OnAction()
                        var
                            SalesPostYNPrepmt: Codeunit "Sales-Post Prepayment (Yes/No)";
                        begin
                            if ApprovalsMgmt.PrePostApprovalCheckSales(Rec) then
                                SalesPostYNPrepmt.PostPrepmtCrMemoYN(Rec, false);
                        end;
                    }
                    action("Post and Print Prepmt. Cr. Mem&o")
                    {
                        Caption = 'Post and Print Prepmt. Cr. Mem&o';
                        Ellipsis = true;
                        Image = PrepaymentPostPrint;
                        ApplicationArea = All;

                        trigger OnAction()
                        var
                            SalesPostYNPrepmt: Codeunit "Sales-Post Prepayment (Yes/No)";
                        begin
                            if ApprovalsMgmt.PrePostApprovalCheckSales(Rec) then
                                SalesPostYNPrepmt.PostPrepmtCrMemoYN(Rec, true);
                        end;
                    }
                }
            }
            group("&Print")
            {
                Caption = '&Print';
                Image = Print;
                action("Work Order")
                {
                    Caption = 'Work Order';
                    Ellipsis = true;
                    Image = Print;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec, Usage::"Work Order");
                    end;
                }
                action("Pick Instruction")
                {
                    Caption = 'Pick Instruction';
                    Image = Print;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec, Usage::"Pick Instruction");
                    end;
                }
            }
            group("&Order Confirmation")
            {
                Caption = '&Order Confirmation';
                Image = Email;
                action("Email Confirmation")
                {
                    Caption = 'Email Confirmation';
                    Ellipsis = true;
                    Image = Email;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        DocPrint.EmailSalesHeader(Rec);
                    end;
                }
                action("Print Confirmation")
                {
                    Caption = 'Print Confirmation';
                    Ellipsis = true;
                    Image = Print;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec, Usage::"Order Confirmation");
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var
        CRMCouplingManagement: Codeunit "CRM Coupling Management";
    begin
        DynamicEditable := CurrPage.Editable;
        //CurrPage.IncomingDocAttachFactBox.PAGE.LoadDataFromRecord(Rec);
        CRMIsCoupledToRecord := CRMIntegrationEnabled and CRMCouplingManagement.IsRecordCoupledToCRM(Rec.RecordId);
        //ShowWorkflowStatus := CurrPage.WorkflowStatus.PAGE.SetFilterOnWorkflowRecord(RECORDID);
    end;

    trigger OnAfterGetRecord()
    begin
        SetControlVisibility();
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        CurrPage.SaveRecord();
        exit(Rec.ConfirmDeletion());
    end;

    trigger OnInit()
    begin
        SetExtDocNoMandatoryCondition();
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Rec.CheckCreditMaxBeforeInsert();
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."Responsibility Center" := UserMgt.GetSalesFilter();
    end;

    trigger OnOpenPage()
    var
        CRMIntegrationManagement: Codeunit "CRM Integration Management";
    begin
        if UserMgt.GetSalesFilter() <> '' then begin
            Rec.FilterGroup(2);
            Rec.SetRange("Responsibility Center", UserMgt.GetSalesFilter());
            Rec.FilterGroup(0);
        end;

        Rec.SetRange("Date Filter", 0D, WorkDate() - 1);

        SetDocNoVisible();

        CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled();
    end;

    var
        CopySalesDoc: Report "Copy Sales Document";
        MoveNegSalesLines: Report "Move Negative Sales Lines";
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        ReportPrint: Codeunit "Test Report-Print";
        DocPrint: Codeunit "Document-Print";
        ArchiveManagement: Codeunit ArchiveManagement;
        SalesCalcDiscountByType: Codeunit "Sales - Calc Discount By Type";
        ChangeExchangeRate: Page "Change Exchange Rate";
        UserMgt: Codeunit "User Setup Management";
        Usage: Option "Order Confirmation","Work Order","Pick Instruction";
        [InDataSet]
        JobQueueVisible: Boolean;
        Text001: Label 'Do you want to change %1 in all related records in the warehouse?';
        Text002: Label 'The update has been interrupted to respect the warning.';
        DynamicEditable: Boolean;
        HasIncomingDocument: Boolean;
        DocNoVisible: Boolean;
        ExternalDocNoMandatory: Boolean;
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesExist: Boolean;
        CRMIntegrationEnabled: Boolean;
        CRMIsCoupledToRecord: Boolean;

    local procedure Post(PostingCodeunitID: Integer)
    begin
        Rec.SendToPosting(PostingCodeunitID);
        if Rec."Job Queue Status" = Rec."Job Queue Status"::"Scheduled for Posting" then
            CurrPage.Close();
        CurrPage.Update(false);
    end;

    local procedure ApproveCalcInvDisc()
    begin
        //CurrPage.SalesLines.PAGE.ApproveCalcInvDisc;
    end;

    local procedure SelltoCustomerNoOnAfterValidat()
    begin
        if Rec.GetFilter("Sell-to Customer No.") = xRec."Sell-to Customer No." then
            if Rec."Sell-to Customer No." <> xRec."Sell-to Customer No." then
                Rec.SetRange("Sell-to Customer No.");
        CurrPage.Update();
    end;

    local procedure SalespersonCodeOnAfterValidate()
    begin
        //CurrPage.SalesLines.PAGE.UpdateForm(TRUE);
    end;

    local procedure BilltoCustomerNoOnAfterValidat()
    begin
        CurrPage.Update();
    end;

    local procedure ShortcutDimension1CodeOnAfterV()
    begin
        CurrPage.Update();
    end;

    local procedure ShortcutDimension2CodeOnAfterV()
    begin
        CurrPage.Update();
    end;

    local procedure PricesIncludingVATOnAfterValid()
    begin
        CurrPage.Update();
    end;

    local procedure Prepayment37OnAfterValidate()
    begin
        CurrPage.Update();
    end;

    local procedure SetDocNoVisible()
    var
        DocumentNoVisibility: Codeunit DocumentNoVisibility;
        DocType: Option Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",Reminder,FinChMemo;
    begin
        DocNoVisible := DocumentNoVisibility.SalesDocumentNoIsVisible(DocType::Order, Rec."No.");
    end;

    local procedure SetExtDocNoMandatoryCondition()
    var
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
    begin
        SalesReceivablesSetup.Get();
        ExternalDocNoMandatory := SalesReceivablesSetup."Ext. Doc. No. Mandatory"
    end;

    local procedure ShowPreview()
    var
        SalesPostYesNo: Codeunit "Sales-Post (Yes/No)";
    begin
        SalesPostYesNo.Preview(Rec);
    end;

    local procedure SetControlVisibility()
    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    begin
        JobQueueVisible := Rec."Job Queue Status" = Rec."Job Queue Status"::"Scheduled for Posting";
        HasIncomingDocument := Rec."Incoming Document Entry No." <> 0;
        SetExtDocNoMandatoryCondition();

        OpenApprovalEntriesExistForCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RecordId);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RecordId);
    end;
}
