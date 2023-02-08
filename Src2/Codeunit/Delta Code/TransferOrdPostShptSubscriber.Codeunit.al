codeunit 50032 "TransferOrdPostShptSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    var
        KeepShipmentDates: Boolean;

    procedure SetRecalculateShipmentDates(Recalculate: Boolean)
    begin
        KeepShipmentDates := not Recalculate;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Available to Promise", 'OnAfterCalcGrossRequirement', '', true, true)]
    local procedure AvailabletoPromiseOnAfterCalcGrossRequirement(var GrossRequirement: Decimal; var Item: Record Item)
    begin
        GrossRequirement -= (Item."Planning Issues (Qty.)" + item."Qty. on Service Order");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Available to Promise", 'OnAfterCalcReservedRequirement', '', true, true)]
    local procedure AvailabletoPromiseOnAfterCalcReservedRequirement(var ReservedRequirement: Decimal; var Item: Record Item)
    begin
        ReservedRequirement -= Item."Res. Qty. on Service Orders";
    end;

}


// OBJECT Modification "Available to Promise"(Codeunit 5790)
// {
//   OBJECT-PROPERTIES
//   CHANGES
//   {
    // { Refactor: CodeModification  ;OriginalCode=BEGIN
    //                                     if SalesLine."Requested Delivery Date" = 0D then
    //                                       exit(SalesLine."Shipment Date");

    //                                     SalesLine."Planned Delivery Date" := SalesLine."Requested Delivery Date";
    //                                     if Format(SalesLine."Shipping Time") <> '' then
    //                                       SalesLine."Planned Shipment Date" := SalesLine.CalcPlannedDeliveryDate(SalesLine.FieldNo("Planned Delivery Date"))
    //                                     else
    //                                       SalesLine."Planned Shipment Date" := SalesLine.CalcPlannedShptDate(SalesLine.FieldNo("Planned Delivery Date"));
    //                                     exit(SalesLine.CalcShipmentDate);
    //                                   END;

    //                      ModifiedCode=BEGIN
    //                                     if KeepShipmentDates then
    //                                       exit(SalesLine."Shipment Date");
    //                                     if SalesLine."Requested Delivery Date" <> 0D then begin
    //                                       SalesLine.SuspendStatusCheck(true);
    //                                       SalesLine.SetHideValidationDialog(true);
    //                                       SalesLine.Validate("Requested Delivery Date",SalesLine."Requested Delivery Date");
    //                                     end;
    //                                     exit(SalesLine."Shipment Date");
    //                                   END;

    //                      Target=CalcReqShipDate(PROCEDURE 10) }
    // { Refactor (intoPermission): CodeModification  ;OriginalCode=BEGIN
    //                                     with PlanningComp do
    //                                       if FindLinesWithItemToPlan(Item) then
    //                                         repeat
    //                                           CalcFields("Reserved Qty. (Base)");
    //                                           UpdateGrossRequirement(AvailabilityAtDate,"Due Date","Expected Quantity (Base)" - "Reserved Qty. (Base)");
    //                                         until Next = 0;
    //                                   END;

    //                      ModifiedCode=BEGIN
    //                                     if PlanningComp.ReadPermission then // AAA
    //                                     #1..6
    //                                   END;
//                      Target=UpdatePlanningIssuesAvail(PROCEDURE 22) }
    // { Refactor (intoPermission): CodeModification  ;OriginalCode=BEGIN
    //                                     with ServLine do
    //                                       if FindLinesWithItemToPlan(Item) then
    //                                         repeat
    //                                           CalcFields("Reserved Qty. (Base)");
    //                                           UpdateGrossRequirement(AvailabilityAtDate,"Needed by Date","Outstanding Qty. (Base)" - "Reserved Qty. (Base)");
    //                                         until Next = 0;
    //                                   END;
    //                      ModifiedCode=BEGIN
    //                                     if ServLine.ReadPermission then // AAA
    //                                     #1..6
    //                                   END;
    //                      Target=UpdateServOrderAvail(PROCEDURE 24) }
    //                     }
    