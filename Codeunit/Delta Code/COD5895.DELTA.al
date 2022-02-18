codeunit 50035 InventoryAdjustmentSubscriber
{
  EventSubscriberInstance = StaticAutomatic;


}


// OBJECT Modification "Inventory Adjustment"(Codeunit 5895)
// {CHANGES
//   {
//     { CodeModification  ;OriginalCode=BEGIN
//                                         UpDateWindow(WindowAdjmtLevel,WindowItem,Text007,WindowFWLevel,WindowEntry,0);

//                                         TempValueEntryCalcdOutbndCostBuf.Reset;
//                                         TempValueEntryCalcdOutbndCostBuf.DeleteAll;

//                                         with ItemLedgEntry do
//                                           if AppliedEntryToAdjustExists(Item."No.") then begin
//                                             CopyILEToILE(ItemLedgEntry,TempItemLedgEntry);
//                                             TempItemLedgEntry.FindSet;
//                                             repeat
//                                               Get(TempItemLedgEntry."Entry No.");
//                                               UpDateWindow(WindowAdjmtLevel,WindowItem,WindowAdjust,WindowFWLevel,"Entry No.",0);

//                                               RndgResidualBuf.AddAdjustedCost("Entry No.",0,0,"Completely Invoiced");

//                                               AppliedQty := ForwardAppliedCost(ItemLedgEntry,false);

//                                               EliminateRndgResidual(ItemLedgEntry,AppliedQty);
//                                             until (TempItemLedgEntry.Next = 0) or LevelExceeded;
//                                           end;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if ItemLedgEntry."Item No." <> 'EG-0010' then begin
//                                           UpDateWindow(WindowAdjmtLevel,WindowItem,Text007,WindowFWLevel,WindowEntry,0);
//                                           ItemLedgEntry.SetFilter(ItemLedgEntry."Entry Type",'<>%1',ItemLedgEntry."Entry Type"::Transfer);//shod 2018
//                                           with ItemLedgEntry do
//                                             if AppliedEntryToAdjustExists(Item."No.") then begin
//                                               CopyILEToILE(ItemLedgEntry,TempItemLedgEntry);
//                                               TempItemLedgEntry.FindSet;
//                                               repeat
//                                                 Get(TempItemLedgEntry."Entry No.");
//                                                 UpDateWindow(WindowAdjmtLevel,WindowItem,WindowAdjust,WindowFWLevel,"Entry No.",0);

//                                                 RndgResidualBuf.AddAdjustedCost("Entry No.",0,0,"Completely Invoiced");

//                                                 AppliedQty := ForwardAppliedCost(ItemLedgEntry,false);

//                                                 EliminateRndgResidual(ItemLedgEntry,AppliedQty);
//                                               until (TempItemLedgEntry.Next = 0) or LevelExceeded;
//                                             end;
//                                         end;
//                                       END;

//                          Target=AdjustItemAppliedCost(PROCEDURE 4) }
// //     { PropertyModification;
//                          Target=AdjustAppliedOutbndEntries(PROCEDURE 2).StandardCostMirroring(Variable 1008);
//                          Property=Id;
//                          OriginalValue=1008;
//                          ModifiedValue=1007 }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         OutbndItemLedgEntry.Get(OutbndItemLedgEntryNo);
//                                         if Item."Costing Method" = Item."Costing Method"::Standard then
//                                           StandardCostMirroring := UseStandardCostMirroring(OutbndItemLedgEntry);
//                                         with OutbndValueEntry do begin
//                                           CalcOutbndCost(OutbndCostElementBuf,AdjustedCostElementBuf,OutbndItemLedgEntry,Recursion);

//                                         #7..71
//                                           InboundCompletelyInvoiced := OutbndCostElementBuf."Inbound Completely Invoiced";
//                                           exit(OutbndItemLedgEntry."Completely Invoiced");
//                                         end;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         OutbndItemLedgEntry.Get(OutbndItemLedgEntryNo);
//                                         #4..74
//                                       END;

//                          Target=AdjustAppliedOutbndEntries(PROCEDURE 2) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         with CostElementBuf do begin
//                                           Retrieve(EntryType,0);
//                                           AdjustedCostElementBuf.Retrieve(EntryType,0);
//                                         #4..6

//                                         if HasNewCost(NewAdjustedCost,NewAdjustedCostACY) then begin
//                                           GetOrigValueEntry(OrigValueEntry,OutbndValueEntry,EntryType);
//                                           InitAdjmtJnlLine(
//                                             ItemJnlLine,OrigValueEntry,OrigValueEntry."Entry Type",OrigValueEntry."Variance Type",OrigValueEntry."Invoiced Quantity");
//                                           PostItemJnlLine(ItemJnlLine,OrigValueEntry,NewAdjustedCost,NewAdjustedCostACY);
//                                           UpdateAvgCostAdjmtEntryPoint(OrigValueEntry);
//                                         end;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..9

