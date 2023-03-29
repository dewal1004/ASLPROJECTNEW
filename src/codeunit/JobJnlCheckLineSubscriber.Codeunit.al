codeunit 50024 "JobJnlCheckLineSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Jnl.-Check Line", 'OnRunCheckOnBeforeTestFieldJobStatus', '', true, true)]
    local procedure JobJnlCheckLineOnRunCheckOnBeforeTestFieldJobStatus(var JobJnlLine: Record "Job Journal Line"; var IsHandled: Boolean)
    var
        Job: Record Job;
    begin
        Job.Get(JobJnlLine."Job No.");
        Job.TestField(Status, Job.Status::"Open");
        IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Jnl.-Check Line", 'OnBeforeCheckItemQuantityJobJnl', '', true, true)]
    local procedure JobJnlCheckLineOnBeforeCheckItemQuantityJobJnl(var JobJnlLine: Record "Job Journal Line"; var IsHandled: Boolean)
    var
        Item: Record Item;
        Job: Record Job;
        Text004: Label 'You must post more usage of %1 %2 in %3 %4 before you can post job journal %5 %6 = %7.', Comment = '%1=Item;%2=JobJnlline."No.";%3=Job;%4=JobJnlline."Job No.";%5=JobJnlline."Journal Batch Name";%6="Line No";%7=JobJnlline."Line No."';

    begin
        if JobJnlline.IsNonInventoriableItem then
            exit;

        Job.Get(JobJnlline."Job No.");
        if (Job.GetQuantityAvailable(JobJnlline."No.", JobJnlline."Location Code", JobJnlline."Variant Code", 0, 2) +
            JobJnlline."Quantity (Base)") = 0
        then
            ;
        IsHandled := true;
    end;

    
}