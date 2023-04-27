report 50182 "Catch Reconciliatn Posted"
{
    // Before Running this report for a new Job
    // Run Report 50152 to update the GroupSort field for the Job
    // U need only do this once or whenevever there is a change in
    // GroupSort.
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/CatchReconciliatnPosted.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.";
            column(USERID; UserId)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Job_Job__Starting_Date_; Job."Starting Date")
            {
            }
            column(Engr; Engr)
            {
            }
            column(Job_Job__Sea_Days_; Job."Sea Days")
            {
            }
            column(Resp; Resp)
            {
            }
            column(Job_Job__Ending_Date_; Job."Ending Date")
            {
            }
            column(Vessl; Vessl)
            {
            }
            column(Job_Job__Voyage_No__; Job."Voyage No.")
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_EntryCaption; Job_Ledger_EntryCaptionLbl)
            {
            }
            column(Job_Job__Sea_Days_Caption; Job_Job__Sea_Days_CaptionLbl)
            {
            }
            column(EngrCaption; EngrCaptionLbl)
            {
            }
            column(Job_Job__Ending_Date_Caption; Job_Job__Ending_Date_CaptionLbl)
            {
            }
            column(RespCaption; RespCaptionLbl)
            {
            }
            column(Job_Job__Starting_Date_Caption; Job_Job__Starting_Date_CaptionLbl)
            {
            }
            column(Job_Job__Voyage_No__Caption; Job_Job__Voyage_No__CaptionLbl)
            {
            }
            column(VesslCaption; VesslCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No."), "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", GroupSort, "No.") WHERE("Gen. Prod. Posting Group" = CONST('FIS'));
                RequestFilterFields = "Job No.", "Location Code", "Work Type Code";
                column(HD1; HD1)
                {
                }
                column(HD2; HD2)
                {
                }
                column(HD3; HD3)
                {
                }
                column(Job_Ledger_Entry__Job_No__; "Job No.")
                {
                }
                column(COPYSTR_GroupSort_5_; CopyStr(GroupSort, 5))
                {
                }
                column(Job_Ledger_Entry__No__; "No.")
                {
                }
                column(Job_Ledger_Entry_Description; Description)
                {
                }
                column(Job_Ledger_Entry_Quantity; Quantity)
                {
                    DecimalPlaces = 2 : 2;
                }
                column(Job_Ledger_Entry_Quantity_Control1000000032; Quantity)
                {
                    DecimalPlaces = 2 : 2;
                }
                column(Catch_1_; Catch[1])
                {
                }
                column(Catch_2_; Catch[2])
                {
                }
                column(Job_Ledger_Entry__No___Control1000000000; "No.")
                {
                }
                column(Job_Ledger_Entry_Description_Control1000000010; Description)
                {
                }
                column(COPYSTR_GroupSort_5__Control1000000007; CopyStr(GroupSort, 5))
                {
                }
                column(Job_Ledger_Entry_Quantity_Control1000000012; Quantity)
                {
                    DecimalPlaces = 2 : 2;
                }
                column(Catch_2__Control1000000013; Catch[2])
                {
                }
                column(Catch_1__Control1000000015; Catch[1])
                {
                }
                column(TotalFor___FIELDCAPTION__Job_No___; TotalFor + FieldCaption("Job No."))
                {
                }
                column(Job_Ledger_Entry_Quantity_Control1000000011; Quantity)
                {
                    DecimalPlaces = 2 : 2;
                }
                column(Catch_1__Control1000000016; Catch[1])
                {
                }
                column(Catch_2__Control1000000019; Catch[2])
                {
                }
                column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
                {
                }
                column(Job_Ledger_Entry_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
                {
                }
                column(Job_Ledger_Entry_Entry_No_; "Job Ledger Entry"."Job No.")
                {
                }
                column(Job_Ledger_Entry_GroupSort; GroupSort)
                {
                }
                column(Job_Ledger_Entry_Document_No_; "Document No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    Quantity := -Quantity;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Work Type Code");
                    CurrReport.CreateTotals(Catch[1], Catch[2]);
                end;
            }

            trigger OnPreDataItem()
            begin
                if Res.Get(Job."Person Responsible") then Resp := Res.Name else Resp := Job."Person Responsible";
                if Locat.Get(Job.Vessel) then Vessl := Locat.Name else Vessl := Job.Vessel;
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
        /*JobJnlLineFilter := "Job Journal Line".GETFILTERS;
        JNo:="Job Journal Line".GETFILTER("Job Journal Line"."Job No.");
        OpBudgLn.SETFILTER(OpBudgLn."Job No.",JNo);
        OpBudgLn.SETFILTER(OpBudgLn."Resource Group",'CENG','ENG2');
        IF OpBudgLn.FIND('-') THEN Engr:=OpBudgLn.Description;
        */

    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        Catch: array[3] of Decimal;
        CT: Integer;
        T: Label 'Total for  ';
        HD1: Label 'Vessel Catch Report (VCR)';
        HD2: Label 'Actual Catch Landed (ACL)';
        HD3: Label 'Variance (ACL-VCR)';
        Res: Record Resource;
        Locat: Record Location;
        Vessl: Text[30];
        Resp: Text[30];
        Engr: Text[30];
        JobJnlLineFilter: Text[500];
        ShowD: Boolean;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Job_Ledger_EntryCaptionLbl: Label 'Job Ledger Entry';
        Job_Job__Sea_Days_CaptionLbl: Label 'Sea Days:';
        EngrCaptionLbl: Label 'Engineer:';
        Job_Job__Ending_Date_CaptionLbl: Label 'ETA:';
        RespCaptionLbl: Label 'Skipper:';
        Job_Job__Starting_Date_CaptionLbl: Label 'ETD:';
        Job_Job__Voyage_No__CaptionLbl: Label 'Voyage No.:';
        VesslCaptionLbl: Label 'Vessel Name:';
}

