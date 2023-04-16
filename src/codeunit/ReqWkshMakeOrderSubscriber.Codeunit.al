codeunit 50012 "ReqWkshMakeOrderSubscriber"
{
  EventSubscriberInstance = StaticAutomatic;

[EventSubscriber(ObjectType::Codeunit, Codeunit::"Req. Wksh.-Make Order", 'OnAfterCheckReqWkshLine', '', true, true)]
  local procedure MyProcedure()
  begin
    //Resolved in Standard system
    // if "Action Message" <> "Action Message"::Cancel then
    //   TestField(Quantity);
  end;
}