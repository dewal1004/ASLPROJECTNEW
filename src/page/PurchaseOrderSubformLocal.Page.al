page 50096 "Purchase Order Subform Local"
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
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(ProdCd; Rec.ProdCd)
                {
                    Visible = ProdCdVisible;
                    ApplicationArea = All;
                }
                field("Pack Size"; Rec."Pack Size")
                {
                    Visible = "Pack SizeVisible";
                    ApplicationArea = All;
                }
                field(Brand; Rec.Brand)
                {
                    Visible = BrandVisible;
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                        NoOnAfterValidate;
                    end;
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    Visible = "Reason CodeVisible";
                    ApplicationArea = All;
                }
                field("External Document No."; Rec."External Document No.")
                {
                    Visible = "External Document No.Visible";
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Cross-Reference No."; Rec."Cross-Reference No.")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        if Rec.Type = Rec.Type::Item then begin
                            PurchHeader.Get(Rec."Document Type", Rec."Document No.");
                            ItemCrossReference.Reset;
                            ItemCrossReference.SetCurrentKey("Cross-Reference Type", "Cross-Reference Type No.");
                            ItemCrossReference.SetRange("Cross-Reference Type", ItemCrossReference."Cross-Reference Type"::Vendor);
                            ItemCrossReference.SetRange("Cross-Reference Type No.", PurchHeader."Buy-from Vendor No.");
                            if PAGE.RunModal(PAGE::"Cross Reference List", ItemCrossReference) = ACTION::LookupOK then begin
                                Rec.Validate("Cross-Reference No.", ItemCrossReference."Cross-Reference No.");
                                InsertExtendedText(false);
                            end;
                        end;
                    end;
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Nonstock; Rec.Nonstock)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Duty Rate%"; Rec."Duty Rate%")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Quantity Ordered"; Rec."Quantity Ordered")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Drop Shipment"; Rec."Drop Shipment")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Reserved Quantity"; Rec."Reserved Quantity")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Indirect Cost %"; Rec."Indirect Cost %")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Inv. Discount Amount"; Rec."Inv. Discount Amount")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Receive"; Rec."Qty. to Receive")
                {
                    BlankZero = true;
                    ApplicationArea = All;
                }
                field("Quantity Received"; Rec."Quantity Received")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Invoice"; Rec."Qty. to Invoice")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Allow Item Charge Assignment"; Rec."Allow Item Charge Assignment")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Planned Receipt Date"; Rec."Planned Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Job No."; Rec."Job No.")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;
                }
                field("Planning Flexibility"; Rec."Planning Flexibility")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prod. Order Line No."; Rec."Prod. Order Line No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prod. Order No."; Rec."Prod. Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Operation No."; Rec."Operation No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Work Center No."; Rec."Work Center No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Finished; Rec.Finished)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Whse. Outstanding Qty. (Base)"; Rec."Whse. Outstanding Qty. (Base)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Blanket Order No."; Rec."Blanket Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Blanket Order Line No."; Rec."Blanket Order Line No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Appl.-to Item Entry"; Rec."Appl.-to Item Entry")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
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
                        Rec.LookupShortcutDimCode(3, ShortcutDimCode[3]);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(3, ShortcutDimCode[3]);
                    end;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(4, ShortcutDimCode[4]);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(4, ShortcutDimCode[4]);
                    end;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    CaptionClass = '1,2,5';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(5, ShortcutDimCode[5]);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(5, ShortcutDimCode[5]);
                    end;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    CaptionClass = '1,2,6';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(6, ShortcutDimCode[6]);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(6, ShortcutDimCode[6]);
                    end;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    CaptionClass = '1,2,7';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(7, ShortcutDimCode[7]);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(7, ShortcutDimCode[7]);
                    end;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    CaptionClass = '1,2,8';
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(8, ShortcutDimCode[8]);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(8, ShortcutDimCode[8]);
                    end;
                }
                field("Freight(LCY)"; Rec."Freight(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ancillary(LCY)"; Rec."Ancillary(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Duty(LCY)"; Rec."Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Insurance(LCY)"; Rec."Insurance(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Surcharge Duty(LCY)"; Rec."Surcharge Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ecowas Duty(LCY)"; Rec."Ecowas Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("CISS(LCY)"; Rec."CISS(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Vat (LCY)"; Rec."Vat (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Clearing(LCY)"; Rec."Clearing(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Interest(LCY)"; Rec."Interest(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Total Overhead(LCY)"; Rec."Total Overhead(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("LandedAmount(LCY)"; Rec."LandedAmount(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualFreight(LCY)"; Rec."ActualFreight(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualAncillary(LCY)"; Rec."ActualAncillary(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualDuty(LCY)"; Rec."ActualDuty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualInsurance(LCY)"; Rec."ActualInsurance(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualSurcharge Duty(LCY)"; Rec."ActualSurcharge Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualEcowas Duty(LCY)"; Rec."ActualEcowas Duty(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualCISS(LCY)"; Rec."ActualCISS(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualVat (LCY)"; Rec."ActualVat (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualClearing(LCY)"; Rec."ActualClearing(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualInterest(LCY)"; Rec."ActualInterest(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualDuty Rate%"; Rec."ActualDuty Rate%")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualTotal Overhead(LCY)"; Rec."ActualTotal Overhead(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ActualLandedAmount(LCY)"; Rec."ActualLandedAmount(LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Original Purc. Order No."; Rec."Original Purc. Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
        //UpdateEnabled();
        UpdateUsageForm();
    end;

    trigger OnInit()
    begin
        ProdCdVisible := true;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec.Type := xRec.Type;
        Clear(ShortcutDimCode);
        //AAA
        Rec."Original Purc. Order No." := xRec."Original Purc. Order No.";
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
        //***  CODEUNIT.Run(CODEUNIT::Codeunit75, Rec);
    end;

    [Scope('Onprem')]
    procedure OpenSalesOrderForm()
    var
        SalesHeader: Record "Sales Header";
        SalesOrder: Page "Sales Order";
    begin
        SalesHeader.SetRange("No.", Rec."Sales Order No.");
        SalesOrder.SetTableView(SalesHeader);
        SalesOrder.Editable := false;
        SalesOrder.Run;
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
    procedure ShowReservation()
    begin
        Rec.Find;
        Rec.ShowReservation;
    end;

    [Scope('Onprem')]
    procedure ItemAvailability(AvailabilityType: Option Date,Variant,Location,Bin)
    begin
        //Rec.ItemAvailability(AvailabilityType);
    end;

    [Scope('Onprem')]
    procedure ShowReservationEntries()
    begin
        Rec.ShowReservationEntries(true);
    end;

    [Scope('Onprem')]
    procedure ShowTracking()
    var
        Trackingpage: Page "Order Tracking";
    begin
        Trackingpage.SetPurchLine(Rec);
        Trackingpage.RunModal;
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
        SalesHeader.SetRange("No.", Rec."Special Order Sales No.");
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
        if PurchHeader.Get(Rec."Document Type", Rec."Document No.") then
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
        if (Rec.Type = Rec.Type::"Charge (Item)") and (Rec."No." <> xRec."No.") and
           (xRec."No." <> '')
        then
            CurrPage.SaveRecord;
    end;
}

