codeunit 50036 "SalesPriceCalcMgtSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Price Calc. Mgt.", 'OnFindSalesLineDiscOnAfterSetFilters', '', true, true)]
    local procedure MyProcedure()
    begin

    end;
}

// OBJECT Modification "Sales Price Calc. Mgt."(Codeunit 7000)
// {
// CHANGES
// {
//   { CodeModification  ;OriginalCode=BEGIN
//                                       if not ToSalesPrice.IsTemporary then
//                                         Error(TempTableErr);

//                                       #4..10
//                                       with FromSalesPrice do begin
//                                         SetRange("Item No.",ItemNo);
//                                         SetFilter("Variant Code",'%1|%2',VariantCode,'');
//                                         SetFilter("Ending Date",'%1|>=%2',0D,StartingDate);
//                                         if not ShowAll then begin
//                                           SetFilter("Currency Code",'%1|%2',CurrencyCode,'');
//                                           if UOM <> '' then
//                                       #18..47
//                                       OnAfterFindSalesPrice(
//                                         ToSalesPrice,FromSalesPrice,QtyPerUOM,Qty,CustNo,ContNo,CustPriceGrCode,CampaignNo,
//                                         ItemNo,VariantCode,UOM,CurrencyCode,StartingDate,ShowAll);
//                                     END;

//                        ModifiedCode=BEGIN
//                                       #1..13
//                                           SetFilter("Ending Date",'%1|>=%2',0D,StartingDate);
//                                       #15..50
//                                     END;

//                        Target=FindSalesPrice(PROCEDURE 16) }
//   // { CodeModification  ;OriginalCode=BEGIN
//                                     case PriceType of
//                                       PriceType::Resource:
//                                         begin
//                                     #4..8
//                                       PriceType::"Group(Resource)":
//                                         begin
//                                           JobResPrice.SetRange(Type,JobResPrice.Type::"Group(Resource)");
//                                           JobResPrice.SetRange(Code,Res."Resource Group No.");
//                                           exit(FindJobResPrice(JobResPrice,JobPlanningLine."Work Type Code"));
//                                         end;
//                                       PriceType::All:
//                                         begin
//                                           JobResPrice.SetRange(Type,JobResPrice.Type::All);
//                                           JobResPrice.SetRange(Code);
//                                           exit(FindJobResPrice(JobResPrice,JobPlanningLine."Work Type Code"));
//                                         end;
//                                     end;
//                                   END;

//                      ModifiedCode=BEGIN
//                                     #1..11
//                                           JobResPrice.SetRange("Work Type Code");
//                                           JobResPrice.SetRange(Code,Res."Resource Group No.");
//                                           exit(JobResPrice.Find('-'));
//                                     #14..17
//                                           JobResPrice.SetRange("Work Type Code");
//                                           JobResPrice.SetRange(Code);
//                                           exit(JobResPrice.Find('-'));
//                                         end;
//                                     end;
//                                   END;

//                      Target=JobPlanningLineFindJobResPrice(PROCEDURE 67) }
// { CodeModification  ;OriginalCode=BEGIN
//                                     case PriceType of
//                                       PriceType::Resource:
//                                         begin
//                                     #4..8
//                                       PriceType::"Group(Resource)":
//                                         begin
//                                           JobResPrice.SetRange(Type,JobResPrice.Type::"Group(Resource)");
//                                           JobResPrice.SetRange(Code,Res."Resource Group No.");
//                                           exit(FindJobResPrice(JobResPrice,JobJnlLine."Work Type Code"));
//                                         end;
//                                       PriceType::All:
//                                         begin
//                                           JobResPrice.SetRange(Type,JobResPrice.Type::All);
//                                           JobResPrice.SetRange(Code);
//                                           exit(FindJobResPrice(JobResPrice,JobJnlLine."Work Type Code"));
//                                         end;
//                                     end;
//                                   END;

//                      ModifiedCode=BEGIN
//                                     #1..11
//                                           JobResPrice.SetRange("Work Type Code");
//                                           JobResPrice.SetRange(Code,Res."Resource Group No.");
//                                           exit(JobResPrice.Find('-'));
//                                     #14..17
//                                           JobResPrice.SetRange("Work Type Code");
//                                           JobResPrice.SetRange(Code);
//                                           exit(JobResPrice.Find('-'));
//                                         end;
//                                     end;
//                                   END;

//                      Target=JobJnlLineFindJobResPrice(PROCEDURE 46) }
