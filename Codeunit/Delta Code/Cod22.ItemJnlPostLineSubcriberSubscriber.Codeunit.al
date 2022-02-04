codeunit 50028 ItemJnlPostLineSubcriber
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforePostItem', '', true, true)]
    local procedure ItemJnlPostLineOnBeforePostItem(var ItemJournalLine: Record "Item Journal Line")
    var
        ItemAvailability: Codeunit "Item-Check Avail.";
        text001: Label 'ENU="%1 is Insurficient in Line %2   "';
    begin
        IF ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::Transfer THEN
            IF ItemAvailability.ItemJnlCheckLine(ItemJournalLine) THEN //IF ItemAvailability.ItemJnlCheckLinePost(ItemJnlLine) THEN
                ERROR(text001, ItemJournalLine."Item No.", ItemJournalLine."Line No.");
    end;

    #22..32
                                            //AAA-START
                                                if not CoInfo.Find('-') then Message('record not found') else
                                                if ("Item Ledger Entry Type" in [
                                                   "Item Ledger Entry Type"::Purchase,
                                                   "Item Ledger Entry Type"::"Positive Adjmt.",
                                                   "Item Ledger Entry Type"::Output]) and
                                                   (ItemJnlLine.Amount + ItemJnlLine."Discount Amount" > 0)
                                                   then
                                                   if (ItemJnlLine."Indirect Cost %">=CoInfo."Min Foreign Indirect Cost %") then
                                                      Item."Last Imported Cost":=LastDirectCost
                                                   else
                                                      Item."Last Local Cost":=LastDirectCost;
                                                   Item.Modify;
                                                 //AAA-STOP
      
}

  CHANGES
  {}
    { CodeModification  ;OriginalCode=BEGIN
                                        IsHandled := false;
                                        OnBeforeUpdateUnitCost(ValueEntry,IsHandled);
                                        if IsHandled then
                                        #4..18
                                              LastDirectCost := Round(TotalAmount / "Valued Quantity",GLSetup."Unit-Amount Rounding Precision")
                                            end;

                                            if "Drop Shipment" then begin
                                              if LastDirectCost <> 0 then begin
                                                Item."Last Direct Cost" := LastDirectCost;
                                        #25..29
                                              ItemCostMgt.SetProperties(false,"Invoiced Quantity");
                                              ItemCostMgt.UpdateUnitCost(Item,"Location Code","Variant Code",LastDirectCost,0,true,true,false,0);
                                            end;
                                          end;
                                      END;

                         ModifiedCode=BEGIN
                                        #1..21
                                        {<<<<<<<}
                                        #22..32
                                            //AAA-START
                                                if not CoInfo.Find('-') then Message('record not found') else
                                                if ("Item Ledger Entry Type" in [
                                                   "Item Ledger Entry Type"::Purchase,
                                                   "Item Ledger Entry Type"::"Positive Adjmt.",
                                                   "Item Ledger Entry Type"::Output]) and
                                                   (ItemJnlLine.Amount + ItemJnlLine."Discount Amount" > 0)
                                                   then
                                                   if (ItemJnlLine."Indirect Cost %">=CoInfo."Min Foreign Indirect Cost %") then
                                                      Item."Last Imported Cost":=LastDirectCost
                                                   else
                                                      Item."Last Local Cost":=LastDirectCost;
                                                   Item.Modify;
                                                 //AAA-STOP
                                          end;
                                      END;

                         Target=UpdateUnitCost(PROCEDURE 9) }
    { CodeModification  ;OriginalCode=BEGIN
                                        if not InventoryPeriod.IsValidDate(ItemApplnEntry."Posting Date") then
                                          InventoryPeriod.ShowError(ItemApplnEntry."Posting Date");

                                        #4..52
                                                0,0,ItemApplnEntry."Posting Date",ItemApplnEntry.Quantity,true);
                                        end;

                                        if Item."Costing Method" = Item."Costing Method"::Average then
                                          if ItemApplnEntry.Fixed then
                                            UpdateValuedByAverageCost(CostItemLedgEntry."Entry No.",true);
                                        #59..76
                                        SetValuationDateAllValueEntrie(CostItemLedgEntry."Entry No.",Valuationdate,false);

                                        UpdateLinkedValuationUnapply(Valuationdate,CostItemLedgEntry."Entry No.",CostItemLedgEntry.Positive);
                                      END;

                         ModifiedCode=BEGIN
                                        #1..55
                                        {IF ItemJnlLine."Item Tracking No." = 0 THEN
                                                      UpdateRelatedItemTracking(OldItemLedgEntry."Entry No.",-AppliedQty);} // blocked by santus 20-10-05


                                        #56..79
                                      END;

                         Target=UnApply(PROCEDURE 73) }
    { CodeModification  ;OriginalCode=BEGIN
                                        ItemLedgEntryNo := ItemLedgEntryNo + 1;

                                        with ItemJnlLine do begin
                                          ItemLedgEntry.Init;
                                          ItemLedgEntry."Entry No." := ItemLedgEntryNo;
                                          ItemLedgEntry."Item No." := "Item No.";
                                          ItemLedgEntry."Posting Date" := "Posting Date";
                                          ItemLedgEntry."Document Date" := "Document Date";
                                          ItemLedgEntry."Entry Type" := "Entry Type";
                                          ItemLedgEntry."Source No." := "Source No.";
                                          ItemLedgEntry."Document No." := "Document No.";
                                          ItemLedgEntry."Document Type" := "Document Type";
                                          ItemLedgEntry."Document Line No." := "Document Line No.";
                                          ItemLedgEntry."Order Type" := "Order Type";
                                          ItemLedgEntry."Order No." := "Order No.";
                                          ItemLedgEntry."Order Line No." := "Order Line No.";
                                          ItemLedgEntry."External Document No." := "External Document No.";
                                          ItemLedgEntry.Description := Description;
                                          ItemLedgEntry."Location Code" := "Location Code";
                                          ItemLedgEntry."Applies-to Entry" := "Applies-to Entry";
                                          ItemLedgEntry."Source Type" := "Source Type";
                                          ItemLedgEntry."Transaction Type" := "Transaction Type";
                                          ItemLedgEntry."Transport Method" := "Transport Method";
                                          ItemLedgEntry."Country/Region Code" := "Country/Region Code";
                                          if ("Entry Type" = "Entry Type"::Transfer) and ("New Location Code" <> '') then begin
                                            if NewLocation.Code <> "New Location Code" then
                                              NewLocation.Get("New Location Code");
                                            ItemLedgEntry."Country/Region Code" := NewLocation."Country/Region Code";
                                          end;
                                          ItemLedgEntry."Entry/Exit Point" := "Entry/Exit Point";
                                          ItemLedgEntry.Area := Area;
                                          ItemLedgEntry."Transaction Specification" := "Transaction Specification";
                                          ItemLedgEntry."Drop Shipment" := "Drop Shipment";
                                          ItemLedgEntry."Assemble to Order" := "Assemble to Order";
                                          ItemLedgEntry."No. Series" := "Posting No. Series";
                                          GetInvtSetup;
                                          if (ItemLedgEntry.Description = Item.Description) and not InvtSetup."Copy Item Descr. to Entries" then
                                            ItemLedgEntry.Description := '';
                                          ItemLedgEntry."Prod. Order Comp. Line No." := "Prod. Order Comp. Line No.";
                                          ItemLedgEntry."Variant Code" := "Variant Code";
                                          ItemLedgEntry."Unit of Measure Code" := "Unit of Measure Code";
                                          ItemLedgEntry."Qty. per Unit of Measure" := "Qty. per Unit of Measure";
                                          ItemLedgEntry."Derived from Blanket Order" := "Derived from Blanket Order";

                                          ItemLedgEntry."Cross-Reference No." := "Cross-Reference No.";
                                          ItemLedgEntry."Originally Ordered No." := "Originally Ordered No.";
                                          ItemLedgEntry."Originally Ordered Var. Code" := "Originally Ordered Var. Code";
                                          ItemLedgEntry."Out-of-Stock Substitution" := "Out-of-Stock Substitution";
                                          ItemLedgEntry."Item Category Code" := "Item Category Code";
                                          ItemLedgEntry.Nonstock := Nonstock;
                                          ItemLedgEntry."Purchasing Code" := "Purchasing Code";
                                          ItemLedgEntry."Return Reason Code" := "Return Reason Code";
                                          ItemLedgEntry."Job No." := "Job No.";
                                          ItemLedgEntry."Job Task No." := "Job Task No.";
                                          ItemLedgEntry."Job Purchase" := "Job Purchase";
                                          ItemLedgEntry."Serial No." := "Serial No.";
                                          ItemLedgEntry."Lot No." := "Lot No.";
                                          ItemLedgEntry."Warranty Date" := "Warranty Date";
                                          ItemLedgEntry."Expiration Date" := "Item Expiration Date";
                                          ItemLedgEntry."Shpt. Method Code" := "Shpt. Method Code";

                                          ItemLedgEntry.Correction := Correction;

                                          if "Entry Type" in
                                             ["Entry Type"::Sale,
                                              "Entry Type"::"Negative Adjmt.",
                                              "Entry Type"::Transfer,
                                              "Entry Type"::Consumption,
                                              "Entry Type"::"Assembly Consumption"]
                                          then begin
                                            ItemLedgEntry.Quantity := -Quantity;
                                            ItemLedgEntry."Invoiced Quantity" := -"Invoiced Quantity";
                                          end else begin
                                            ItemLedgEntry.Quantity := Quantity;
                                            ItemLedgEntry."Invoiced Quantity" := "Invoiced Quantity";
                                          end;
                                          if (ItemLedgEntry.Quantity < 0) and ("Entry Type" <> "Entry Type"::Transfer) then
                                            ItemLedgEntry."Shipped Qty. Not Returned" := ItemLedgEntry.Quantity;
                                        end;

                                        OnAfterInitItemLedgEntry(ItemLedgEntry,ItemJnlLine,ItemLedgEntryNo);
                                      END;

                         ModifiedCode=BEGIN
                                        #1..52
                                          ItemLedgEntry."Product Group Code" := "Product Group Code";
                                          ItemLedgEntry."Source Code":="Source Code";     //AAA/July 24 - 2002 //s
                                        #53..59
                                          ItemLedgEntry."Scrap Quantity" := "Scrap Quantity";  //CODEWARE
                                          ItemLedgEntry."Consumed Quantity" := "Consumed Quantity"; //CODEWARE
                                          ItemLedgEntry."Vessel Type" := "Vessel Type"; // Inserted By SSNL 170721
                                          ItemLedgEntry."Shpt. Method Code" := "Shpt. Method Code";
                                          ItemLedgEntry.Correction := Correction;
                                          case "Entry Type" of
                                            "Entry Type"::Sale,"Entry Type"::"Negative Adjmt.",
                                              "Entry Type"::Transfer,"Entry Type"::"Assembly Consumption":
                                                begin
                                                  ItemLedgEntry.Quantity := -Quantity;
                                                  ItemLedgEntry."Invoiced Quantity" := -"Invoiced Quantity";
                                                end;
                                              "Entry Type"::Consumption :
                                                begin
                                                  ItemLedgEntry.Quantity := -"Consumed Quantity";
                                                  ItemLedgEntry."Invoiced Quantity" := -"Consumed Quantity";
                                                end;
                                              else begin
                                                  ItemLedgEntry.Quantity := Quantity;
                                                  ItemLedgEntry."Invoiced Quantity" := "Invoiced Quantity";
                                               end;
                                          end;  //End of CASE

                                        #77..81
                                      END;

                         Target=InitItemLedgEntry(PROCEDURE 4) }
    { CodeModification  ;OriginalCode=BEGIN
                                        with ValueEntry do begin
                                          if CalledFromAdjustment and not PostToGL then
                                            exit;
                                          InventoryPostingToGL.SetRunOnlyCheck(true,not PostToGL,false);
                                          if InventoryPostingToGL.BufferInvtPosting(ValueEntry) then
                                            InventoryPostingToGL.PostInvtPostBufPerEntry(ValueEntry);

                                        #8..22
                                              SetValueEntry(ValueEntry,0,0,false);
                                            end;
                                        end;
                                      END;

                         ModifiedCode=BEGIN
                                        #1..3

                                          if ValueEntry."Item Ledger Entry Type" = ValueEntry."Item Ledger Entry Type"::Transfer  then exit;

                                           InventoryPostingToGL.SetRunOnlyCheck(true,not PostToGL,false);
                                        #5..25
                                      END;

                         Target=PostInventoryToGL(PROCEDURE 11) }
    { CodeModification  ;OriginalCode=BEGIN
                                        OnBeforeInitValueEntry(ValueEntry,ValueEntryNo,ItemJnlLine);

                                        ValueEntryNo := ValueEntryNo + 1;
                                        #4..15
                                          ValueEntry."Item Ledger Entry Type" := "Entry Type";
                                          ValueEntry.Type := Type;
                                          ValueEntry."Posting Date" := "Posting Date";
                                          if "Partial Revaluation" then
                                            ValueEntry."Partial Revaluation" := true;

                                        #22..267

                                          OnAfterInitValueEntry(ValueEntry,ItemJnlLine,ValueEntryNo);
                                        end;
                                      END;

                         ModifiedCode=BEGIN
                                        #1..18
                                          ValueEntry."Vessel Type" := "Vessel Type";
                                        #19..270
                                      END;

                         Target=InitValueEntry(PROCEDURE 5800) }
    { CodeModification  ;OriginalCode=BEGIN
                                        with ItemJnlLine do begin
                                          if IsWarehouseReclassification(ItemJnlLine) then begin
                                            ValueEntry."Dimension Set ID" := OldItemLedgEntry."Dimension Set ID";
                                        #4..22
                                              end;
                                          RoundAmtValueEntry(ValueEntry);

                                          if ValueEntry."Entry Type" = ValueEntry."Entry Type"::Rounding then begin
                                            ValueEntry."Valued Quantity" := ItemLedgEntry.Quantity;
                                            ValueEntry."Invoiced Quantity" := 0;
                                            ValueEntry."Cost per Unit" := 0;
                                            ValueEntry."Sales Amount (Actual)" := 0;
                                            ValueEntry."Purchase Amount (Actual)" := 0;
                                            ValueEntry."Cost per Unit (ACY)" := 0;
                                            ValueEntry."Item Ledger Entry Quantity" := 0;
                                          end else begin
                                            if IsFirstValueEntry(ValueEntry."Item Ledger Entry No.") then
                                              ValueEntry."Item Ledger Entry Quantity" := ValueEntry."Valued Quantity"
                                            else
                                              ValueEntry."Item Ledger Entry Quantity" := 0;
                                            if ValueEntry."Cost per Unit" = 0 then begin
                                              ValueEntry."Cost per Unit" :=
                                                CalcCostPerUnit(ValueEntry."Cost Amount (Actual)",ValueEntry."Valued Quantity",false);
                                              ValueEntry."Cost per Unit (ACY)" :=
                                                CalcCostPerUnit(ValueEntry."Cost Amount (Actual) (ACY)",ValueEntry."Valued Quantity",true);
                                            end else begin
                                              ValueEntry."Cost per Unit" := Round(
                                                  ValueEntry."Cost per Unit",GLSetup."Unit-Amount Rounding Precision");
                                              ValueEntry."Cost per Unit (ACY)" := Round(
                                        #48..57
                                                  else
                                                    ValueEntry."Cost per Unit" :=
                                                      CalcCostPerUnit(ValueEntry."Cost Amount (Actual)",ValueEntry."Valued Quantity",false);
                                            end;
                                            if UpdateItemLedgEntry(ValueEntry,ItemLedgEntry) then
                                              ItemLedgEntry.Modify;
                                          end;

                                          if ((ValueEntry."Entry Type" = ValueEntry."Entry Type"::"Direct Cost") and
                                              (ValueEntry."Item Charge No." = '')) and
                                        #68..73
                                                InvoicedQty := InvdValueEntry."Invoiced Quantity"
                                              else
                                                InvoicedQty := ValueEntry."Valued Quantity";
                                            end else
                                              InvoicedQty := ValueEntry."Invoiced Quantity";
                                            CalcExpectedCost(
                                              ValueEntry,
                                        #81..85
                                              ValueEntry."Sales Amount (Expected)",
                                              ValueEntry."Purchase Amount (Expected)",
                                              ItemLedgEntry.Quantity = ItemLedgEntry."Invoiced Quantity");
                                          end;

                                          OnBeforeInsertValueEntry(ValueEntry,ItemJnlLine,ItemLedgEntry,ValueEntryNo,InventoryPostingToGL,CalledFromAdjustment);

                                          if ValueEntry.Inventoriable and not Item."Inventory Value Zero" then
                                            PostInventoryToGL(ValueEntry);

                                          ValueEntry.Insert;

                                          OnAfterInsertValueEntry(ValueEntry,ItemJnlLine,ItemLedgEntry,ValueEntryNo);
                                        #99..108
                                            TempValueEntryRelation.Insert;
                                          end;
                                        end;
                                      END;

                         ModifiedCode=BEGIN
                                        #1..25
                                          if ValueEntry."Entry Type" = ValueEntry."Entry Type"::Rounding then begin //6
                                        #27..33
                                          end //6
                                           else begin //7
                                        #35..38
                                            if ValueEntry."Cost per Unit" = 0 then begin //8
                                        #40..43
                                            end //8
                                             else begin //9
                                        #45..60
                                            end;//9
                                            if UpdateItemLedgEntry(ValueEntry,ItemLedgEntry) then
                                              ItemLedgEntry.Modify;
                                          end;//7
                                        #65..76
                                            end //11
                                             else
                                        #78..88
                                          end;//10
                                        #90..94
                                        //IF CONFIRM('Insert Value %1  of %2',FALSE, ValueEntry."Item Ledger Entry Type",ValueEntry."Source Code") THEN
                                        if (ValueEntry."Item Ledger Entry Type" = ValueEntry."Item Ledger Entry Type"::Transfer) and (ValueEntry."Source Code" = 'INVTADJMT') then exit;//inserted by SHOD 01/08/18
                                        #96..111
                                      END;

                         Target=InsertValueEntry(PROCEDURE 5801) }
    { CodeModification  ;OriginalCode=BEGIN
                                        if ItemLedgEntryType = ValueEntry."Item Ledger Entry Type"::" " then
                                          exit;
                                        if Adjustment then
                                          if not (ItemLedgEntryType in [ValueEntry."Item Ledger Entry Type"::Output,
                                                                        ValueEntry."Item Ledger Entry Type"::"Assembly Output"])
                                          then
                                            exit;

                                        #9..22
                                            if ModifyItem then
                                              Modify;
                                          end;
                                      END;

                         ModifiedCode=BEGIN
                                        #1..4
                                                                        ValueEntry."Item Ledger Entry Type"::"Assembly Output",
                                                                        ValueEntry."Item Ledger Entry Type"::Transfer]) // Inserted by Shod 01/08/18
                                        #6..25
                                      END;

                         Target=SetItemAdjmtProperties(PROCEDURE 39) }
    { CodeModification  ;OriginalCode=BEGIN
                                        if SkipApplicationCheck then begin
                                          SkipApplicationCheck := false;
                                          exit;
                                        end;

                                        if Abs(OldItemLedgEntry."Remaining Quantity" - OldItemLedgEntry."Reserved Quantity") <
                                           Abs(ItemLedgEntry."Remaining Quantity" - ItemLedgEntry."Reserved Quantity")
                                        then
                                          OldItemLedgEntry.FieldError("Remaining Quantity",Text004)
                                      END;

                         ModifiedCode=BEGIN
                                        #6..9
                                      END;

                         Target=CheckApplication(PROCEDURE 84) }
    { CodeModification  ;OriginalCode=BEGIN
                                        with TempSplitItemJnlLine do begin
                                          "Quantity (Base)" := SignFactor * TempTrackingSpecification."Qty. to Handle (Base)";
                                          Quantity := SignFactor * TempTrackingSpecification."Qty. to Handle";
                                        #4..42
                                          end;

                                          if Round("Unit Amount" * Quantity,GLSetup."Amount Rounding Precision") <> Amount then
                                            if ("Unit Amount" = "Unit Cost") and ("Unit Cost" <> 0) then begin
                                              "Unit Amount" := Round(Amount / Quantity,0.00001);
                                              "Unit Cost" := Round(Amount / Quantity,0.00001);
                                              "Unit Cost (ACY)" := Round("Amount (ACY)" / Quantity,0.00001);
                                        #50..77
                                        end;

                                        exit(PostItemJnlLine);
                                      END;

                         ModifiedCode=BEGIN
                                        #1..45
                                            if "Unit Amount" = "Unit Cost" then begin
                                        #47..80
                                      END;

                         Target=SetupTempSplitItemJnlLine(PROCEDURE 101) }
    { PropertyModification;
                         Target=LineNoTxt(Variable 1090);
                         Property=Id;
                         OriginalValue=1090;
                         ModifiedValue=1190 }
    { PropertyModification;
                         Target=TempItemApplnEntryHistory(Variable 1095);
                         Property=Id;
                         OriginalValue=1095;
                         ModifiedValue=1101 }
    { PropertyModification;
                         Target=RoundingResidualAmount(Variable 1096);
                         Property=Id;
                         OriginalValue=1096;
                         ModifiedValue=1196 }
    { PropertyModification;
                         Target=RoundingResidualAmountACY(Variable 1097);
                         Property=Id;
                         OriginalValue=1097;
                         ModifiedValue=1197 }
    { PropertyModification;
                         Target=SkipApplicationCheck(Variable 1089);
                         Property=Id;
                         OriginalValue=1089;
                         ModifiedValue=1099 }
    { Insertion         ;InsertAfter=SkipApplicationCheck(Variable 1089);
                         ChangedElements=VariableCollection
                         {
                           "-------------"@1090 : Text[30];
                           CoInfo@1089 : Record "Company Information";
                           Text005@1095 : TextConst 'ENU=Item %1 is not on inventory at Location %2.';
                           TransferQtyItetmTracking@1096 : Decimal;
                           
                         }
                          }
  }
  CODE
  {

    BEGIN
    END.
  }
}

