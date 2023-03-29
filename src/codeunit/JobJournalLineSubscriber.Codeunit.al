codeunit 50040 "Job Journal Line Subscriber"
{
    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Table, Database::"Job Journal Line", 'OnAfterSetUpNewLine', '', true, true)]
    local procedure JobJournalLineOnAfterSetUpNewLine(LastJobJournalLine: Record "Job Journal Line"; var JobJournalLine: Record "Job Journal Line")
    begin
        IF LastJobJournalLine."Job No." <> '' THEN
          JobJournalLine."Job No." := LastJobJournalLine."Job No.";
        IF LastJobJournalLine."Location Code" <> '' THEN
          JobJournalLine."Location Code" := LastJobJournalLine."Location Code";
        IF LastJobJournalLine."Job Task No." <> '' THEN
          JobJournalLine."Job Task No." := LastJobJournalLine."Job Task No.";
        
    end;
    
}