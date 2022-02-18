codeunit 50033 InventoryPostingToGLSubcriber
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inventory Posting To G/L", 'OnPostInvtPostBufOnAfterInitGenJnlLine', '', true, true)]
    local procedure InventoryPostingToGLOnPostInvtPostBufOnAfterInitGenJnlLine(var GenJournalLine: Record "Gen. Journal Line"; var ValueEntry: Record "Value Entry")
    begin
        GenJournalLine."Maintenance Code" := ValueEntry."Maintenance Code";
    end;
}