//********************
// OBJECT Modification "Item Jnl.-Post Line"(Codeunit 22)
// {
//   OBJECT-PROPERTIES
//   {
//     Date=20210923D;
//     Time=184832.553T;
//     Modified=true;
//     Version List=NAVW114.26;
//   }
//   PROPERTIES
//   {
//     Target="Item Jnl.-Post Line"(Codeunit 22);
//   }

{ Skip(Redundant):CodeModification  ;OriginalCode=BEGIN
                                        OnBeforePostItemJnlLine(ItemJnlLine,CalledFromAdjustment,CalledFromInvtPutawayPick);

                                        with ItemJnlLine do begin
                                        #4..57
                                          then
                                            GenPostingSetup.Get("Gen. Bus. Posting Group","Gen. Prod. Posting Group");

                                          if "Qty. per Unit of Measure" = 0 then
                                            "Qty. per Unit of Measure" := 1;
                                          if "Qty. per Cap. Unit of Measure" = 0 then
                                        #64..132
                                        end;

                                        OnAfterPostItemJnlLine(ItemJnlLine,GlobalItemLedgEntry,ValueEntryNo,InventoryPostingToGL);
                                      END;

                         ModifiedCode=BEGIN
                                        #1..60
                                          GetGLSetup;
                                        #61..135
                                      END;

                         Target=Code(PROCEDURE 3) }
    