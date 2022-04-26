codeunit 50014 AnalysisViewSubsciber
{
  EventSubscriberInstance = StaticAutomatic;
  
  [EventSubscriber(ObjectType::Codeunit, Codeunit::"Update Analysis View", 'OnFlushAnalysisViewEntryOnBeforeAnalysisViewEntryInsert', '', true, true)]
  local procedure MyProcedure()
  begin
    
  end;
  
}



// {  Pending
//   OBJECT-PROPERTIES
  
//   PROPERTIES
//   {
//     Target="Update Analysis View"(Codeunit 410);
//   }
//   CHANGES
//   {
//     { CodeModification  ;OriginalCode=BEGIN
//                                         OnBeforeUpdateAll(Which,DirectlyFromPosting,AnalysisView2);

//                                         AnalysisView2.SetRange(Blocked,false);
//                                         #4..19
//                                           until AnalysisView2.Next = 0;

//                                         OnAfterUpdateAll(Which,DirectlyFromPosting);
//                                       END;

//                          ModifiedCode=BEGIN

//                                         if not AnalysisView2.ReadPermission then       // added by santus 20-10-05
//                                           exit;

//                                         #1..22
//                                       END;

//                          Target=UpdateAll(PROCEDURE 15) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         InitLastEntryNo;
//                                         NewAnalysisView.LockTable;
//                                         NewAnalysisView.Find;
//                                         UpdateOne(NewAnalysisView,Which,ShowWindow);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not AnalysisView.ReadPermission then       // added by santus 20-10-05
//                                                 exit;
//                                         #1..4
//                                       END;

//                          Target=Update(PROCEDURE 23) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         GLSetup.Get;
//                                         FilterIsInitialized := false;
//                                         if AnalysisView."Account Source" = AnalysisView."Account Source"::"G/L Account" then
//                                           UpdateEntriesForGLAccount
//                                         else
//                                           UpdateEntriesForCFAccount;

//                                         FlushAnalysisViewEntry;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not AnalysisView.ReadPermission then       // added by santus 20-10-05
//                                           exit;
//                                         #1..8
//                                       END;

//                          Target=UpdateEntries(PROCEDURE 9) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         AnalysisViewBudgetEntry.SetRange("Analysis View Code",AnalysisView.Code);
//                                         AnalysisViewBudgetEntry.SetFilter("Entry No.",'>=%1',DeleteFromEntry);
//                                         AnalysisViewBudgetEntry.DeleteAll;
//                                         #4..22
//                                         if ShowProgressWindow then
//                                           UpdateWindowCounter(GLBudgetEntry."Entry No.");
//                                         FlushAnalysisViewBudgetEntry;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not AnalysisViewBudgetEntry.ReadPermission then       // added by santus 20-10-05
//                                           exit;
//                                         #1..25
//                                       END;

//                          Target=UpdateBudgetEntries(PROCEDURE 10) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         if PostingDate < AnalysisView."Starting Date" then begin
//                                           PostingDate := AnalysisView."Starting Date" - 1;
//                                           if AnalysisView."Date Compression" <> AnalysisView."Date Compression"::None then
//                                         #4..40
//                                         end;
//                                         if NoOfEntries >= 10000 then
//                                           FlushAnalysisViewEntry;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not TempAnalysisViewEntry.ReadPermission then            // added by santus 20-10-05
//                                           exit;

//                                         #1..43
//                                       END;

//                          Target=UpdateAnalysisViewEntry(PROCEDURE 3) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         TempAnalysisViewBudgetEntry."Analysis View Code" := AnalysisView.Code;
//                                         TempAnalysisViewBudgetEntry."Budget Name" := GLBudgetEntry."Budget Name";
//                                         TempAnalysisViewBudgetEntry."Business Unit Code" := GLBudgetEntry."Business Unit Code";
//                                         #4..25
//                                         end;
//                                         if NoOfEntries >= 10000 then
//                                           FlushAnalysisViewBudgetEntry;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not TempAnalysisViewBudgetEntry.ReadPermission then            // added by santus 20-10-05
//                                           exit;

//                                         #1..28
//                                       END;

//                          Target=UpdateAnalysisViewBudgetEntry(PROCEDURE 18) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         if PostingDate = ClosingDate(PostingDate) then
//                                           exit(PostingDate);

//                                         #4..23
//                                             end;
//                                         end;
//                                         exit(PostingDate);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not AnalysisView.ReadPermission then            // added by santus 20-10-05
//                                           exit;

//                                         #1..26
//                                       END;

//                          Target=CalculatePeriodStart(PROCEDURE 4) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         if ShowProgressWindow then
//                                           Window.Update(6,Text011);
//                                         if TempAnalysisViewEntry.FindSet then
//                                         #4..27
//                                         NoOfEntries := 0;
//                                         if ShowProgressWindow then
//                                           Window.Update(6,Text010);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not TempAnalysisViewEntry.ReadPermission then            // added by santus 20-10-05
//                                           exit;

//                                         #1..30
//                                       END;

//                          Target=FlushAnalysisViewEntry(PROCEDURE 5) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         if ShowProgressWindow then
//                                           Window.Update(6,Text011);
//                                         if TempAnalysisViewBudgetEntry.FindSet then
//                                         #4..14
//                                         NoOfEntries := 0;
//                                         if ShowProgressWindow then
//                                           Window.Update(6,Text010);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not TempAnalysisViewBudgetEntry.ReadPermission then            // added by santus 20-10-05
//                                           exit;

//                                         #1..17
//                                       END;

//                          Target=FlushAnalysisViewBudgetEntry(PROCEDURE 25) }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         AnalysisView.SetRange("Last Budget Entry No.",NewLastBudgetEntryNo + 1,2147483647);
//                                         AnalysisView.SetRange("Include Budgets",true);
//                                         if AnalysisView.FindSet(true,true) then
//                                           repeat
//                                             AnalysisView2 := AnalysisView;
//                                             AnalysisView2."Last Budget Entry No." := NewLastBudgetEntryNo;
//                                             AnalysisView2.Modify;
//                                           until AnalysisView.Next = 0;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         if not AnalysisView.ReadPermission then            // added by santus 20-10-05
//                                           exit;

//                                         #1..8
//                                       END;

//                          Target=SetLastBudgetEntryNo(PROCEDURE 16) }
//   }
//   CODE
  
// }

