report 90012 "CreateJobJnl Daily2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/CreateJobJnlDaily2.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Posting Date");
            RequestFilterFields = "Job No.";

            trigger OnAfterGetRecord()
            begin
                JobJnlLine."Journal Template Name" := 'JOB2';
                JobJnlLine."Journal Batch Name" := 'CATCH';
                JobJnlLine."Line No." := LineNo;
                JobJnlLine.Validate(JobJnlLine."Job No.", "Job Ledger Entry"."Job No.");
                JobJnlLine."Posting Date" := "Posting Date";
                JobJnlLine."Document No." := "Document No.";
                JobJnlLine.Type := Type;
                JobJnlLine.Validate(JobJnlLine."No.", "No.");         //Updates JobJnlLine."Task Code"
                JobJnlLine."Resource Group No." := '';
                JobJnlLine.Validate(JobJnlLine."Location Code", "Location Code");
                JobJnlLine."Unit of Measure Code" := "Unit of Measure Code";
                //JobJnlLine."Phase Code" := "Phase Code"; //AA
                JobJnlLine."Source Code" := "Source Code";
                JobJnlLine."Catch Sea Days" := "Catch Sea Days";
                //JobJnlLine."Step Code" := "Step Code"; //AA
                JobJnlLine.Validate(JobJnlLine.Quantity, "Job Ledger Entry".Quantity);
                JobJnlLine."Work Type Code" := "Job Ledger Entry"."Work Type Code";
                JobJnlLine.Validate(JobJnlLine."Unit Cost (LCY)", "Unit Cost (LCY)");
                JobJnlLine.Validate(JobJnlLine."Unit Price (LCY)", "Unit Price (LCY)");
                JobJnlLine.Validate(JobJnlLine."Shortcut Dimension 2 Code", "Global Dimension 2 Code");
                JobJnlLine.Groupsort := GroupSort;
                JobJnlLine."Entry Type" := "Entry Type";
                JobJnlLine."Posting Group" := "Job Posting Group";
                JobJnlLine."Gen. Bus. Posting Group" := "Gen. Bus. Posting Group";
                JobJnlLine."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                JobJnlLine."Reason Code" := "Reason Code";
                if not JobJnlLine.Insert then JobJnlLine.Modify;
                LineNo := LineNo + 10;
            end;

            trigger OnPreDataItem()
            begin
                JobJnlLine2.SetRange(JobJnlLine2."Journal Template Name", 'JOB2');
                JobJnlLine2.SetRange(JobJnlLine2."Journal Batch Name", 'CATCH');
                if JobJnlLine2.Find('+') then
                    LineNo := JobJnlLine2."Line No." + 10
                else
                    LineNo := 100;

                //"Job Ledger Entry".SETRANGE("Posting Date",011213D,Job."Ending Date");
                "Job Ledger Entry".SetRange("Posting Date", FromDate, ToDate);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        if (FromDate = 0D) or (ToDate = 0D) then
            Error('Pls specify date filters!');

        JobJnlBatch."Journal Template Name" := 'JOB2';
        JobJnlBatch.Name := 'CATCH';
        if JobJnlBatch.Insert then;
    end;

    var
        JobJnlLine: Record "Job Journal Line";
        JobJnlLine2: Record "Job Journal Line";
        JobJnlBatch: Record "Job Journal Batch";
        LineNo: Integer;
        FromDate: Date;
        ToDate: Date;
}

