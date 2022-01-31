codeunit 50020 SalesPostPrepaymentsSubscriber
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post Prepayments", 'OnAfterCheckPrepmtDoc', '', true, true)]
    local procedure MyProcedure()
    begin
        
    end;

    
    
}