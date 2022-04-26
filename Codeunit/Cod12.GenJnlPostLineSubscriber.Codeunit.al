codeunit 50002 GenJnlPostLineSubscriber
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeInitAmounts', '', true, true)]
    local procedure OnBeforeInitAmountGenJnlPostLine(var GenJnlLine: Record "Gen. Journal Line"; var Currency: Record Currency)
    begin
      with GenJnlLine do begin
            if "Currency Code" = '' then begin
              if "Deferral Code" <> '' then
                "VAT Base Amount (LCY)" := "xVAT Base Amount (LCY)";   //Revisit
            end;
      end;
      
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnPostCustOnAfterTempDtldCVLedgEntryBufCopyFromGenJnlLine', '', true, true)]
    local procedure OnPostCustGenJnlPostLineOnPostCustOnAfterTempDtldCVLedgEntryBufCopyFromGenJnlLine(var GenJournalLine: Record "Gen. Journal Line"; var TempDtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer")
      
    begin
      TempDtldCVLedgEntryBuf. "Loan ID":= GenJournalLine."Loan ID";
    end;
      
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnBeforeCustLedgEntryInsert', '', true, true)]
    local procedure OnPostCustGenJnlPostLineOnPostCustOnBeforeCustLedgEntryInsert(var CustLedgerEntry: Record "Cust. Ledger Entry"; var GenJournalLine: Record "Gen. Journal Line")
    begin
      CustLedgerEntry."Loan ID":= GenJournalLine."Loan ID";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Detailed CV Ledg. Entry Buffer",'OnAfterCopyFromGenJnlLine', '', true, true)]
    local procedure OnPostCustGenJnlPostLineOnAfterCopyFromGenJnlLine(var DtldCVLedgEntryBuffer: Record "Detailed CV Ledg. Entry Buffer";GenJnlLine: Record "Gen. Journal Line")
    begin
      DtldCVLedgEntryBuffer. "Loan ID":= GenJnlLine."Loan ID";  //This also applies to Cust and Employee
    end;
      
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnBeforeVendLedgEntryInsert', '', true, true)]
    local procedure GenJnlPostLineOnPostCustOnBeforeVendLedgEntryInsert(var VendorLedgerEntry: Record "Vendor Ledger Entry"; GenJournalLine: Record "Gen. Journal Line" )
    begin
      VendorLedgerEntry."Loan ID":= GenJournalLine."Loan ID";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnAfterInitBankAccLedgEntry', '', true, true)]
    local procedure GenJnlPostLineOnAfterInitBankAccLedgEntry(var BankAccountLedgerEntry: Record "Bank Account Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
      BankAccountLedgerEntry."DEPOSIT ID":= GenJournalLine."Deposit ID";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnAfterInitGLEntry', '', true, true)]
    local procedure GenJnlPostLineOnAfterInitGLEntry(var GLEntry: Record "G/L Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
      GLEntry."Maintenance Code":=GenJournalLine."Maintenance Code";                
      GLEntry."Gen. Bus. Posting Group":=GenJournalLine."Gen. Bus. Posting Group";  
    end;




    var
      "xVAT Base Amount (LCY)": Decimal;
      

}

// OBJECT Modification "Gen. Jnl.-Post Line"(Codeunit 12)
// {
//   CHANGES
//   {

//     
//     { PropertyModification;
//                          Target=PostApply(PROCEDURE 105).IsHandled(Variable 1014);
//                          Property=Id;
//                          OriginalValue=1014;
//                          ModifiedValue=1114 }
//     
//                          Target=ProcessTempVATEntry(PROCEDURE 87) }
//     
// { CodeModification  ;OriginalCode=BEGIN
//                                         if AddCurrencyCode = '' then
//                                           exit;

//                                         #4..9
//                                         then begin
//                                           GLEntry.Init;
//                                           GLEntry.CopyFromGenJnlLine(GenJnlLine);
//                                           GLEntry."External Document No." := '';
//                                           GLEntry.Description :=
//                                             CopyStr(
//                                               StrSubstNo(
//                                         #17..20
//                                           GLEntry."Source No." := '';
//                                           GLEntry."Job No." := '';
//                                           GLEntry.Quantity := 0;
//                                           GLEntry."Entry No." := NextEntryNo;
//                                           GLEntry."Transaction No." := NextTransactionNo;
//                                           if TotalAddCurrAmount < 0 then
//                                         #27..41
//                                         end;

//                                         OnAfterHandleAddCurrResidualGLEntry(GenJnlLine,GLEntry2);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..12
//                                           GLEntry."External Document No." := 'xxxxx';     //AAA
//                                           //GLEntry."External Document No." := '';
//                                         #14..23
//                                           //  GLEntry."Reason Code" := GenJnlLine."Reason Code";
//                                           GLEntry."Gen. Bus. Posting Group":=GenJnlLine."Gen. Bus. Posting Group";  //aaa
//                                           GLEntry."Reason Code" := 'YYYYY';   //aa
//                                         #24..44
//                                       END;

//                          Target=HandleAddCurrResidualGLEntry(PROCEDURE 38) }
//     { PropertyModification;
//                          Target=InsertVATEntriesFromTemp(PROCEDURE 83).FirstEntryNo(Variable 1006);
//                          Property=Id;
//                          OriginalValue=1006;
//                          ModifiedValue=1005 }

//     
//                          Target=InsertVATEntriesFromTemp(PROCEDURE 83) }
//   }
//   CODE
//   {

//     BEGIN
//     END.
//   }
// }

// { Skip: CodeModification  ;OriginalCode=BEGIN
//                                         with GenJnlLine do begin
//                                           if "Currency Code" = '' then begin
//                                             Currency.InitRoundingPrecision;
//                                             "Amount (LCY)" := Amount;
//                                             "VAT Amount (LCY)" := "VAT Amount";
//                                             "VAT Base Amount (LCY)" := "VAT Base Amount";
//                                           end else begin
//                                             Currency.Get("Currency Code");
//                                             Currency.TestField("Amount Rounding Precision");
//                                         #10..25
//                                           end;
//                                           exit(Currency."Amount Rounding Precision");
//                                         end;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..5
//                                             if "Deferral Code" = '' then
//                                               "VAT Base Amount (LCY)" := "VAT Base Amount";
//                                         #7..28
//                                       END;

//                          Target=InitAmounts(PROCEDURE 186) }


//******

// { Skip: CodeModification  ;OriginalCode=BEGIN
//                                         if (DtldCVLedgEntryBuf."Amount (LCY)" = 0) and
//                                            (DtldCVLedgEntryBuf."VAT Amount (LCY)" = 0) and
//                                            ((AddCurrencyCode = '') or (DtldCVLedgEntryBuf."Additional-Currency Amount" = 0))
//                                         then
//                                           exit;

//                                         AccNo := GetDtldCustLedgEntryAccNo(GenJnlLine,DtldCVLedgEntryBuf,CustPostingGr,OriginalTransactionNo,true);
//                                         DtldCVLedgEntryBuf."Gen. Posting Type" := DtldCVLedgEntryBuf."Gen. Posting Type"::Sale;
//                                         PostDtldCVLedgEntry(GenJnlLine,DtldCVLedgEntryBuf,AccNo,AdjAmount,true);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..7
//                                         PostDtldCVLedgEntry(GenJnlLine,DtldCVLedgEntryBuf,AccNo,AdjAmount,true);
//                                       END;

//                          Target=PostDtldCustLedgEntryUnapply(PROCEDURE 114) }


//     { CodeModification  ;OriginalCode=BEGIN
//                                         if (DtldCVLedgEntryBuf."Amount (LCY)" = 0) and
//                                            (DtldCVLedgEntryBuf."VAT Amount (LCY)" = 0) and
//                                            ((AddCurrencyCode = '') or (DtldCVLedgEntryBuf."Additional-Currency Amount" = 0))
//                                         then
//                                           exit;

//                                         AccNo := GetDtldVendLedgEntryAccNo(GenJnlLine,DtldCVLedgEntryBuf,VendPostingGr,OriginalTransactionNo,true);
//                                         DtldCVLedgEntryBuf."Gen. Posting Type" := DtldCVLedgEntryBuf."Gen. Posting Type"::Purchase;
//                                         PostDtldCVLedgEntry(GenJnlLine,DtldCVLedgEntryBuf,AccNo,AdjAmount,true);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..7
//                                         PostDtldCVLedgEntry(GenJnlLine,DtldCVLedgEntryBuf,AccNo,AdjAmount,true);
//                                       END;

//                          Target=PostDtldVendLedgEntryUnapply(PROCEDURE 69) }

// { Skip: CodeModification  ;OriginalCode=BEGIN
//                                         if not (DtldCVLedgEntryBuf."Entry Type" in
//                                                 [DtldCVLedgEntryBuf."Entry Type"::"Payment Discount (VAT Excl.)",
//                                                  DtldCVLedgEntryBuf."Entry Type"::"Payment Tolerance (VAT Excl.)",
//                                                  DtldCVLedgEntryBuf."Entry Type"::"Payment Discount Tolerance (VAT Excl.)"])
//                                         then
//                                           exit;

//                                         DeductedVATBase := 0;
//                                         TempVATEntry.Reset;
//                                         TempVATEntry.SetRange("Entry No.",0,999999);
//                                         TempVATEntry.SetRange("Gen. Bus. Posting Group",DtldCVLedgEntryBuf."Gen. Bus. Posting Group");
//                                         #12..46
//                                                     TempVATEntry.Rename(TempVATEntry."Entry No." + 1000000);
//                                                 end;
//                                                 TempVATEntry := VATEntrySaved;
//                                                 DeductedVATBase += TempVATEntry.Base;
//                                               until TempVATEntry.Next = 0;
//                                               for i := 1 to 3 do begin
//                                                 VATBaseSum[i] := 0;
//                                         #54..65
//                                               SummarizedVAT := true;
//                                             end;
//                                           until TempVATEntry.Next = 0;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..7
//                                         #9..49
//                                         #51..68
//                                       END;

