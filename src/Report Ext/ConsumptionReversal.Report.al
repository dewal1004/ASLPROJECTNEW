report 99898 "Consumption Reversal"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ConsumptionReversal.rdlc';

    dataset
    {
        dataitem(Job; Job)
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", Points, "Ending Date";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Job__No__; "No.")
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Global_Dimension_2_Code_; "Global Dimension 2 Code")
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Voyage_Consumption_ReversalCaption; Voyage_Consumption_ReversalCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Global_Dimension_2_Code_Caption; FieldCaption("Global Dimension 2 Code"))
            {
            }
            column(Job_Bill_to_Customer_No_; "Bill-to Customer No.")
            {
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", "Entry Type", Type, "Gen. Prod. Posting Group", "No.") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'), Type = FILTER(Item));
                column(Job_Ledger_Entry__Entry_No__; "Entry No.")
                {
                }
                column(Job_Ledger_Entry__Job_No__; "Job No.")
                {
                }
                column(Job_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Job_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Job_Ledger_Entry_Type; Type)
                {
                }
                column(Job_Ledger_Entry__No__; "No.")
                {
                }
                column(Job_Ledger_Entry_Quantity; Quantity)
                {
                }
                column(Job_Ledger_Entry__Unit_Cost__LCY__; "Unit Cost (LCY)")
                {
                }
                column(Job_Ledger_Entry__Total_Cost__LCY__; "Total Cost (LCY)")
                {
                }
                column(Job_Ledger_Entry__Total_Cost__LCY___Control1000000030; "Total Cost (LCY)")
                {
                }
                column(Job_Ledger_Entry__Unit_Cost__LCY___Control1000000031; "Unit Cost (LCY)")
                {
                }
                column(Job_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
                {
                }
                column(Job_Ledger_Entry__Total_Cost__LCY__Caption; FieldCaption("Total Cost (LCY)"))
                {
                }
                column(Job_Ledger_Entry__Unit_Cost__LCY__Caption; FieldCaption("Unit Cost (LCY)"))
                {
                }
                column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
                {
                }
                column(Job_Ledger_Entry_TypeCaption; FieldCaption(Type))
                {
                }
                column(Job_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(Job_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
                {
                }
                column(Job_Ledger_Entry__Entry_No__Caption; FieldCaption("Entry No."))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    count_current := count_current + 1;
                    d.Open('Processing item #1######### - #2### of #3### - #4### pct.');
                    d.Update(1, "No.");
                    d.Update(2, count_current);
                    d.Update(3, count_record);
                    d.Update(4, Round(count_current * 100 / count_record, 0.01));

                    Icount[2] := Icount[2] + 10;
                    JobJL.Init;
                    JobJL."Journal Template Name" := 'JOB';
                    JobJL."Journal Batch Name" := Job."No." + 'REVS';
                    JobJL."Line No." := Icount[2];
                    JobJL."Posting Date" := "Posting Date";
                    JobJL."Document Date" := "Document Date";
                    JobJLX.Init;

                    //JobJL.SetUpNewLine(JobJL);
                    JobJL."Document No." := Job."No.";
                    JobJL."Job No." := Job."No.";
                    JobJL.Type := 1;
                    JobJL.Validate(JobJL."No.", "No.");
                    // JobJL.VALIDATE(JobJL."Profit %"); // & u
                    JobJL.Description := Description;
                    JobJL.Validate(JobJL.Quantity, Quantity * -1);
                    JobJL."Location Code" := Job.Vessel;
                    JobJL."External Document No." := Job.Vessel;
                    JobJL."Reason Code" := 'USAGEVES';
                    JobJL."Shortcut Dimension 2 Code" := Job."Global Dimension 2 Code";
                    JobJL."Shortcut Dimension 1 Code" := Job."Global Dimension 1 Code";
                    JobJL."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                    JobJL."Gen. Bus. Posting Group" := 'CONSPJ';
                    JobJL.Validate(JobJL."Applies-to Entry", "Entry No.");
                    JobJL.Validate(JobJL."Unit Cost (LCY)", "Unit Cost (LCY)");
                    JobJL.Validate(JobJL."Unit Price (LCY)", "Unit Price (LCY)");

                    if not JobJL.Insert then JobJL.Modify;
                end;

                trigger OnPreDataItem()
                begin
                    JobJB.Init;
                    JobJB."Journal Template Name" := 'JOB';
                    JobJB.Name := Job."No." + 'REVS';
                    JobJB."Voyage No." := Job."Voyage No.";
                    JobJB."Job No." := Job.Vessel;
                    if Loc.Get(Job.Vessel) then JobJB."Vessel Name" := Loc.Name;
                    JobJB."No. Series" := '';
                    JobJB."Batch Type" := 3;
                    if not JobJB.Insert then JobJB.Modify;
                    count_record := Count;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                /*Job.TESTFIELD(Job.Status,2);
                MESSAGE('Sea Days is %1 ',Job."Sea Days");
                IF NOT CONFIRM('has the ending date been Updated',FALSE) THEN CurrReport.QUIT;
                */

            end;

            trigger OnPostDataItem()
            begin
                "Voyage Ended" := true;
                Modify();
            end;

            trigger OnPreDataItem()
            begin
                Icount[1] := 10000;
                Icount[2] := 10000;
                JNo := Job.GetFilter(Job."No.");
                if JNo = '' then Error('Please, remember to enter the Job No.');
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

    var
        d: Dialog;
        JobJB: Record "Job Journal Batch";
        JobJL: Record "Job Journal Line";
        JobJL2: Record "Job Journal Line";
        JobJLX: Record "Job Journal Line";
        Loc: Record Location;
        Icount: array[2] of Integer;
        LocCd: Code[10];
        I: Code[10];
        RES: Record Resource;
        JNo: Code[10];
        JobSetup: Record "Jobs Setup";
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        InctvCat: Code[20];
        Ended: Boolean;
        count_record: Decimal;
        count_current: Decimal;
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Voyage_Consumption_ReversalCaptionLbl: Label 'Voyage Consumption Reversal';
}

