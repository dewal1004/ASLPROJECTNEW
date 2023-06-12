/// <summary>
/// Codeunit AssemblyPostSubscriber (ID 50022).
/// </summary>
CodeUnit 50022 "AssemblyPostSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Assembly-Post", 'OnBeforePostItemConsumption', '', true, true)]
    local procedure MyProcedure(var ItemJournalLine: Record "Item Journal Line")
    begin
    end;
}