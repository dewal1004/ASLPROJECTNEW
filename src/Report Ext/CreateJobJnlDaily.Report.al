report 90011 "CreateJobJnl Daily"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CreateJobJnlDaily.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Posting Date");

            trigger OnAfterGetRecord()
            begin
                /*JobJnlLine."Journal Template Name" := 'JOB2';
                JobJnlLine."Journal Batch Name" := 'CATCH';
                JobJnlLine."Line No." := LineNo;
                JobJnlLine.VALIDATE(JobJnlLine."Job No.","Job Ledger Entry"."Job No.");
                JobJnlLine."Posting Date" := "Posting Date";
                JobJnlLine."Document No." := "Document No.";
                JobJnlLine.Type := Type;
                JobJnlLine.VALIDATE(JobJnlLine."No.","No.");         //Updates JobJnlLine."Task Code"
                JobJnlLine."Resource Group No." := '';
                JobJnlLine.VALIDATE(JobJnlLine."Location Code","Location Code");
                JobJnlLine."Unit of Measure Code" := "Unit of Measure Code";
                JobJnlLine."Phase Code" := "Phase Code";
                JobJnlLine."Source Code" := "Source Code";
                JobJnlLine."Catch Sea Days" := "Catch Sea Days";
                JobJnlLine."Step Code" := "Step Code";
                JobJnlLine.VALIDATE(JobJnlLine.Quantity,"Job Ledger Entry".Quantity);
                JobJnlLine."Work Type Code" := "Job Ledger Entry"."Work Type Code";
                JobJnlLine.VALIDATE(JobJnlLine."Unit Cost (LCY)","Unit Cost (LCY)");
                JobJnlLine.VALIDATE(JobJnlLine."Unit Price (LCY)","Unit Price (LCY)");
                JobJnlLine.VALIDATE(JobJnlLine."Shortcut Dimension 2 Code","Global Dimension 2 Code");
                JobJnlLine.Groupsort := GroupSort;
                JobJnlLine."Entry Type" := "Entry Type";
                JobJnlLine."Posting Group" := "Job Posting Group";
                JobJnlLine."Gen. Bus. Posting Group" := "Gen. Bus. Posting Group";
                JobJnlLine."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                JobJnlLine."Reason Code" := "Reason Code";
                IF NOT JobJnlLine.INSERT THEN JobJnlLine.MODIFY;
                LineNo := LineNo + 10;*///dik

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

