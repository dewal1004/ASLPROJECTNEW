codeunit 50040 "Job Journal Line Subscriber"
{
    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Table, Database::"Job Journal Line", 'OnBeforeValidateWorkTypeCode', '', true, true)]
    local procedure JobJournalLineOnBeforeValidateWorkTypeCode(var JobJournalLine: Record "Job Journal Line"; var IsHandled: Boolean)
    begin
        if JobJournalLine.Type = JobJournalLine.Type::Item then
            IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Job Journal Line", 'OnValidateNoOnBeforeValidateQuantity', '', true, true)]
    local procedure JobJournalLineOnValidateNoOnBeforeValidateQuantity(var JobJournalLine: Record "Job Journal Line")
    begin
        IF JobJournalLine.Catch <> 0 THEN
            JobJournalLine.Quantity := JobJournalLine.Catch * -1;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Job Journal Line", 'OnAfterSetUpNewLine', '', true, true)]
    local procedure JobJournalLineOnAfterSetUpNewLine(LastJobJournalLine: Record "Job Journal Line"; var JobJournalLine: Record "Job Journal Line"; JobJournalBatch: Record "Job Journal Batch")
    begin
        IF LastJobJournalLine."Job No." <> '' THEN
            JobJournalLine."Job No." := LastJobJournalLine."Job No.";
        IF LastJobJournalLine."Location Code" <> '' THEN
            JobJournalLine."Location Code" := LastJobJournalLine."Location Code";
        IF LastJobJournalLine."Job Task No." <> '' THEN
            JobJournalLine."Job Task No." := LastJobJournalLine."Job Task No.";

        JobJournalLine."External Document No." := JobJournalBatch."Voyage No.";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Job Journal Line", 'OnAfterValidateEvent', 'Bin Code', true, true)]
    local procedure JobJournalLineOnAfterValidateEventBinCode(var Rec: Record "Job Journal Line")
    begin
        Rec."Unit of Measure Code" := Rec."Bin Code";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Job Journal Line", 'OnValidateVariantCodeOnBeforeValidateQuantity', '', true, true)]
    local procedure JobJournalLineOnValidateVariantCodeOnBeforeValidateQuantity(var JobJournalLine: Record "Job Journal Line"; xJobJournalLine: Record "Job Journal Line")
    var
        ItemVariant: Record "Item Variant";
    begin
        ItemVariant.GET(JobJournalLine."No.", JobJournalLine."Variant Code");
        IF ItemVariant.Description = '' THEN
            JobJournalLine.Description := xJobJournalLine.Description;
        JobJournalLine."Description 2" := xJobJournalLine."Description 2";
    end;

}