codeunit 50023 "JobTransferLineSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Transfer Line", 'OnAfterFromJnlLineToLedgEntry', '', true, true)]
    local procedure JobTransferLineOnAfterFromJnlLineToLedgEntry(var JobLedgerEntry: Record "Job Ledger Entry"; JobJournalLine: Record "Job Journal Line")
    begin
        JobLedgerEntry."Vessel Type" := JobJournalLine."Vessel Type";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Transfer Line", 'OnAfterFromPlanningSalesLineToJnlLine', '', true, true)]
    local procedure JobTransferLineOnAfterFromPlanningSalesLineToJnlLine(var JobJnlLine: Record "Job Journal Line"; SalesHeader: Record "Sales Header")
    begin
        JobJnlLine."Document Date" := SalesHeader."Posting Date";
    end;
}