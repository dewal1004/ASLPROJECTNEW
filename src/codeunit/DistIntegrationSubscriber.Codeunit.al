codeunit 50031 "DistIntegrationSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Reference Management", 'OnBeforeEnterSalesItemReference', '', true, true)]
    local procedure DistIntegrationSubscriberOnBeforeEnterSalesItemReference(var ItemReference: Record "Item Reference"; var IsHandled: Boolean)
    begin
        if not ItemReference.ReadPermission then
            IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Reference Management", 'OnAfterPurchItemReferenceFound', '', true, true)]
    local procedure DistIntegrationSubscriber(ItemReference: Record "Item Reference")
    begin
        if not ItemReference.ReadPermission then
            Exit; //Refactor
    end;
}