//                                         #10..14
//                                       END;

//                          Target=CreateIndirectCostAdjmt(PROCEDURE 40) }
//     { Deletion          ;Target=UpdateAdjmtBuf(PROCEDURE 18).EntryType(Parameter 1007);
//                          ChangedElements=ParameterCollection
//                          {
//                            { 1007;EntryType                ;Option        }
//                          }
//                           }
//     { Insertion         ;Target=UpdateAdjmtBuf(PROCEDURE 18);
//                          InsertAfter=ItemLedgEntryPostingDate(Parameter 1005);
//                          ChangedElements=ParameterCollection
//                          {
//                            { 1006;EntryType                ;Option        }
//                          }
//                           }
//     { Deletion          ;Target=UpdateAdjmtBuf(PROCEDURE 18).SourceOrigValueEntry(Variable 1008);
//                          ChangedElements=VariableCollection
//                          {
//                            SourceOrigValueEntry@1008 : Record "Value Entry";
//                          }
//                           }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         if not HasNewCost(NewAdjustedCost,NewAdjustedCostACY) then
//                                           exit(false);

//                                         #4..12

//                                         TempInvtAdjmtBuf.AddActualCostBuf(OrigValueEntry,NewAdjustedCost,NewAdjustedCostACY,ItemLedgEntryPostingDate);

//                                         if EntryType = OrigValueEntry."Entry Type"::Variance then begin
//                                           GetOrigValueEntry(SourceOrigValueEntry,OrigValueEntry,EntryType);
//                                           TempInvtAdjmtBuf."Entry Type" := EntryType;
//                                           TempInvtAdjmtBuf."Variance Type" := SourceOrigValueEntry."Variance Type";
//                                           TempInvtAdjmtBuf.Modify;
//                                         end;

//                                         if not OrigValueEntry."Expected Cost" and
//                                            (OrigValueEntry."Entry Type" = OrigValueEntry."Entry Type"::"Direct Cost")
//                                         then begin
//                                         #26..32
//                                           ItemApplnEntry.SetOutboundsNotUpdated(ItemLedgEntry);
//                                         end;
//                                         exit(true);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         #1..15
//                                         #23..35
//                                       END;

//                          Target=UpdateAdjmtBuf(PROCEDURE 18) }
//     { PropertyModification;
//                          Target=InitAdjmtJnlLine(PROCEDURE 33).EntryType(Parameter 1001);
//                          Property=Name;
//                          OriginalValue=EntryType;
//                          ModifiedValue=VarianceType }
//     { PropertyModification;
//                          Target=InitAdjmtJnlLine(PROCEDURE 33).VarianceType(Parameter 1002);
//                          Property=Name;
//                          OriginalValue=VarianceType;
//                          ModifiedValue=EntryType }
//     { Move              ;Target=InitAdjmtJnlLine(PROCEDURE 33).VarianceType(Parameter 1002);
//                          InsertAfter=OrigValueEntry(Parameter 1000) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         with OrigValueEntry do begin
//                                           ItemJnlLine."Value Entry Type" := EntryType;
//                                           ItemJnlLine."Partial Revaluation" := "Partial Revaluation";
//                                           ItemJnlLine.Description := Description;
//                                           ItemJnlLine."Source Posting Group" := "Source Posting Group";
//                                         #6..14
//                                           if "Item Ledger Entry Type" = "Item Ledger Entry Type"::Output then
//                                             ItemJnlLine."Output Quantity (Base)" := ItemJnlLine."Quantity (Base)";
//                                           ItemJnlLine."Item Charge No." := "Item Charge No.";
//                                           ItemJnlLine."Variance Type" := VarianceType;
//                                           ItemJnlLine.Adjustment := true;
//                                           ItemJnlLine."Applies-to Value Entry" := "Entry No.";
//                                           ItemJnlLine."Return Reason Code" := "Return Reason Code";
//                                         end;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         with OrigValueEntry do begin
//                                           ItemJnlLine."Value Entry Type" := "Entry Type";
//                                         #3..17
//                                           ItemJnlLine."Variance Type" := "Variance Type";
//                                         #19..22
//                                       END;

//                          Target=InitAdjmtJnlLine(PROCEDURE 33) }
//   }
//   CODE
//   {

//     BEGIN
//     END.
//   }
// }

