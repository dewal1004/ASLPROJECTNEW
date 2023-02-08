codeunit 50027 "ConfigValidateMgmtSubcriber"
{
    EventSubscriberInstance = StaticAutomatic;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Report Mgt.", 'OnAfterConvertToPdf', '', true, true)]
    local procedure MyProcedure()
    begin
        
    end;

    
    
}