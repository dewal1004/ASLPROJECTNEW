codeunit 50013 FormatAddressSubscriber
{
  EventSubscriberInstance = StaticAutomatic;

  [EventSubscriber(ObjectType::Codeunit, Codeunit::"Format Address",'OnAfterGeneratePostCodeCity' , '', true, true)]
  local procedure MyProcedure(var Country: Record "Country/Region"; var PostCodeCityText: Text[100]; var PostCode: Code[20]; var City: Text[50])
  begin
    if Country."Address Format" =  Country."Address Format"::"City Only" then
    BEGIN
      IF PostCode <> '' THEN
        PostCodeCityText := DELSTR(City,MAXSTRLEN(PostCodeCityText) - STRLEN(PostCode) - 1)
      ELSE
        PostCodeCityText := City;
    END;
    
  end;
}