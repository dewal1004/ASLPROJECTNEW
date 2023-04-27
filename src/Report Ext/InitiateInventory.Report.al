report 50079 "Initiate Inventory"
{
    // {"Item Journal Batch"."Transfer From"
    // //
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/InitiateInventory.rdlc';

    Caption = 'Inventory Posting - Test';

    dataset
    {
        dataitem("Item Journal Batch"; "Item Journal Batch")
        {
            DataItemTableView = SORTING("Journal Template Name", Name);
            RequestFilterFields = "Journal Template Name", Name;
            column(Item_Journal_Batch_Journal_Template_Name; "Journal Template Name")
            {
            }
            column(FORMAT_TODAY_0_4__Control2; Format(Today, 0, 4))
            {
            }
            column(Item_Journal_Batch_Name; Name)
            {
            }
            dataitem("Item Journal Line"; "Item Journal Line")
            {
                DataItemLink = "Journal Template Name" = FIELD("Journal Template Name"), "Journal Batch Name" = FIELD(Name);
                DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Line No.");
                RequestFilterFields = "Posting Date";
                column(CurrReport_PAGENO; CurrReport.PageNo)
                {
                }
                column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                {
                }
                column(Item_Journal_Line__Journal_Template_Name_; "Journal Template Name")
                {
                }
                column(Item_Journal_Line__Journal_Batch_Name_; "Journal Batch Name")
                {
                }
                column(COMPANYNAME; CompanyName)
                {
                }
                column(CurrReport_PAGENO_Control5; CurrReport.PageNo)
                {
                }
                column(USERID; UserId)
                {
                }
                column(Item_Journal_Line__Journal_Template_Name__Control8; "Journal Template Name")
                {
                }
                column(Item_Journal_Line__Journal_Batch_Name__Control10; "Journal Batch Name")
                {
                }
                column(Item_Journal_Line__TABLECAPTION__________ItemJnlLineFilter; "Item Journal Line".TableCaption + ': ' + ItemJnlLineFilter)
                {
                }
                column(Item_Journal_Line__Posting_Date_; "Posting Date")
                {
                }
                column(Item_Journal_Line__Entry_Type_; "Entry Type")
                {
                }
                column(Item_Journal_Line__Item_No__; "Item No.")
                {
                }
                column(Item_Journal_Line_Description; Description)
                {
                }
                column(Item_Journal_Line_Quantity; Quantity)
                {
                }
                column(Item_Journal_Line__Invoiced_Quantity_; "Invoiced Quantity")
                {
                }
                column(Item_Journal_Line__Unit_Amount_; "Unit Amount")
                {
                }
                column(Item_Journal_Line_Amount; Amount)
                {
                }
                column(Item_Journal_Line__External_Document_No__; "External Document No.")
                {
                }
                column(EntryTypeDescription_1_; EntryTypeDescription[1])
                {
                }
                column(TotalAmounts_1_; TotalAmounts[1])
                {
                    AutoFormatType = 1;
                }
                column(EntryTypeDescription_2_; EntryTypeDescription[2])
                {
                }
                column(TotalAmounts_2_; TotalAmounts[2])
                {
                    AutoFormatType = 1;
                }
                column(EntryTypeDescription_3_; EntryTypeDescription[3])
                {
                }
                column(TotalAmounts_3_; TotalAmounts[3])
                {
                    AutoFormatType = 1;
                }
                column(EntryTypeDescription_4_; EntryTypeDescription[4])
                {
                }
                column(TotalAmounts_4_; TotalAmounts[4])
                {
                    AutoFormatType = 1;
                }
                column(EntryTypeDescription_5_; EntryTypeDescription[5])
                {
                }
                column(TotalAmounts_5_; TotalAmounts[5])
                {
                    AutoFormatType = 1;
                }
                column(TotalAmount; TotalAmount)
                {
                    AutoFormatType = 1;
                }
                column(Material_Request_NoteCaption; Material_Request_NoteCaptionLbl)
                {
                }
                column(Material_Issue_NoteCaption; Material_Issue_NoteCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(Item_Journal_Line__Journal_Template_Name_Caption; FieldCaption("Journal Template Name"))
                {
                }
                column(Item_Journal_Line__Journal_Batch_Name_Caption; FieldCaption("Journal Batch Name"))
                {
                }
                column(Inventory_Posting___TestCaption; Inventory_Posting___TestCaptionLbl)
                {
                }
                column(CurrReport_PAGENO_Control5Caption; CurrReport_PAGENO_Control5CaptionLbl)
                {
                }
                column(Item_Journal_Line__Journal_Template_Name__Control8Caption; FieldCaption("Journal Template Name"))
                {
                }
                column(Item_Journal_Line__Journal_Batch_Name__Control10Caption; FieldCaption("Journal Batch Name"))
                {
                }
                column(Issue_From__Caption; Issue_From__CaptionLbl)
                {
                }
                column(Issue_To__Caption; Issue_To__CaptionLbl)
                {
                }
                column(Item_Journal_Line__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(Item_Journal_Line__Entry_Type_Caption; Item_Journal_Line__Entry_Type_CaptionLbl)
                {
                }
                column(Item_Journal_Line__Item_No__Caption; FieldCaption("Item No."))
                {
                }
                column(Item_Journal_Line_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Item_Journal_Line_QuantityCaption; FieldCaption(Quantity))
                {
                }
                column(Item_Journal_Line__Invoiced_Quantity_Caption; FieldCaption("Invoiced Quantity"))
                {
                }
                column(Item_Journal_Line__Unit_Amount_Caption; FieldCaption("Unit Amount"))
                {
                }
                column(Item_Journal_Line_AmountCaption; FieldCaption(Amount))
                {
                }
                column(Expense_CentreCaption; Expense_CentreCaptionLbl)
                {
                }
                column(TotalAmountCaption; TotalAmountCaptionLbl)
                {
                }
                column(Requested_By_Caption; Requested_By_CaptionLbl)
                {
                }
                column(Approved_By_Caption; Approved_By_CaptionLbl)
                {
                }
                column(Approved_By_Caption_Control1000000013; Approved_By_Caption_Control1000000013Lbl)
                {
                }
                column(Issued_By_Caption; Issued_By_CaptionLbl)
                {
                }
                column(Received_By_Caption; Received_By_CaptionLbl)
                {
                }
                column(Item_Journal_Line_Line_No_; "Line No.")
                {
                }
                dataitem(Items; Item)
                {
                    RequestFilterFields = "Gen. Prod. Posting Group", "Inventory Posting Group";
                }
                dataitem(DimensionLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                    column(DimText; DimText)
                    {
                    }
                    column(DimText_Control31; DimText)
                    {
                    }
                    column(DimensionsCaption; DimensionsCaptionLbl)
                    {
                    }
                    column(DimensionLoop_Number; Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        if Number = 1 then begin
                            if not JnlLineDim.Find('-') then
                                CurrReport.Break;
                        end else
                            if not Continue then
                                CurrReport.Break;

                        Clear(DimText);
                        Continue := false;
                        repeat
                            OldDimText := DimText;
                            if DimText = '' then
                                DimText := StrSubstNo('%1 - %2', JnlLineDim."Dimension Code", JnlLineDim."Dimension Value Code")
                            else
                                DimText :=
                                  StrSubstNo(
                                    '%1; %2 - %3', DimText, JnlLineDim."Dimension Code", JnlLineDim."Dimension Value Code");
                            if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                DimText := OldDimText;
                                Continue := true;
                                exit;
                            end;
                        until (JnlLineDim.Next = 0);
                    end;

                    trigger OnPreDataItem()
                    begin
                        /*IF NOT ShowDim THEN
                          CurrReport.BREAK;
                        JnlLineDim.SETRANGE("Table ID",DATABASE::"Item Journal Line");
                        JnlLineDim.SETRANGE("Journal Template Name","Item Journal Line"."Journal Template Name");
                        JnlLineDim.SETRANGE("Journal Batch Name","Item Journal Line"."Journal Batch Name");
                        JnlLineDim.SETRANGE("Journal Line No.","Item Journal Line"."Line No.");
                         *///AAA

                    end;
                }
                dataitem(ErrorLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number);
                    column(ErrorText_Number_Caption; ErrorText_Number_CaptionLbl)
                    {
                    }
                    column(ErrorLoop_Number; Number)
                    {
                    }

                    trigger OnPostDataItem()
                    begin
                        //ErrorCounter := 0; //AA
                    end;

                    trigger OnPreDataItem()
                    begin
                        //SETRANGE(Number,1,ErrorCounter); //AA
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    ItemJnlLine2: Record "Item Journal Line";
                    ItemJnlLine3: Record "Item Journal Line";
                begin
                    /*NoOfEntries["Entry Type" + 1] := 1;
                    TotalAmounts["Entry Type" + 1] := Amount;
                    
                    IF "Entry Type" IN [0,2] THEN
                      TotalAmount := TotalAmount + Amount
                    ELSE
                      TotalAmount := TotalAmount - Amount;
                    
                    IF ("Item No." = '') AND (Quantity = 0) THEN
                      EXIT;
                    
                    ItemExists := FALSE;
                    QtyError := FALSE;
                    
                    MakeRecurringTexts("Item Journal Line");
                    
                    IF "Item No." = '' THEN
                      AddError(STRSUBSTNO(Text001,FIELDCAPTION("Item No.")))
                    ELSE
                      IF NOT Item.GET("Item No.") THEN
                        AddError(
                          STRSUBSTNO(
                            Text002,
                            Item.TABLECAPTION,"Item No."))
                      ELSE BEGIN
                        ItemExists := TRUE;
                        IF Item.Blocked THEN
                          AddError(
                            STRSUBSTNO(
                              Text003,
                              Item.FIELDCAPTION(Blocked),FALSE,Item.TABLECAPTION,"Item No."));
                         IF Item.Reserve = Item.Reserve::Always THEN BEGIN
                           CALCFIELDS("Reserved Quantity");
                           IF (Signed(Quantity) < 0) AND (ABS("Reserved Quantity") < ABS(Quantity)) THEN
                             AddError(
                               STRSUBSTNO(
                                 Text004,
                                  FIELDCAPTION("Reserved Quantity"),Signed(Quantity)));
                         END;
                      END;
                    
                    CheckRecurringLine("Item Journal Line");
                    
                    IF "Posting Date" = 0D THEN
                      AddError(STRSUBSTNO(Text001,FIELDCAPTION("Posting Date")))
                    ELSE BEGIN
                      IF "Posting Date" <> NORMALDATE("Posting Date") THEN
                        AddError(STRSUBSTNO(Text005,FIELDCAPTION("Posting Date")));
                    
                      IF "Item Journal Batch"."No. Series" <> '' THEN
                        IF NoSeries."Date Order" AND ("Posting Date" < LastPostingDate) THEN
                          AddError(Text006);
                        LastPostingDate := "Posting Date";
                    
                      IF (AllowPostingFrom = 0D) AND (AllowPostingTo = 0D) THEN BEGIN
                        IF USERID <> '' THEN
                          IF UserSetup.GET(USERID) THEN BEGIN
                            AllowPostingFrom := UserSetup."Allow Posting From";
                            AllowPostingTo := UserSetup."Allow Posting To";
                          END;
                        IF (AllowPostingFrom = 0D) AND (AllowPostingTo = 0D) THEN BEGIN
                          AllowPostingFrom := GLSetup."Allow Posting From";
                          AllowPostingTo := GLSetup."Allow Posting To";
                        END;
                        IF AllowPostingTo = 0D THEN
                          AllowPostingTo := 31129999D;
                      END;
                    
                      IF ("Posting Date" < AllowPostingFrom) OR ("Posting Date" > AllowPostingTo) THEN
                        AddError(
                          STRSUBSTNO(
                            Text007,FORMAT("Posting Date")));
                    END;
                    
                    IF ("Document Date" <> 0D) THEN
                      IF ("Document Date" <> NORMALDATE("Document Date")) THEN
                        AddError(STRSUBSTNO(Text005,FIELDCAPTION("Document Date")));
                    
                    IF "Gen. Prod. Posting Group" = '' THEN
                      AddError(STRSUBSTNO(Text001,FIELDCAPTION("Gen. Prod. Posting Group")))
                    ELSE
                      IF NOT GenPostingSetup.GET("Gen. Bus. Posting Group","Gen. Prod. Posting Group") THEN
                        AddError(
                          STRSUBSTNO(
                            Text008,GenPostingSetup.TABLECAPTION,
                            "Gen. Bus. Posting Group","Gen. Prod. Posting Group"));
                    
                    IF InvtSetup."Location Mandatory" THEN BEGIN
                      IF "Location Code"  = '' THEN
                        AddError(STRSUBSTNO(Text001,FIELDCAPTION("Location Code")));
                      IF "Entry Type" = "Entry Type"::Transfer THEN
                        IF "New Location Code"  = '' THEN
                          AddError(STRSUBSTNO(Text001,FIELDCAPTION("New Location Code")));
                    END;
                    
                    IF "Entry Type" IN ["Entry Type"::"Positive Adjmt.","Entry Type"::"Negative Adjmt."] THEN
                      IF "Discount Amount" <> 0 THEN
                        AddError(STRSUBSTNO(Text009,FIELDCAPTION("Discount Amount")));
                    
                    IF "Entry Type" = "Entry Type"::Transfer THEN BEGIN
                      IF Amount <> 0 THEN
                        AddError(
                          STRSUBSTNO(
                            Text011,
                            FIELDCAPTION(Amount),FIELDCAPTION("Entry Type"),"Entry Type"));
                      IF "Discount Amount" <> 0 THEN
                        AddError(
                          STRSUBSTNO(
                            Text011,
                            FIELDCAPTION("Discount Amount"),FIELDCAPTION("Entry Type"),"Entry Type"));
                      IF Quantity < 0 THEN
                        AddError(
                          STRSUBSTNO(
                            Text012,
                            FIELDCAPTION(Quantity),FIELDCAPTION("Entry Type"),"Entry Type"));
                      IF Quantity <> "Invoiced Quantity" THEN
                        AddError(
                          STRSUBSTNO(
                            Text013,
                            FIELDCAPTION("Invoiced Quantity"),FIELDCAPTION(Quantity),
                            FIELDCAPTION("Entry Type"),"Entry Type"));
                    END;
                    
                    IF NOT "Phys. Inventory" THEN BEGIN
                      IF "Qty. (Calculated)" <> 0 THEN
                        AddError(
                          STRSUBSTNO(
                            Text011,
                            FIELDCAPTION("Qty. (Calculated)"),FIELDCAPTION("Phys. Inventory"),"Phys. Inventory"));
                      IF "Qty. (Phys. Inventory)" <> 0 THEN
                        AddError(
                          STRSUBSTNO(
                            Text011,
                            FIELDCAPTION("Qty. (Phys. Inventory)"),FIELDCAPTION("Phys. Inventory"),"Phys. Inventory"));
                    END ELSE BEGIN
                      IF NOT ("Entry Type" IN ["Entry Type"::"Positive Adjmt.","Entry Type"::"Negative Adjmt."]) THEN BEGIN
                        ItemJnlLine2."Entry Type" := ItemJnlLine2."Entry Type"::"Positive Adjmt.";
                        ItemJnlLine3."Entry Type" := ItemJnlLine3."Entry Type"::"Negative Adjmt.";
                        AddError(
                          STRSUBSTNO(
                            Text014,
                            FIELDCAPTION("Entry Type"),
                            ItemJnlLine2."Entry Type",
                            ItemJnlLine3."Entry Type",
                            FIELDCAPTION("Phys. Inventory"),
                            TRUE));
                      END;
                      IF ("Entry Type" = "Entry Type"::"Positive Adjmt.") AND
                         ("Qty. (Phys. Inventory)" - "Qty. (Calculated)" <> Quantity)
                      THEN
                        AddError(
                          STRSUBSTNO(
                            Text015,
                            FIELDCAPTION(Quantity),
                            FIELDCAPTION("Qty. (Phys. Inventory)"),
                            FIELDCAPTION("Qty. (Calculated)"),
                            FIELDCAPTION("Entry Type"),
                            "Entry Type",
                            FIELDCAPTION("Phys. Inventory"),
                            TRUE));
                      IF ("Entry Type" = "Entry Type"::"Negative Adjmt.") AND
                         ("Qty. (Calculated)" - "Qty. (Phys. Inventory)" <> Quantity)
                      THEN
                        AddError(
                          STRSUBSTNO(
                            Text015,
                            FIELDCAPTION(Quantity),
                            FIELDCAPTION("Qty. (Calculated)"),
                            FIELDCAPTION("Qty. (Phys. Inventory)"),
                            FIELDCAPTION("Entry Type"),
                            "Entry Type",
                            FIELDCAPTION("Phys. Inventory"),
                            TRUE));
                    END;
                    
                    IF (Quantity = 0) AND ("Invoiced Quantity" <> 0) THEN BEGIN
                      IF "Item Shpt. Entry No." = 0 THEN
                        AddError(STRSUBSTNO(Text001,FIELDCAPTION("Item Shpt. Entry No.")));
                    END ELSE BEGIN
                      IF Quantity <> "Invoiced Quantity" THEN
                        IF ("Invoiced Quantity" <> 0) AND NOT QtyError THEN BEGIN
                          QtyError := TRUE;
                          AddError(STRSUBSTNO(Text009,FIELDCAPTION("Invoiced Quantity")));
                        END;
                      IF "Item Shpt. Entry No." <> 0 THEN
                        AddError(STRSUBSTNO(Text016,FIELDCAPTION("Item Shpt. Entry No.")));
                    END;
                    
                    IF "Item Journal Batch"."No. Series" <> '' THEN BEGIN
                      IF (LastDocNo <> '') THEN
                        IF ("Document No." <> LastDocNo) AND ("Document No." <> INCSTR(LastDocNo)) THEN
                          AddError(Text017);
                      LastDocNo := "Document No.";
                    END;
                    
                    JnlLineDim.SETRANGE("Table ID",DATABASE::"Item Journal Line");
                    JnlLineDim.SETRANGE("Journal Template Name","Journal Template Name");
                    JnlLineDim.SETRANGE("Journal Batch Name","Journal Batch Name");
                    JnlLineDim.SETRANGE("Journal Line No.","Line No.");
                    IF NOT DimMgt.CheckJnlLineDimComb(JnlLineDim) THEN
                      AddError(DimMgt.GetDimCombErr);
                    
                    TableID[1] := DATABASE::Item;
                    No[1] := "Item No.";
                    TableID[2] := DATABASE::"Salesperson/Purchaser";
                    No[2] := "Salespers./Purch. Code";
                    IF NOT DimMgt.CheckJnlLineDimValuePosting(JnlLineDim,TableID,No) THEN
                      AddError(DimMgt.GetDimValuePostingErr);
                     *///AAA

                end;

                trigger OnPreDataItem()
                begin
                    /*ItemJnlTemplate.GET("Item Journal Batch"."Journal Template Name");
                    IF ItemJnlTemplate.Recurring THEN BEGIN
                      IF GETFILTER("Posting Date") <> '' THEN
                        AddError(STRSUBSTNO(Text000,FIELDCAPTION("Posting Date")));
                      SETRANGE("Posting Date",0D,WORKDATE);
                      IF GETFILTER("Expiration Date") <> '' THEN
                        AddError(
                          STRSUBSTNO(
                          Text000,
                          FIELDCAPTION("Expiration Date")));
                      SETFILTER("Expiration Date",'%1 | %2..',0D,WORKDATE);
                    END;
                    CurrReport.CREATETOTALS(NoOfEntries,TotalAmounts);
                    IF "Item Journal Batch"."No. Series" <> '' THEN
                      NoSeries.GET("Item Journal Batch"."No. Series");
                    LastPostingDate := 0D;
                    LastDocNo := '';
                    *///AAA

                end;
            }

            trigger OnAfterGetRecord()
            begin
                //CurrReport.PAGENO := 1; //AAA
            end;

            trigger OnPreDataItem()
            begin
                /*FOR i := 1 TO ARRAYLEN(EntryTypeDescription) DO BEGIN
                  "Item Journal Line"."Entry Type" := i - 1;
                  EntryTypeDescription[i] := FORMAT("Item Journal Line"."Entry Type");
                END;
                *///AAA

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

    trigger OnPreReport()
    begin
        /*ItemJnlLineFilter := "Item Journal Line".GETFILTERS;
        GLSetup.GET;
        InvtSetup.GET;
        *///AAA

    end;

    var
        Text000: Label '%1 cannot be filtered when you post recurring journals.';
        Text001: Label '%1 must be specified.';
        Text002: Label '%1 %2 does not exist.';
        Text003: Label '%1 must be %2 for %3 %4.';
        Text004: Label '%1 must be %2.';
        Text005: Label '%1 must not be a closing date.';
        Text006: Label 'The lines are not listed according to Posting Date because they were not entered in that order.';
        Text007: Label '%1 is not within your allowed range of posting dates.';
        Text008: Label '%1 %2 %3 does not exist.';
        Text009: Label '%1 must be 0.';
        Text011: Label '%1 must be 0 when %2 is %3.';
        Text012: Label '%1 must not be negative when %2 is %3.';
        Text013: Label '%1 must have the same value as %2 when %3 is %4.';
        Text014: Label '%1 must be %2 or %3 when %4 is %5.';
        Text015: Label '%1 must equal %2 - %3 when %4 is %5 and %6 is %7.';
        Text016: Label '%1 cannot be specified.';
        Text017: Label 'There is a gap in the number series.';
        Text018: Label '<Month Text>';
        InvtSetup: Record "Inventory Setup";
        GLSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        AccountingPeriod: Record "Accounting Period";
        Item: Record Item;
        ItemJnlTemplate: Record "Item Journal Template";
        GenPostingSetup: Record "General Posting Setup";
        NoSeries: Record "No. Series";
        JnlLineDim: Record "Dimension Set Entry";
        DimMgt: Codeunit DimensionManagement;
        ItemJnlLineFilter: Text[250];
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        EntryTypeDescription: array[5] of Text[30];
        NoOfEntries: array[5] of Decimal;
        TotalAmounts: array[5] of Decimal;
        TotalAmount: Decimal;
        Day: Integer;
        Week: Integer;
        Month: Integer;
        MonthText: Text[30];
        ItemExists: Boolean;
        QtyError: Boolean;
        ErrorCounter: Integer;
        ErrorText: array[30] of Text[250];
        i: Integer;
        LastPostingDate: Date;
        LastDocNo: Code[20];
        TableID: array[10] of Integer;
        No: array[10] of Code[20];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowDim: Boolean;
        Continue: Boolean;
        Material_Request_NoteCaptionLbl: Label 'Material Request Note';
        Material_Issue_NoteCaptionLbl: Label 'Material Issue Note';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Inventory_Posting___TestCaptionLbl: Label 'Inventory Posting - Test';
        CurrReport_PAGENO_Control5CaptionLbl: Label 'Page';
        Issue_From__CaptionLbl: Label 'Issue From :';
        Issue_To__CaptionLbl: Label 'Issue To :';
        Item_Journal_Line__Entry_Type_CaptionLbl: Label 'Entry Type';
        Expense_CentreCaptionLbl: Label 'Expense Centre';
        TotalAmountCaptionLbl: Label 'Total';
        Requested_By_CaptionLbl: Label 'Requested By:';
        Approved_By_CaptionLbl: Label 'Approved By:';
        Approved_By_Caption_Control1000000013Lbl: Label 'Approved By:';
        Issued_By_CaptionLbl: Label 'Issued By:';
        Received_By_CaptionLbl: Label 'Received By:';
        DimensionsCaptionLbl: Label 'Dimensions';
        ErrorText_Number_CaptionLbl: Label 'Warning!';

    local procedure CheckRecurringLine(ItemJnlLine2: Record "Item Journal Line")
    begin
        with ItemJnlLine2 do begin
            if ItemJnlTemplate.Recurring then begin
                if "Recurring Method" = 0 then
                    AddError(StrSubstNo(Text001, FieldCaption("Recurring Method")));
                if Format("Recurring Frequency") = '' then
                    AddError(StrSubstNo(Text001, FieldCaption("Recurring Frequency")));
                if "Recurring Method" = "Recurring Method"::Variable then
                    if Quantity = 0 then
                        AddError(StrSubstNo(Text001, FieldCaption(Quantity)));
            end else begin
                if "Recurring Method" <> 0 then
                    AddError(StrSubstNo(Text016, FieldCaption("Recurring Method")));
                if Format("Recurring Frequency") <> '' then
                    AddError(StrSubstNo(Text016, FieldCaption("Recurring Frequency")));
            end;
        end;
    end;

    local procedure MakeRecurringTexts(var ItemJnlLine2: Record "Item Journal Line")
    begin
        with ItemJnlLine2 do begin
            if ("Posting Date" <> 0D) and ("Item No." <> '') and ("Recurring Method" <> 0) then begin
                Day := Date2DMY("Posting Date", 1);
                Week := Date2DWY("Posting Date", 2);
                Month := Date2DMY("Posting Date", 2);
                MonthText := Format("Posting Date", 0, Text018);
                AccountingPeriod.SetRange("Starting Date", 0D, "Posting Date");
                if not AccountingPeriod.Find('+') then
                    AccountingPeriod.Name := '';
                "Document No." :=
                  DelChr(
                    PadStr(
                      StrSubstNo("Document No.", Day, Week, Month, MonthText, AccountingPeriod.Name),
                      MaxStrLen("Document No.")),
                    '>');
                Description :=
                  DelChr(
                    PadStr(
                      StrSubstNo(Description, Day, Week, Month, MonthText, AccountingPeriod.Name),
                      MaxStrLen(Description)),
                    '>');
            end;
        end;
    end;

    local procedure AddError(Text: Text[250])
    begin
        ErrorCounter := ErrorCounter + 1;
        ErrorText[ErrorCounter] := Text;
    end;
}

