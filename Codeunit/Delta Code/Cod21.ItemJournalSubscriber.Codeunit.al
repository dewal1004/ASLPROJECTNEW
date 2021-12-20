codeunit 50004 "ItemJournalSubsriber"
{
    EventSubscriberInstance = StaticAutomatic;



    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Check Line", 'OnBeforeCheckBins', '', true, true)]
    local procedure ItemJnlChkLineOnBeforeChkBins(var ItemJournalLine: Record "Item Journal Line")
    var
        chki: Integer;
        Vend: Record 23;
        AllowedQty: Decimal;
        ChkArray: ARRAY[3, 3] OF Text[200];

    // SplitedArray: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Array";
    // ChkSettVar: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
    // Separator1: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
    // Separator2: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
    // ChkSettVar: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
    // DefaultStr: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
    // SubSplitArray: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Array";
    // SubStr: DotNet "'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";

    begin
        //     //TSG Post Receipt tolerance check start
        //     IF (ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::Purchase) AND
        //     (ItemJournalLine."Source Type" = ItemJournalLine."Source Type"::Vendor)  AND
        //     (ItemJournalLine."Document Type" = ItemJournalLine."Document Type"::"Purchase Receipt")
        //     THEN  BEGIN

        //     DefaultStr :='0,';
        //     Vend.SETRANGE("No.",ItemJournalLine."Source No.");
        //     IF Vend.FIND('-') THEN ChkSettVar := Vend."Receipt Tolerance Format"
        //     ELSE  ChkSettVar := '';

        //     //First Split by ; max three group of chk setting
        //     IF ChkSettVar.Length > 0 THEN
        //     BEGIN
        //     Separator1 := ';';
        //     SubSplitArray :=  ChkSettVar.Split(Separator1.ToCharArray()); // Split groups by ;
        //       IF SubSplitArray.Length >0 THEN // then split per group by ','
        //       BEGIN
        //       Separator1 := ',';
        //       FOR chki := 0 TO SubSplitArray.Length - 1 DO
        //         BEGIN
        //           SubStr := SubSplitArray.GetValue(chki);
        //           SplitedArray := SubStr.Split(Separator1.ToCharArray());
        //             IF (SplitedArray.Length = 3) AND ((chki+1) <=ARRAYLEN(ChkArray,1))  THEN
        //             BEGIN
        //               ChkArray[chki+1,1] := SplitedArray.GetValue(0);
        //               ChkArray[chki+1,2] := SplitedArray.GetValue(1);
        //               ChkArray[chki+1,3] := SplitedArray.GetValue(2);
        //             END;
        //         END;
        //       END;
        //     END
        //     ELSE SplitedArray:=DefaultStr.Split(Separator1.ToCharArray());

        //     // loop all receipt posting tolerance check
        //     FOR chki :=1 TO ARRAYLEN(ChkArray,1) DO
        //     BEGIN
        //       IF EVALUATE(AllowedQty,ChkArray[chki,3]) AND
        //       (ChkArray[chki,1] = "Gen. Prod. Posting Group") AND
        //       (ChkArray[chki,2] = "Unit of Measure Code") AND
        //       (AllowedQty < Quantity) THEN ERROR(ReceiptToleranceErr,"Item No.",Quantity,AllowedQty)
        //       ELSE AllowedQty:=0 ;
        //     END;
        // END;
        //     //TSG END
    end;
}


