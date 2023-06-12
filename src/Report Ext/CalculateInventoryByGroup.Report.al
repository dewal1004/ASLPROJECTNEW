report 50084 "Calculate Inventory By Group"
{
    ProcessingOnly = true;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Global Dimension 1 Filter", "Global Dimension 2 Filter", "Location Filter", "Bin Filter";
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number);

                trigger OnAfterGetRecord()
                begin
                    //
                    ItemLedgEntry.SetRange("Item No.", Item."No.");
                    ItemLedgEntry.SetRange("Variant Code", ItemLedgEntry."Variant Code");
                    ItemLedgEntry.SetRange("Drop Shipment", ItemLedgEntry."Drop Shipment");
                    if ByDept then
                        ItemLedgEntry.SetRange("Global Dimension 1 Code", ItemLedgEntry."Global Dimension 1 Code");
                    if ByProj then
                        ItemLedgEntry.SetRange("Global Dimension 2 Code", ItemLedgEntry."Global Dimension 2 Code");
                    if ByLocation then
                        ItemLedgEntry.SetRange("Location Code", ItemLedgEntry."Location Code");
                    if ByBin then
                        //ItemLedgEntry.SETRANGE("Bin Code",ItemLedgEntry."Bin Code");

                        ItemLedgEntry.CalcSums(Quantity);

                    if (ItemLedgEntry.Quantity <> 0) or ZeroQty then begin
                        QuantityOnHandBuffer.Reset;
                        QuantityOnHandBuffer.SetRange("Item No.", ItemLedgEntry."Item No.");
                        QuantityOnHandBuffer.SetRange("Variant Code", ItemLedgEntry."Variant Code");
                        /*IF ByDept THEN
                          SETRANGE("Department Code",ItemLedgEntry."Global Dimension 1 Code");
                        IF ByProj THEN
                          SETRANGE("Solution Code",ItemLedgEntry."Global Dimension 2 Code");
                        */
                        if ByLocation then
                            QuantityOnHandBuffer.SetRange("Location Code", ItemLedgEntry."Location Code");
                        //IF ByBin THEN
                        //SETRANGE("Bin Code",ItemLedgEntry."Bin Code");
                        if QuantityOnHandBuffer.Find('-') then begin
                            QuantityOnHandBuffer.Quantity := QuantityOnHandBuffer.Quantity + ItemLedgEntry.Quantity;
                            QuantityOnHandBuffer.Modify;
                        end else begin
                            QuantityOnHandBuffer."Item No." := ItemLedgEntry."Item No.";
                            QuantityOnHandBuffer."Variant Code" := ItemLedgEntry."Variant Code";
                            /* IF ByDept THEN
                               "Department Code" := ItemLedgEntry."Global Dimension 1 Code";
                              IF ByProj THEN
                               "Solution Code" := ItemLedgEntry."Global Dimension 2 Code";
                             */
                            if ByLocation then
                                QuantityOnHandBuffer."Location Code" := ItemLedgEntry."Location Code";
                            //IF ByBin THEN
                            //"Bin Code" := ItemLedgEntry."Bin Code";
                            QuantityOnHandBuffer.Quantity := ItemLedgEntry.Quantity;
                            QuantityOnHandBuffer.Insert;
                        end;
                    end;
                    ItemLedgEntry.Find('+');

                    Step := 0;
                    if ByBin then begin
                        //Item.COPYFILTER("Bin Filter",ItemLedgEntry."Bin Code");
                        Step := ItemLedgEntry.Next;
                    end;
                    if (Step = 0) and ByLocation then begin
                        Item.CopyFilter("Location Filter", ItemLedgEntry."Location Code");
                        Step := ItemLedgEntry.Next;
                    end;
                    if (Step = 0) and ByProj then begin
                        Item.CopyFilter("Global Dimension 2 Filter", ItemLedgEntry."Global Dimension 2 Code");
                        Step := ItemLedgEntry.Next;
                    end;
                    if (Step = 0) and ByDept then begin
                        Item.CopyFilter("Global Dimension 1 Filter", ItemLedgEntry."Global Dimension 1 Code");
                        Step := ItemLedgEntry.Next;
                    end;
                    if Step = 0 then begin
                        ItemLedgEntry.SetRange("Drop Shipment");
                        Step := ItemLedgEntry.Next;
                    end;
                    if Step = 0 then begin
                        Item.CopyFilter("Variant Filter", ItemLedgEntry."Variant Code");
                        Step := ItemLedgEntry.Next;
                    end;

                    if Step = 0 then
                        CurrReport.Break;

                end;

                trigger OnPreDataItem()
                begin
                    //AA
                    ItemLedgEntry.Reset;
                    if ByDept or ByProj then
                        ItemLedgEntry.SetCurrentKey(
                          "Item No.", "Variant Code", "Drop Shipment", "Global Dimension 1 Code", "Global Dimension 2 Code", "Location Code")//"Bin Code" )
                    else
                        ItemLedgEntry.SetCurrentKey("Item No.", "Variant Code", "Drop Shipment", "Location Code");//"Bin Code");
                    ItemLedgEntry.SetRange("Item No.", Item."No.");
                    Item.CopyFilter("Variant Filter", ItemLedgEntry."Variant Code");
                    Item.CopyFilter("Global Dimension 1 Filter", ItemLedgEntry."Global Dimension 1 Code");
                    Item.CopyFilter("Global Dimension 2 Filter", ItemLedgEntry."Global Dimension 2 Code");
                    Item.CopyFilter("Location Filter", ItemLedgEntry."Location Code");
                    //Item.COPYFILTER("Bin Filter",ItemLedgEntry."Bin Code");
                    if not ItemLedgEntry.Find('-') then
                        CurrReport.Break;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Window.Update;
            end;

            trigger OnPostDataItem()
            begin
                QuantityOnHandBuffer.Reset;
                if QuantityOnHandBuffer.Find('-') then begin
                    repeat
                        InsertItemJnlLine(QuantityOnHandBuffer."Item No.", QuantityOnHandBuffer."Variant Code", A1, A2, QuantityOnHandBuffer."Location Code", QuantityOnHandBuffer."Bin Code", QuantityOnHandBuffer.Quantity);
                    until QuantityOnHandBuffer.Next = 0;
                    QuantityOnHandBuffer.DeleteAll;
                end;
            end;

            trigger OnPreDataItem()
            var
                ItemJnlTemplate: Record "Item Journal Template";
                ItemJnlBatch: Record "Item Journal Batch";
            begin
                if PostingDate = 0D then
                    // ERROR('Please enter the posting date.');

                    ItemJnlTemplate.Get(ItemJnlLine."Journal Template Name");
                ItemJnlBatch.Get(ItemJnlLine."Journal Template Name", ItemJnlLine."Journal Batch Name");
                if NextDocNo = '' then begin
                    if ItemJnlBatch."No. Series" <> '' then begin
                        ItemJnlLine.SetRange("Journal Template Name", ItemJnlLine."Journal Template Name");
                        ItemJnlLine.SetRange("Journal Batch Name", ItemJnlLine."Journal Batch Name");
                        if not ItemJnlLine.Find('-') then
                            NextDocNo := NoSeriesMgt.GetNextNo(ItemJnlBatch."No. Series", PostingDate, false);
                        ItemJnlLine.Init;
                    end;
                    if NextDocNo = '' then
                        Error('Please enter the document no.');
                end;

                NextLineNo := 0;

                Window.Open('Processing items    #1##########', Item."No.");

                QuantityOnHandBuffer.Reset;
                QuantityOnHandBuffer.DeleteAll;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        ItemJnlBatch: Record "Item Journal Batch";
        ItemJnlLine: Record "Item Journal Line";
        ItemLedgEntry: Record "Item Ledger Entry";
        QuantityOnHandBuffer: Record "Inventory Buffer" temporary;
        SourceCodeSetup: Record "Source Code Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        Window: Dialog;
        PostingDate: Date;
        NextDocNo: Code[20];
        Step: Integer;
        NextLineNo: Integer;
        ByDept: Boolean;
        ByProj: Boolean;
        ByLocation: Boolean;
        ByBin: Boolean;
        ZeroQty: Boolean;
        busgrp: Code[10];
        A1: Code[10];
        A2: Code[10];

    [Scope('OnPrem')]
    procedure SetItemJnlLine(var NewItemJnlLine: Record "Item Journal Line")
    begin
        ItemJnlLine := NewItemJnlLine;
    end;

    local procedure ValidatePostingDate()
    begin
        ItemJnlBatch.Get(ItemJnlLine."Journal Template Name", ItemJnlLine."Journal Batch Name");
        if ItemJnlBatch."No. Series" = '' then
            NextDocNo := ''
        else begin
            NextDocNo := NoSeriesMgt.GetNextNo(ItemJnlBatch."No. Series", PostingDate, false);
            Clear(NoSeriesMgt);
        end;
    end;

    [Scope('OnPrem')]
    procedure InsertItemJnlLine(var ItemNo: Code[20]; var VariantCode2: Code[10]; var DeptCode2: Code[10]; var ProjCode2: Code[10]; var LocationCode2: Code[10]; var BinCode2: Code[10]; var Quantity2: Decimal)
    var
        ItemLedgEntry: Record "Item Ledger Entry";
    begin
        if NextLineNo = 0 then begin
            ItemJnlLine.LockTable;
            ItemJnlLine.SetRange("Journal Template Name", ItemJnlLine."Journal Template Name");
            ItemJnlLine.SetRange("Journal Batch Name", ItemJnlLine."Journal Batch Name");
            if ItemJnlLine.Find('+') then
                NextLineNo := ItemJnlLine."Line No.";

            SourceCodeSetup.Get;
        end;
        NextLineNo := NextLineNo + 10000;

        if (Quantity2 <> 0) or ZeroQty then begin
            ItemJnlLine.Init;
            ItemJnlLine."Line No." := NextLineNo;
            ItemJnlLine.Validate("Posting Date", PostingDate);
            ItemJnlLine.Validate("Entry Type", ItemJnlLine."Entry Type"::"Positive Adjmt.");
            ItemJnlLine.Validate("Document No.", NextDocNo);
            ItemJnlLine.Validate("Item No.", ItemNo);
            ItemJnlLine.Validate("Variant Code", VariantCode2);
            //VALIDATE("Shortcut Dimension 1 Code",'ADM');
            //VALIDATE("Shortcut Dimension 2 Code",'LAG');
            ItemJnlLine.Validate("Location Code", LocationCode2);
            ItemJnlLine.Validate("Bin Code", BinCode2);
            //VALIDATE("Gen. Bus. Posting Group",'ADJ');
            ItemJnlLine.Validate("Source Code", SourceCodeSetup."Phys. Inventory Journal");
            ItemJnlLine."Qty. (Phys. Inventory)" := Quantity2;
            ItemJnlLine."Phys. Inventory" := true;
            ItemJnlLine.Validate("Qty. (Calculated)", Quantity2);
            ItemJnlLine.Validate("Unit Amount", 0);

            ItemLedgEntry.Reset;
            ItemLedgEntry.SetCurrentKey("Item No.");
            ItemLedgEntry.SetRange("Item No.", Item."No.");
            if ItemLedgEntry.Find('+') then
                ItemJnlLine."Last Item Ledger Entry No." := ItemLedgEntry."Entry No."
            else
                ItemJnlLine."Last Item Ledger Entry No." := 0;

            ItemJnlLine.Insert(true);
        end;
    end;

    [Scope('OnPrem')]
    procedure InitializeRequest(NewPostingDate: Date; DocNo: Code[20]; ItemsNotOnInvt: Boolean; ByDept2: Boolean; ByProj2: Boolean; ByLocation2: Boolean; ByBin2: Boolean)
    begin
        PostingDate := NewPostingDate;
        NextDocNo := DocNo;
        ZeroQty := ItemsNotOnInvt;
        ByDept := ByDept2;
        ByProj := ByProj2;
        ByLocation := ByLocation2;
        ByBin := ByBin2;
    end;
}

