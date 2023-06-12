/// <summary>
/// CodeUnit AvailableMgmtSubscriber (ID 50030).
/// </summary>
CodeUnit 50030 "AvailableMgmtSubscriber"
{
    Permissions = 
        TableData Item = R;
  [EventSubscriber(ObjectType::CodeUnit, CodeUnit::"Available Management", 'OnAfterCalcAvailableQty', '', true, true)]
  local procedure AvailableMgmtOnAfterCalcAvailableQty(var Item: Record Item; var AvailableQty: Decimal)
  begin
    Item.CalcFields("Qty. on Service Order");
    AvailableQty -= Item."Qty. on Service Order";
  end;
}
