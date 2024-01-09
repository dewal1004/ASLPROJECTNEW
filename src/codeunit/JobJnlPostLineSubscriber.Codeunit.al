codeunit 50025 "JobJnlPostLineSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Jnl.-Post Line", 'OnCreateJobLedgEntryOnBeforeAssignQtyCostPrice', '', true, true)]
    local procedure JobJnlPostLineOnCreateJobLedgEntryOnBeforeAssignQtyCostPrice(var JobLedgEntry: Record "Job Ledger Entry"; JobJournalLine: Record "Job Journal Line")
    var
    begin
        if JobJournalLine.Type = JobJournalLine.Type::Item then
            JobLedgEntry."Vessel Type" := JobJournalLine."Vessel Type";

        JobLedgEntry."Phase Code" := JobJournalLine."Phase Code";
        JobLedgEntry."Task Code" := JobJournalLine."Task Code";
        JobLedgEntry."Catch Sea Days" := JobJournalLine."Catch Sea Days";
        JobLedgEntry."Vessel Type" := JobJournalLine."Vessel Type";
        if JobLedgEntry."Entry Type" <> JobLedgEntry."Entry Type"::Sale then begin
            JobLedgEntry.GroupSort := JobJournalLine.Groupsort;
            JobLedgEntry."Inventory Posting Group" := JobJournalLine."Posting Group";
        End
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Jnl.-Post Line", 'OnPostItemOnBeforeAssignItemJnlLine', '', true, true)]
    local procedure JobJnlPostLineOnPostItemOnBeforeAssignItemJnlLine(var ItemJnlLine: Record "Item Journal Line"; var JobJournalLine2: Record "Job Journal Line")
    var
        JobPlanningLine: Record "Job Planning Line";
        ApplyToJobContractEntryNo: Boolean;
    begin
        ApplyToJobContractEntryNo := false;
        if JobPlanningLine.Get(JobJournalLine2."Job No.", JobJournalLine2."Job Task No.", JobJournalLine2."Job Planning Line No.") then
            ApplyToJobContractEntryNo := true
        else
            if JobPlanningReservationExists(JobJournalLine2."No.", JobJournalLine2."Job No.") then
                if ApplyToMatchingJobPlanningLine(JobJournalLine2, JobPlanningLine) then
                    ApplyToJobContractEntryNo := true;

        if ApplyToJobContractEntryNo then
            ItemJnlLine."Job Contract Entry No." := JobPlanningLine."Job Contract Entry No.";
    end;

    local procedure JobPlanningReservationExists(ItemNo: Code[20]; JobNo: Code[20]): Boolean
    var
        ReservationEntry: Record "Reservation Entry";
        Job: Record job;
    begin
        ReservationEntry.SetRange("Item No.", ItemNo);
        ReservationEntry.SetRange("Source Type", DATABASE::"Job Planning Line");
        ReservationEntry.SetRange("Source Subtype", Job.Status::"Open");
        ReservationEntry.SetRange("Source ID", JobNo);
        exit(not ReservationEntry.IsEmpty);
    end;

    local procedure ApplyToMatchingJobPlanningLine(var JobJnlLine: Record "Job Journal Line"; var JobPlanningLine: Record "Job Planning Line"): Boolean
    var
        Job: Record Job;
        JobLedgEntry: Record "Job Ledger Entry";
        JobTransferLine: Codeunit "Job Transfer Line";
        JobLinkUsage: Codeunit "Job Link Usage";
    begin
        if JobLedgEntry."Entry Type" <> JobLedgEntry."Entry Type"::Usage then
            exit(false);

        Job.Get(JobJnlLine."Job No.");
        JobLedgEntry.Init();
        JobTransferLine.FromJnlLineToLedgEntry(JobJnlLine, JobLedgEntry);
        JobLedgEntry.Quantity := JobJnlLine.Quantity;
        JobLedgEntry."Quantity (Base)" := JobJnlLine."Quantity (Base)";

        if JobLinkUsage.FindMatchingJobPlanningLine(JobPlanningLine, JobLedgEntry) then begin
            JobJnlLine.Validate("Job Planning Line No.", JobPlanningLine."Line No.");
            JobJnlLine.Modify(true);
            exit(true);
        end;
        exit(false);
    end;
}