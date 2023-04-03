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
    var
        Item: Record Item;
        ItemCategory: Record "Item Category";
        User: Record User;
        Job: Record Job;
        InvtrSetUp: Record "Inventory Setup";
    begin
        if JobJournalLine.type = JobJournalLine.type::item then begin
            Item.Get(JobJournalLine."No.");
            JobJournalLine."Work Type Code" := Item."Item Category Code";
            if ItemCategory.Get(JobJournalLine."Work Type Code") and ItemCategory.HasChildren() then begin
                // JobJournalLine."Task Code" := ItemCategory.;  assign the first child  //Revisit
                ;
            end;

            IF Item."Gen. Prod. Posting Group" = 'FIS' THEN
                JobJournalLine.FindItemPoints;
            JobJournalLine."Statistics Group" := Item."Statistics Group";
            JobJournalLine.WorkTypeCode(JobJournalLine."No.");
        end;

        //Location Fixg
        IF (JobJournalLine."Location Code" = '') THEN
            IF User.GET(USERID) THEN
                IF true THEN BEGIN //User."Shortcut Dimension 1 Code" = 'MRKT' ///Refactor
                    InvtrSetUp.GET;
                    JobJournalLine."Location Code" := InvtrSetUp."Default Cold Room";
                END ELSE
                    IF (Job.GET(JobJournalLine."Job No.")) AND (Job.Vessel <> '') THEN
                        JobJournalLine."Location Code" := Job.Vessel;

        IF (JobJournalLine.Type = JobJournalLine.Type::Item) AND (JobJournalLine."No." <> '') THEN BEGIN
            // GLAcc."Global Dimension 2 Code" := Job."Global Dimension 2 Code"; ///Refactor
            ;
        end;

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

    // procedure FindItemPoints()
    // var
    //     ItemPoints: Record "Item Points";
    //     ItemFindPoints: Codeunit "Item-Find Point";
    // begin
    //     ItemPoints.Init;
    //     // ItemPoints."Item No." := "No.";
    //     // ItemPoints."Price Group Code" := "Customer Price Group";
    //     // ItemPoints."Unit of Measure Code" := "Unit of Measure Code";
    //     // ItemPoints."Starting Date" := "Posting Date";
    //     // ItemFindPoints.Run(ItemPoints);
    //     // ItemPoints.TestField("Price Includes VAT", false);
    //     // //***GetGLSetup;
    //     // "Unit Price" := ItemPoints."Unit Price";
    //     // if ItemPoints."Unit of Measure Code" = '' then
    //     //     "Unit Price" :=
    //     //       Round(
    //     //         "Unit Price" * "Qty. per Unit of Measure",
    //     //         GLSetup."Unit-Amount Rounding Precision");
    //     // Validate("Unit Price");
    // end;


}