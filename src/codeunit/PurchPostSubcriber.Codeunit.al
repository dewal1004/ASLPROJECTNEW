codeunit 50019 "PurchPostSubcriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforeUpdateBlanketOrderLine', '', true, true)]
    local procedure PurchPostOnBeforeUpdateBlanketOrderLine(PurchLine: Record "Purchase Line")
    begin
        if PurchLine."Document Type" in [PurchLine."Document Type"::"Return Order", PurchLine."Document Type"::"Credit Memo"] then
            exit;
    end;
}