report 50005 "Points Summary VJ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PointsSummaryVJ.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Posting Date", "Job No.") ORDER(Ascending) WHERE("Location Code" = FILTER(<> 'CRM-ASL'), "Reason Code" = FILTER('CATCH'), "Gen. Prod. Posting Group" = FILTER('FIS'));
            RequestFilterFields = "Posting Date";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(Get_Filter; 'Filters  := ' + GetFilters())
            {
            }
            column(Job_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Job_Ledger_Entry__Posting_Date__Control11; "Posting Date")
            {
            }
            column(Job_Ledger_Entry__Total_Price_; "Total Price")
            {
            }
            column(No_JobLedgerEntry; "Job Ledger Entry"."No.")
            {
            }
            column(VesselCount; VesselCount)
            {
            }
            column(TotalFor; TotalFor)
            {
            }
            column(Job_Ledger_Entry__Total_Price__Control17; "Total Price")
            {
            }
            column(Job_Ledger_Entry__Posting_Date__Control1000000000; "Posting Date")
            {
            }
            column(VesselCount_Control1000000007; VesselCount)
            {
            }
            column(DayofTide__Day_of_tide_; DayofTide."Day of tide")
            {
            }
            column(AvgPt; AvgPt)
            {
            }
            column(WHOQty; WHOQty)
            {
            }
            column(BHOQty; BHOQty)
            {
            }
            column(WTQty; WTQty)
            {
            }
            column(GrandTot; GrandTot)
            {
            }
            column("Average"; Average)
            {
            }
            column(CountDays; CountDays)
            {
            }
            column(Points_Summary_ReportCaption; Points_Summary_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_Entry__Posting_Date__Control11Caption; FieldCaption("Posting Date"))
            {
            }
            column(Total_PointsCaption; Total_PointsCaptionLbl)
            {
            }
            column(Vessel_CountCaption; Vessel_CountCaptionLbl)
            {
            }
            column(Day_of_TideCaption; Day_of_TideCaptionLbl)
            {
            }
            column(Avg__PointsCaption; Avg__PointsCaptionLbl)
            {
            }
            column(WHOCaption; WHOCaptionLbl)
            {
            }
            column(BHOCaption; BHOCaptionLbl)
            {
            }
            column(WTCaption; WTCaptionLbl)
            {
            }
            column(Job_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            column(Average_PointsCaption; Average_PointsCaptionLbl)
            {
            }
            column(CountDaysCaption; CountDaysCaptionLbl)
            {
            }
            column(Job_Ledger_Entry_Job_No_; "Job Ledger Entry"."Job No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                WHOQty := 0;
                BHOQty := 0;
                WTQty := 0;

                // CountDays := 1;

                LastFieldNo := FieldNo("Job No.");

                JobLedgerEntry.CopyFilters("Job Ledger Entry");
                JobLedgerEntry.SetCurrentKey("Posting Date", "Job No.");
                RecCount := JobLedgerEntry.Count;

                GrandTot := "Job Ledger Entry"."Total Price" + GrandTot;

                GrandTot := GrandTot * (-1);
                iCount := iCount + 1;

                if (PrevDate = 0D) or (PrevDate <> "Posting Date") then begin
                    VesselCount := 1;
                    PrevDate := "Posting Date";
                    PreJob := "Job No.";
                    TempJob.DeleteAll;
                end;
                if PreJob <> "Job No." then begin
                    PreJob := "Job No.";
                    VesselCount += 1
                end;

                if (PrevDate <> "Posting Date") and (PreJob <> "Job No.") then begin
                    VesselCount := VesselCount + 1;
                    PreJob := "Job No.";
                    PrevDate := "Posting Date";
                end;

                //IF CurrReport.SHOWOUTPUT THEN BEGIN

                if not TempJob.Get("Job No.") then begin
                    JobLedgerEntry.Reset;
                    JobLedgerEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date", "Work Type Code", Type);
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Job No.", "Job Ledger Entry"."Job No.");
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Location Code", '<>%1', 'CRM-ASL');
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Work Type Code", 'WHO');
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Posting Date", '%1', "Job Ledger Entry"."Posting Date");
                    JobLedgerEntry.SetFilter(JobLedgerEntry.Type, '%1', JobLedgerEntry.Type::Item);
                    JobLedgerEntry.SetRange(JobLedgerEntry."Gen. Prod. Posting Group", 'FIS');
                    JobLedgerEntry.SetRange(JobLedgerEntry."Reason Code", 'CATCH');
                    if JobLedgerEntry.FindFirst then
                        repeat
                            WHOQty := WHOQty + JobLedgerEntry.Quantity * (-1);
                        until JobLedgerEntry.Next = 0;

                    JobLedgerEntry.Reset;
                    JobLedgerEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date", "Work Type Code", Type);
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Job No.", "Job Ledger Entry"."Job No.");
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Location Code", '<>%1', 'CRM-ASL');
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Work Type Code", 'BHO');
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Posting Date", '%1', "Job Ledger Entry"."Posting Date");
                    JobLedgerEntry.SetFilter(JobLedgerEntry.Type, '%1', JobLedgerEntry.Type::Item);
                    JobLedgerEntry.SetRange(JobLedgerEntry."Gen. Prod. Posting Group", 'FIS');
                    JobLedgerEntry.SetRange(JobLedgerEntry."Reason Code", 'CATCH');
                    if JobLedgerEntry.FindFirst then
                        repeat
                            BHOQty := BHOQty + JobLedgerEntry.Quantity * (-1);
                        until JobLedgerEntry.Next = 0;

                    JobLedgerEntry.Reset;
                    JobLedgerEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date", "Work Type Code", Type);
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Job No.", "Job Ledger Entry"."Job No.");
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Location Code", '<>%1', 'CRM-ASL');
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Work Type Code", 'WT');
                    JobLedgerEntry.SetFilter(JobLedgerEntry."Posting Date", '%1', "Job Ledger Entry"."Posting Date");
                    JobLedgerEntry.SetFilter(JobLedgerEntry.Type, '%1', JobLedgerEntry.Type::Item);
                    JobLedgerEntry.SetRange(JobLedgerEntry."Gen. Prod. Posting Group", 'FIS');
                    JobLedgerEntry.SetRange(JobLedgerEntry."Reason Code", 'CATCH');
                    if JobLedgerEntry.FindFirst then
                        repeat
                            WTQty := WTQty + JobLedgerEntry.Quantity * (-1);
                        until JobLedgerEntry.Next = 0;

                    TempJob.Init;
                    TempJob."No." := "Job No.";
                    TempJob.Insert;
                end;

                if CountDays <> 0 then
                    Average := GrandTot / CountDays;

                if CurrReport.ShowOutput then
                    "Job Ledger Entry"."Total Price" := "Job Ledger Entry"."Total Price" * (-1);

                if VesselCount <> 0 then
                    AvgPt := "Job Ledger Entry"."Total Price" / VesselCount;

                if DayofTide.Get("Posting Date") then;
                //VesselCount :=  VesselCount+1;


                /*IF CurrReport.SHOWOUTPUT THEN
                 CountDays := CountDays + 1;*/
                if CountDays <> 0 then
                    Average := GrandTot / CountDays;

                iCount := iCount + 1;

            end;

            trigger OnPreDataItem()
            var
                FromDate: Date;
                ToDate: Date;
            begin
                if "Job Ledger Entry".GetFilter("Job Ledger Entry"."Posting Date") = '' then
                    "Job Ledger Entry".SetFilter("Posting Date", '%1', Today);

                //"Job Ledger Entry"."Posting Date" := WORKDATE;
                FromDate := GetRangeMin("Posting Date");
                ToDate := GetRangeMax("Posting Date");
                if FromDate = ToDate then
                    CountDays := 1
                else
                    CountDays := ToDate - FromDate + 1;

                if VesselCount <> 0 then
                    AvgPt := "Job Ledger Entry"."Total Price" / VesselCount;

                if DayofTide.Get("Posting Date") then;
                //VesselCount := 0;

                LastFieldNo := FieldNo("Job No.");


                JobLedgerEntry.CopyFilters("Job Ledger Entry");
                JobLedgerEntry.SetCurrentKey("Posting Date", "Job No.");
                RecCount := JobLedgerEntry.Count;
                //CountDays := 0;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        Bold := true;
        UnderLine := true;
        Italic := true;
        TopPage := true;
        PageOrientation := 1;
        FontSize := 7;
    end;

    var
        DateFilter: Text[30];
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        BodyPrinted: Boolean;
        GroupHeaderPrinted: Boolean;
        GrandTot: Decimal;
        "Average": Decimal;
        CountDays: Integer;
        VesselCount: Integer;
        Window: Dialog;
        RecCount: Integer;
        iCount: Integer;
        JobLedgerEntry: Record "Job Ledger Entry";
        DayofTide: Record "Day of Tide";
        DayofTideDesc: Code[15];
        AvgPt: Decimal;
        WHOQty: Decimal;
        BHOQty: Decimal;
        WTQty: Decimal;
        "------------------------------": Integer;
        // xlApp: Automation BC;
        // xlBook: Automation BC;
        // //**R  xlSheet: Automation BC;
        Send2Excel: Boolean;
        TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        Points_Summary_ReportCaptionLbl: Label 'Points Summary Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Total_PointsCaptionLbl: Label 'Total Points';
        Vessel_CountCaptionLbl: Label 'Vessel Count';
        Day_of_TideCaptionLbl: Label 'Day of Tide';
        Avg__PointsCaptionLbl: Label 'Avg. Points';
        WHOCaptionLbl: Label 'WHO';
        BHOCaptionLbl: Label 'BHO';
        WTCaptionLbl: Label 'WT';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Average_PointsCaptionLbl: Label 'Average Points';
        CountDaysCaptionLbl: Label 'No. of Days';
        GrandTotal1: Decimal;
        Count1: Decimal;
        total112: Decimal;
        TempJob: Record Job temporary;
        PrevDate: Date;
        PreJob: Code[20];
        Date: Integer;

    [Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin
        // //**R  xlSheet.Range(GetCol(Col) + Format(Row)).Value := ValueText;
        // if Bold then
        //     //**R  xlSheet.Range(GetCol(Col) + Format(Row)).Font.Bold := Bold;
        // if Italic then
        //     //**R  xlSheet.Range(GetCol(Col) + Format(Row)).Font.Italic := Italic;
        // if Underline then
        //     //**R  xlSheet.Range(GetCol(Col) + Format(Row)).Font.Underline := Underline;
        // //**R  xlSheet.Range(GetCol(Col) + Format(Row)).Font.Size := FontSize;

    end;

    [Scope('OnPrem')]
    procedure GetCol(CN: Integer): Text[30]
    var
        xlColID: Text[10];
        x: Integer;
        c: Integer;
        i: Integer;
    begin
        xlColID := '';
        if CN <> 0 then begin
            x := CN - 1;
            c := 65 + x mod 26;
            xlColID[10] := c;
            i := 10;
            while x > 25 do begin
                x := x div 26;
                i := i - 1;
                c := 64 + x mod 26;
                xlColID[i] := c;
            end;
            for x := i to 10 do
                xlColID[1 + x - i] := xlColID[x];
        end;
        exit(xlColID);
    end;
}

