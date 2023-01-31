page 50155 "PO Subform Local - FIS"
{
    AutoSplitKey = true;
    Caption = 'Purchase Order Subform';
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Purchase Line";
    SourceTableView = WHERE("Document Type" = FILTER(Order));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(ProdCd; ProdCd)
                {
                    Visible = ProdCdVisible;
                    ApplicationArea = All;
                }
                field("Pack Size"; "Pack Size")
                {
                    Visible = "Pack SizeVisible";
                    ApplicationArea = All;
                }
                field(Brand; Brand)
                {
                    Visible = BrandVisible;
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        ShowShortcutDimCode(ShortcutDimCode);
                        NoOnAfterValidate;
                    end;
                }
                field("Reason Code"; "Reason Code")
                {
                    Visible = "Reason CodeVisible";
                    ApplicationArea = All;
                }
                field("External Document No."; "External Document No.")
                {
                    Visible = "External Document No.Visible";
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Cross-Reference No."; "Cross-Reference No.")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        if Type = Type::Item then begin
                            PurchHeader.Get("Document Type", "Document No.");
                            ItemCrossReference.Reset;
                            ItemCrossReference.SetCurrentKey("Cross-Reference Type", "Cross-Reference Type No.");
                            ItemCrossReference.SetRange("Cross-Reference Type", ItemCrossReference."Cross-Reference Type"::Vendor);
                            ItemCrossReference.SetRange("Cross-Reference Type No.", PurchHeader."Buy-from Vendor No.");
                            if PAGE.RunModal(PAGE::"Cross Reference List", ItemCrossReference) = ACTION::LookupOK then begin
                                Validate("Cross-Reference No.", ItemCrossReference."Cross-Reference No.");
                                InsertExtendedText(false);
                            end;
                        end;
                    end;
                }
                field("Variant Code"; "Variant Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Nonstock; Nonstock)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Duty Rate%"; "Duty Rate%")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Quantity Ordered"; "Quantity Ordered")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Control80; "Drop Shipment")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Reserved Quantity"; "Reserved Quantity")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit of Measure Code"; "Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Direct Unit Cost"; "Direct Unit Cost")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Indirect Cost %"; "Indirect Cost %")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit Cost (LCY)"; "Unit Cost (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit Price (LCY)"; "Unit Price (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Line Amount"; "Line Amount")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Line Discount %"; "Line Discount %")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Line Discount Amount"; "Line Discount Amount")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Allow Invoice Disc."; "Allow Invoice Disc.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Inv. Discount Amount"; "Inv. Discount Amount")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Receive"; "Qty. to Receive")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Quantity Received"; "Quantity Received")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Invoice"; "Qty. to Invoice")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Quantity Invoiced"; "Quantity Invoiced")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Allow Item Charge Assignment"; "Allow Item Charge Assignment")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Requested Receipt Date"; "Requested Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Promised Receipt Date"; "Promised Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Planned Receipt Date"; "Planned Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Expected Receipt Date"; "Expected Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Order Date"; "Order Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Job No."; "Job No.")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        ShowShortcutDimCode(ShortcutDimCode);
                    end;
                }
                field("Planning Flexibility"; "Planning Flexibility")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prod. Order Line No."; "Prod. Order Line No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prod. Order No."; "Prod. Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Operation No."; "Operation No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Work Center No."; "Work Center No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Finished; Finished)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Whse. Outstanding Qty. (Base)"; "Whse. Outstanding Qty. (Base)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Blanket Order No."; "Blanket Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Blanket Order Line No."; "Blanket Order Line No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Appl.-to Item Entry"; "Appl.-to Item Entry")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ShortcutDimCode[3]"; ShortcutDimCode[3])
                {
                    CaptionClass = '1,2,3';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupShortcutDimCode(3, ShortcutDimCode[3]);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateShortcutDimCode(3, ShortcutDimCode[3]);
                    end;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupShortcutDimCode(4, ShortcutDimCode[4]);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateShortcutDimCode(4, ShortcutDimCode[4]);
                    end;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    CaptionClass = '1,2,5';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupShortcutDimCode(5, ShortcutDimCode[5]);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateShortcutDimCode(5, ShortcutDimCode[5]);
                    end;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    CaptionClass = '1,2,6';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupShortcutDimCode(6, ShortcutDimCode[6]);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateShortcutDimCode(6, ShortcutDimCode[6]);
                    end;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    CaptionClass = '1,2,7';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupShortcutDimCode(7, ShortcutDimCode[7]);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateShortcutDimCode(7, ShortcutDimCode[7]);
                    end;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    CaptionClass = '1,2,8';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupShortcutDimCode(8, ShortcutDimCode[8]);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateShortcutDimCode(8, ShortcutDimCode[8]);
                    end;
                }
                field("Freight(LCY)"; "Freight(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ancillary(LCY)"; "Ancillary(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Duty(LCY)"; "Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Insurance(LCY)"; "Insurance(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Surcharge Duty(LCY)"; "Surcharge Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ecowas Duty(LCY)"; "Ecowas Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("CISS(LCY)"; "CISS(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Vat (LCY)"; "Vat (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Clearing(LCY)"; "Clearing(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Interest(LCY)"; "Interest(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Total Overhead(LCY)"; "Total Overhead(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("LandedAmount(LCY)"; "LandedAmount(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualFreight(LCY)"; "ActualFreight(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualAncillary(LCY)"; "ActualAncillary(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualDuty(LCY)"; "ActualDuty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualInsurance(LCY)"; "ActualInsurance(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualSurcharge Duty(LCY)"; "ActualSurcharge Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualEcowas Duty(LCY)"; "ActualEcowas Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualCISS(LCY)"; "ActualCISS(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualVat (LCY)"; "ActualVat (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualClearing(LCY)"; "ActualClearing(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualInterest(LCY)"; "ActualInterest(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualDuty Rate%"; "ActualDuty Rate%")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualTotal Overhead(LCY)"; "ActualTotal Overhead(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualLandedAmount(LCY)"; "ActualLandedAmount(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Original Purc. Order No."; "Original Purc. Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Line")
            {
                Caption = '&Line';
                group("Item Availability by")
                {
                    Caption = 'Item Availability by';
                    action(Period)
                    {
                        Caption = 'Period';
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                            /*CurrPage.PurchLines.FORM.*/
                            _ItemAvailability(0);

                        end;
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                            /*CurrPage.PurchLines.FORM.*/
                            _ItemAvailability(1);

                        end;
                    }
                    action(Location)
                    {
                        Caption = 'Location';
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                            /*CurrPage.PurchLines.FORM.*/
                            _ItemAvailability(2);

                        end;
                    }
                }
                action("Reservation Entries")
                {
                    Caption = 'Reservation Entries';
                    Image = ReservationLedger;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        _ShowReservationEntries;

                    end;
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        _ShowDimensions;

                    end;
                }
                action("Item Charge &Assignment")
                {
                    Caption = 'Item Charge &Assignment';
                    Ellipsis = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        ItemChargeAssgnt;

                    end;
                }
                action("Item &Tracking Lines")
                {
                    Caption = 'Item &Tracking Lines';
                    Image = ItemTrackingLines;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        _OpenItemTrackingLines;

                    end;
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                action("Calculate &Invoice Discount")
                {
                    Caption = 'Calculate &Invoice Discount';
                    Image = CalculateInvoiceDiscount;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        ApproveCalcInvDisc;

                    end;
                }
                action("E&xplode BOM")
                {
                    Caption = 'E&xplode BOM';
                    Image = ExplodeBOM;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        ExplodeBOM;

                    end;
                }
                action("Insert &Ext. Texts")
                {
                    Caption = 'Insert &Ext. Texts';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        _InsertExtendedText(true);

                    end;
                }
                action("Get &Phase/Task/Step")
                {
                    Caption = 'Get &Phase/Task/Step';
                    Ellipsis = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        GetPhaseTaskStep;

                    end;
                }
                group("Drop Shipment")
                {
                    Caption = 'Drop Shipment';
                    action("Sales &Order")
                    {
                        Caption = 'Sales &Order';
                        Image = Document;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                            /*CurrPage.PurchLines.FORM.*/
                            OpenSalesOrderForm;

                        end;
                    }
                }
                group("Special Order")
                {
                    Caption = 'Special Order';
                    action(Action1902819104)
                    {
                        Caption = 'Sales &Order';
                        Image = Document;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                            /*CurrPage.PurchLines.FORM.*/
                            OpenSpecOrderSalesOrderForm;

                        end;
                    }
                }
                action("&Reserve")
                {
                    Caption = '&Reserve';
                    Ellipsis = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        _ShowReservation;

                    end;
                }
                action("Order &Tracking")
                {
                    Caption = 'Order &Tracking';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50154. Unsupported part was commented. Please check it.
                        /*CurrPage.PurchLines.FORM.*/
                        ShowTracking;

                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        ShowShortcutDimCode(ShortcutDimCode);
        //UpdateEnabled();
        UpdateUsageForm();
    end;

    trigger OnInit()
    begin
        ProdCdVisible := true;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Type := xRec.Type;
        Clear(ShortcutDimCode);
        //AAA
        "Original Purc. Order No." := xRec."Original Purc. Order No.";
    end;

    var
        PurchHeader: Record "Purchase Header";
        ItemCrossReference: Record "Item Cross Reference";
        TransferExtendedText: Codeunit "Transfer Extended Text";
        ShortcutDimCode: array[8] of Code[20];
        "------": Char;
        InvtSetUp: Record "Inventory Setup";
        [InDataSet]
        "Reason CodeVisible": Boolean;
        [InDataSet]
        "External Document No.Visible": Boolean;
        [InDataSet]
        ProdCdVisible: Boolean;
        [InDataSet]
        "Pack SizeVisible": Boolean;
        [InDataSet]
        BrandVisible: Boolean;

    [Scope('Onprem')]
    procedure ApproveCalcInvDisc()
    begin
        CODEUNIT.Run(CODEUNIT::"Purch.-Disc. (Yes/No)", Rec);
    end;

    [Scope('Onprem')]
    procedure CalcInvDisc()
    begin
        CODEUNIT.Run(CODEUNIT::"Purch.-Calc.Discount", Rec);
    end;

    [Scope('Onprem')]
    procedure ExplodeBOM()
    begin
        CODEUNIT.Run(CODEUNIT::"Purch.-Explode BOM", Rec);
    end;

    [Scope('Onprem')]
    procedure GetPhaseTaskStep()
    begin
        //*** CODEUNIT.Run(CODEUNIT::Codeunit75, Rec);
    end;

    [Scope('Onprem')]
    procedure OpenSalesOrderForm()
    var
        SalesHeader: Record "Sales Header";
        SalesOrder: Page "Sales Order";
    begin
        SalesHeader.SetRange("No.", "Sales Order No.");
        SalesOrder.SetTableView(SalesHeader);
        SalesOrder.Editable := false;
        SalesOrder.Run;
    end;

    [Scope('Onprem')]
    procedure _InsertExtendedText(Unconditionally: Boolean)
    begin
        if TransferExtendedText.PurchCheckIfAnyExtText(Rec, Unconditionally) then begin
            CurrPage.SaveRecord;
            TransferExtendedText.InsertPurchExtText(Rec);
        end;
        if TransferExtendedText.MakeUpdate then
            UpdateForm(true);
    end;

    [Scope('Onprem')]
    procedure InsertExtendedText(Unconditionally: Boolean)
    begin
        if TransferExtendedText.PurchCheckIfAnyExtText(Rec, Unconditionally) then begin
            CurrPage.SaveRecord;
            TransferExtendedText.InsertPurchExtText(Rec);
        end;
        if TransferExtendedText.MakeUpdate then
            UpdateForm(true);
    end;

    [Scope('Onprem')]
    procedure _ShowReservation()
    begin
        Find;
        Rec.ShowReservation;
    end;

    [Scope('Onprem')]
    procedure ASLShowReservation()
    begin
        Find;
        Rec.ShowReservation;
    end;

    [Scope('Onprem')]
    procedure _ItemAvailability(AvailabilityType: Option Date,Variant,Location,Bin)
    begin
        //Rec.ItemAvailability(AvailabilityType);
    end;

    [Scope('onprem')]
    procedure ItemAvailability(AvailabilityType: Option Date,Variant,Location,Bin)
    begin
        //Rec.ItemAvailability(AvailabilityType);
    end;

    [Scope('Onprem')]
    procedure _ShowReservationEntries()
    begin
        Rec.ShowReservationEntries(true);
    end;

    [Scope('Onprem')]
    procedure ShowReservationEntries()
    begin
        Rec.ShowReservationEntries(true);
    end;

    [Scope('Onprem')]
    procedure ShowTracking()
    var
        TrackingForm: Page "Order Tracking";
    begin
        TrackingForm.SetPurchLine(Rec);
        TrackingForm.RunModal;
    end;

    [Scope('Onprem')]
    procedure _ShowDimensions()
    begin
        Rec.ShowDimensions;
    end;

    [Scope('Onprem')]
    procedure ShowDimensions()
    begin
        Rec.ShowDimensions;
    end;

    [Scope('Onprem')]
    procedure ItemChargeAssgnt()
    begin
        Rec.ShowItemChargeAssgnt;
    end;

    [Scope('Onprem')]
    procedure _OpenItemTrackingLines()
    begin
        Rec.OpenItemTrackingLines;
    end;

    [Scope('Onprem')]
    procedure OpenItemTrackingLines()
    begin
        Rec.OpenItemTrackingLines;
    end;

    [Scope('Onprem')]
    procedure OpenSpecOrderSalesOrderForm()
    var
        SalesHeader: Record "Sales Header";
        SalesOrder: Page "Sales Order";
    begin
        SalesHeader.SetRange("No.", "Special Order Sales No.");
        SalesOrder.SetTableView(SalesHeader);
        SalesOrder.Editable := false;
        SalesOrder.Run;
    end;

    [Scope('Onprem')]
    procedure UpdateForm(SetSaveRecord: Boolean)
    begin
        CurrPage.Update(SetSaveRecord);
        UpdateEnabled();
    end;

    [Scope('Onprem')]
    procedure UpdateEnabled()
    begin
        /*IF PurchHeader.GET("Document Type","Document No.") THEN;
        IF PurchHeader."Currency Code"='' THEN
        BEGIN
          CurrForm."Ancillary(LCY)".VISIBLE(FALSE);
          CurrForm."Ancillary(LCY)".VISIBLE(FALSE);
          CurrForm."Duty(LCY)".VISIBLE(FALSE);
          CurrForm."Insurance(LCY)".VISIBLE(FALSE);
          CurrForm."Surcharge Duty(LCY)".VISIBLE(FALSE);
          CurrForm."Ecowas Duty(LCY)".VISIBLE(FALSE);
          CurrForm."CISS(LCY)".VISIBLE(FALSE);
          CurrForm."Vat (LCY)".VISIBLE(FALSE);
          CurrForm."Clearing(LCY)".VISIBLE(FALSE);
          CurrForm."Interest(LCY)".VISIBLE(FALSE);
          CurrForm."Total Overhead(LCY)".VISIBLE(FALSE);
          CurrForm."LandedAmount(LCY)".VISIBLE(FALSE);
          CurrForm."ActualFreight(LCY)".VISIBLE(FALSE);
          CurrForm."ActualAncillary(LCY)".VISIBLE(FALSE);
          CurrForm."ActualDuty(LCY)".VISIBLE(FALSE);
          CurrForm."ActualInsurance(LCY)".VISIBLE(FALSE);
          CurrForm."ActualSurcharge Duty(LCY)".VISIBLE(FALSE);
          CurrForm."ActualEcowas Duty(LCY)".VISIBLE(FALSE);
          CurrForm."ActualCISS(LCY)".VISIBLE(FALSE);
          CurrForm."ActualVat (LCY)".VISIBLE(FALSE);
          CurrForm."ActualClearing(LCY)".VISIBLE(FALSE);
          CurrForm."ActualInterest(LCY)".VISIBLE(FALSE);
          CurrForm."ActualDuty Rate%".VISIBLE(FALSE);
          CurrForm."ActualTotal Overhead(LCY)".VISIBLE(FALSE);
          CurrForm."ActualLandedAmount(LCY)".VISIBLE(FALSE);
          CurrForm."Original Purc. Order No.".VISIBLE(FALSE);
        END
        ELSE
        BEGIN
          CurrForm."Ancillary(LCY)".VISIBLE(TRUE);
          CurrForm."Ancillary(LCY)".VISIBLE(TRUE);
          CurrForm."Duty(LCY)".VISIBLE(TRUE);
          CurrForm."Insurance(LCY)".VISIBLE(TRUE);
          CurrForm."Surcharge Duty(LCY)".VISIBLE(TRUE);
          CurrForm."Ecowas Duty(LCY)".VISIBLE(TRUE);
          CurrForm."CISS(LCY)".VISIBLE(TRUE);
          CurrForm."Vat (LCY)".VISIBLE(TRUE);
          CurrForm."Clearing(LCY)".VISIBLE(TRUE);
          CurrForm."Interest(LCY)".VISIBLE(TRUE);
          CurrForm."Total Overhead(LCY)".VISIBLE(TRUE);
          CurrForm."LandedAmount(LCY)".VISIBLE(TRUE);
          CurrForm."ActualFreight(LCY)".VISIBLE(TRUE);
          CurrForm."ActualAncillary(LCY)".VISIBLE(TRUE);
          CurrForm."ActualDuty(LCY)".VISIBLE(TRUE);
          CurrForm."ActualInsurance(LCY)".VISIBLE(TRUE);
          CurrForm."ActualSurcharge Duty(LCY)".VISIBLE(TRUE);
          CurrForm."ActualEcowas Duty(LCY)".VISIBLE(TRUE);
          CurrForm."ActualCISS(LCY)".VISIBLE(TRUE);
          CurrForm."ActualVat (LCY)".VISIBLE(TRUE);
          CurrForm."ActualClearing(LCY)".VISIBLE(TRUE);
          CurrForm."ActualInterest(LCY)".VISIBLE(TRUE);
          CurrForm."ActualDuty Rate%".VISIBLE(TRUE);
          CurrForm."ActualTotal Overhead(LCY)".VISIBLE(TRUE);
          CurrForm."ActualLandedAmount(LCY)".VISIBLE(TRUE);
          CurrForm."Original Purc. Order No.".VISIBLE(TRUE);
        END;
        */

    end;

    [Scope('Onprem')]
    procedure UpdateUsageForm()
    begin
        if PurchHeader.Get("Document Type", "Document No.") then
            if PurchHeader."Reason Code" <> '' then begin
                "Reason CodeVisible" := true;
                "External Document No.Visible" := true;
                ProdCdVisible := false;
                "Pack SizeVisible" := false;
                BrandVisible := false;
            end
            else begin
                "Reason CodeVisible" := false;
                "External Document No.Visible" := false;
            end;

        InvtSetUp.Get;
        if PurchHeader."Location Code" = InvtSetUp."Default Cold Room" then begin
            ProdCdVisible := true;
            "Pack SizeVisible" := true;
            BrandVisible := true;
            "Reason CodeVisible" := false;
            "External Document No.Visible" := false;
        end
        else begin
            ProdCdVisible := false;
            "Pack SizeVisible" := false;
            BrandVisible := false;
        end
    end;

    local procedure NoOnAfterValidate()
    begin
        InsertExtendedText(false);
        if (Type = Type::"Charge (Item)") and ("No." <> xRec."No.") and
           (xRec."No." <> '')
        then
            CurrPage.SaveRecord;
        if Type = Type::Item then
            Validate("Indirect Cost %", -100);
    end;
}

