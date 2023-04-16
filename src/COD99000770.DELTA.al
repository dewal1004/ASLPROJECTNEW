// OBJECT Modification "Where-Used Management"(Codeunit 99000770)
// {
//   PROPERTIES
//   {
//     Target="Where-Used Management"(Codeunit 99000770);
//   }
//   CHANGES
//   {
//     { Redundant: CodeModification  ;OriginalCode=BEGIN
//                                         WhereUsedList.Copy(WhereUsedList2);
//                                         if not WhereUsedList.Find(Which) then
//                                           exit(false);
//                                         WhereUsedList2 := WhereUsedList;

//                                         exit(true);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         WhereUsedList := WhereUsedList2;
//                                         #2..6
//                                       END;

//                          Target=FindRecord(PROCEDURE 2) }
//     { Redundant: CodeModification  ;OriginalCode=BEGIN
//                                         WhereUsedList.Copy(WhereUsedList2);
//                                         CurrentSteps := WhereUsedList.Next(Steps);
//                                         if CurrentSteps <> 0 then
//                                           WhereUsedList2 := WhereUsedList;

//                                         exit(CurrentSteps);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         WhereUsedList := WhereUsedList2;
//                                         #2..6
//                                       END;

//                          Target=NextRecord(PROCEDURE 3) }
//   }
//   CODE
//   {

//     BEGIN
//     END.
//   }
// }

