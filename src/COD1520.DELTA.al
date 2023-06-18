// OBJECT Modification "Workflow Event Handling"(Codeunit 1520)
// {
//   OBJECT-PROPERTIES
//   {
//     Date=20190324D;
//     Time=120000T;
//     Version List=NAVW114.00;
//   }
//   PROPERTIES
//   {
//     Target="Workflow Event Handling"(Codeunit 1520);
//   }
//   CHANGES
//   {
//     { PropertyModification;
//                          Target=RunWorkflowOnAfterPostPurchaseDoc(PROCEDURE 5).PurchaseHeader(Parameter 1000);
//                          Property=Name;
//                          OriginalValue=PurchaseHeader;
//                          ModifiedValue=Sender }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         case PurchaseHeader."Document Type" of
//                                           PurchaseHeader."Document Type"::Order,PurchaseHeader."Document Type"::Invoice:
//                                             begin
//                                               if PurchInvHeader.Get(PurchInvHdrNo) then
//                                                 WorkflowManagement.HandleEvent(RunWorkflowOnAfterPostPurchaseDocCode,PurchInvHeader);
//                                             end;
//                                         end;
//                                       END;

//                          ModifiedCode=BEGIN
//                                         case Sender."Document Type" of
//                                           Sender."Document Type"::Order,Sender."Document Type"::Invoice:
//                                         #3..7
//                                       END;

//                          Target=RunWorkflowOnAfterPostPurchaseDoc(PROCEDURE 5) }
//   }
//   CODE
//   {
//     BEGIN
//     END.
//   }
// }
