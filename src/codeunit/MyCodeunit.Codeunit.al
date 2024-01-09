codeunit 50026 "MyCodeunit"
{
    EventSubscriberInstance = StaticAutomatic;

    //Looks more like moving of CU around and nothg more.

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Report Mgt.", 'OnAfterConvertToPdf', '', true, true)]
    local procedure MyProcedure()
    begin
    end;
}