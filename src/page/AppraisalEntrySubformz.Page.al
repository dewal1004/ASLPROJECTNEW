page 90096 "Appraisal Entry Subform.-z"
{
    AutoSplitKey = true;
    Caption = 'Appraisal Entry Subform';
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Sales Line";
    SourceTableView = WHERE("Document Type" = FILTER("Return Order"));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Type; Type)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        ShowShortcutDimCode(ShortcutDimCode);
                        NoOnAfterValidate;
                    end;
                }
                field("Document Type"; "Document Type")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Grade; Grade)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        QuantityOnAfterValidate;
                    end;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
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
        ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Type := xRec.Type;
        Clear(ShortcutDimCode);
    end;

    var
        SalesHeader: Record "Sales Header";
        ItemCrossReference: Record "Item Cross Reference";
        TransferExtendedText: Codeunit "Transfer Extended Text";
        ShortcutDimCode: array[8] of Code[20];

    ////[Scope('OnPrem')]
    procedure ApproveCalcInvDisc()
    begin
        CODEUNIT.Run(CODEUNIT::"Sales-Disc. (Yes/No)", Rec);
    end;

    ////[Scope('OnPrem')]
    procedure CalcInvDisc()
    begin
        CODEUNIT.Run(CODEUNIT::"Sales-Calc. Discount", Rec);
    end;

    ////[Scope('OnPrem')]
    procedure ExplodeBOM()
    begin
        CODEUNIT.Run(CODEUNIT::"Sales-Explode BOM", Rec);
    end;

    ////[Scope('OnPrem')]
    procedure OpenPurchOrderForm()
    var
        PurchHeader: Record "Purchase Header";
        PurchOrder: Page "Purchase Order";
    begin
        PurchHeader.SetRange("No.", "Purchase Order No.");
        PurchOrder.SetTableView(PurchHeader);
        PurchOrder.Editable := false;
        PurchOrder.Run;
    end;

    ////[Scope('OnPrem')]
    procedure InsertExtendedText(Unconditionally: Boolean)
    begin
        if TransferExtendedText.SalesCheckIfAnyExtText(Rec, Unconditionally) then begin
            CurrPage.SaveRecord;
            TransferExtendedText.InsertSalesExtText(Rec);
        end;
        if TransferExtendedText.MakeUpdate then
            UpdateForm(true);
    end;

    ////[Scope('OnPrem')]
    procedure ShowReservation()
    begin
        Find;
        Rec.ShowReservation;
    end;

    ////[Scope('OnPrem')]
    procedure ItemAvailability(AvailabilityType: Option Date,Variant,Location,Bin)
    begin
        //Rec.ItemAvailability(AvailabilityType);
    end;

    ////[Scope('OnPrem')]
    procedure ShowReservationEntries()
    begin
        Rec.ShowReservationEntries(true);
    end;

    ////[Scope('OnPrem')]
    procedure ShowDimensions()
    begin
        Rec.ShowDimensions;
    end;

    ////[Scope('OnPrem')]
    procedure ShowItemSub()
    begin
        Rec.ShowItemSub;
    end;

    ////[Scope('OnPrem')]
    procedure ShowNonstockItems()
    begin
        Rec.ShowNonstock;
    end;

    ////[Scope('OnPrem')]
    procedure OpenItemTrackingLines()
    begin
        Rec.OpenItemTrackingLines;
    end;

    ////[Scope('OnPrem')]
    procedure ShowTracking()
    var
        TrackingForm: Page "Order Tracking";
    begin
        TrackingForm.SetSalesLine(Rec);
        TrackingForm.RunModal;
    end;

    ////[Scope('OnPrem')]
    procedure ItemChargeAssgnt()
    begin
        Rec.ShowItemChargeAssgnt;
    end;

    ////[Scope('OnPrem')]
    procedure UpdateForm(SetSaveRecord: Boolean)
    begin
        CurrPage.Update(SetSaveRecord);
    end;

    local procedure NoOnAfterValidate()
    begin
        InsertExtendedText(false);
        if (Type = Type::"Charge (Item)") and ("No." <> xRec."No.") and
           (xRec."No." <> '')
        then
            CurrPage.SaveRecord;
    end;

    local procedure QuantityOnAfterValidate()
    begin
        if Reserve = Reserve::Always then begin
            CurrPage.SaveRecord;
            AutoReserve;
            CurrPage.Update(false);
        end;
    end;
}

