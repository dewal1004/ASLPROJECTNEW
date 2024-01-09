codeunit 50008 "ResJnlCheckLineSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Res. Jnl.-Check Line", 'OnBeforeRunCheck', '', true, true)]
    local procedure ResJnlCheckLineOnBeforeRunCheck(var ResJournalLine: Record "Res. Journal Line")
    var
        Text50000: Label 'cannot be empty';
        GLSetup: Record "General Ledger Setup";

    begin
        GLSetup.Get();

        if ResJournalLine.EmptyLine() then
            exit;

        if ResJournalLine."Gen. Prod. Posting Group" = '' then
            ResJournalLine.FieldError("Gen. Prod. Posting Group", Text50000);
    end;
}