report 50001 "New Daily Points Report Fast"
{
    // UNL-ASL3.60.01.004 (Santus) May 11, 2005
    // -> modified report to write output data to the Entry/Exit Table. the data will be stored as historical data.
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/NewDailyPointsReportFast.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    Caption = 'New Daily Points Report';

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                if not Historical then begin
                    JobsPointVal.SetCurrentKey(JobsPointVal.Vessel, JobsPointVal.Status);
                    JobsPointVal.SetRange(JobsPointVal.Status, 2);
                end;

                if RepDate <> 0D then
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1', RepDate)
                else
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1..%2', 19800101D, Today);

                //MESSAGE('Report Date is %1',RepDate);
                if JobsPointVal.FindFirst then
                    repeat
                        //JobsPointVal.CALCFIELDS(JobsPointVal.Points);
                        //IF JobsPointVal.Points <>0 THEN ; //MESSAGE('Val is %1',JobsPointVal.Points);
                        JobsPointVal."Points Sort Bay" := JobsPointVal.PointZ(JobsPointVal."No.", '',
                           JobsPointVal.GetFilter("Posting Date Filter"), '', '', '', JobsPointVal.Vessel);//JobsPointVal.Points;
                        JobsPointVal.Modify();
                    until JobsPointVal.Next = 0;
            end;

            trigger OnPreDataItem()
            begin
                Countz := 0;
            end;
        }
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING("Points Sort Bay", Status) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Consolidated_Daily_Points_Report_As_On_____FORMAT_Workdat_0_4_; 'Consolidated Daily Points Report As On : ' + Format(Workdat, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Day_of_Tide____DOT; 'Day of Tide: ' + DOT)
            {
            }
            column(S_No; "Sno.")
            {
            }
            column(Countz; Countz)
            {
            }
            column(Desc; Desc)
            {
            }
            column(Job__Fishing_Country_Code_; Job."Fishing Country Code")
            {
            }
            column(Skipper; Skipper)
            {
            }
            column(SeArea; SeArea)
            {
            }
            column(SeTemp; SeTemp)
            {
            }
            column(pts_1_; pts[1])
            {

            }
            column(pts_3_; pts[3])
            {

            }
            column(pts_2_; pts[2])
            {

            }
            column(pts_7_; pts[7])
            {

            }
            column(pts_8_; pts[8])
            {

            }
            column(pts_9_; pts[9])
            {

            }
            column(pts_4_; pts[4])
            {

            }
            column(pts_5_; pts[5])
            {

            }
            column(pts_6_; pts[6])
            {

            }
            column(SeaDays; SeaDays)
            {
            }
            column(TotPts_1_; TotPts[1])
            {

            }
            column(TotPts_2_; TotPts[2])
            {

            }
            column(TotPts_3_; TotPts[3])
            {

            }
            column(TotPts_4_; TotPts[4])
            {

            }
            column(TotPts_5_; TotPts[5])
            {

            }
            column(TotPts_6_; TotPts[6])
            {

            }
            column(TotPts_7_; TotPts[7])
            {

            }
            column(TotPts_8_; TotPts[8])
            {

            }
            column(TotPts_9_; TotPts[9])
            {

            }
            column(TotPtsA_1_; TotPtsA[1])
            {

            }
            column(TotPtsA_2_; TotPtsA[2])
            {

            }
            column(TotPtsA_3_; TotPtsA[3])
            {

            }
            column(TotPtsA_4_; TotPtsA[4])
            {

            }
            column(TotPtsA_5_; TotPtsA[5])
            {

            }
            column(TotPtsA_6_; TotPtsA[6])
            {

            }
            column(TotPtsA_7_; TotPtsA[7])
            {

            }
            column(TotPtsA_8_; TotPtsA[8])
            {

            }
            column(TotPtsA_9_; TotPtsA[9])
            {

            }
            column(SeaDaysTot; SeaDaysTot)
            {

            }
            column(SeaTempA; SeaTempA)
            {
            }
            column(SeaDayA; SeaDayA)
            {

            }
            column(OperationCaption; OperationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sr__No_Caption; Sr__No_CaptionLbl)
            {
            }
            column(VesselCaption; VesselCaptionLbl)
            {
            }
            column(CountryCaption; CountryCaptionLbl)
            {
            }
            column(SkipperCaption; SkipperCaptionLbl)
            {
            }
            column(Sea_DaysCaption; Sea_DaysCaptionLbl)
            {
            }
            column(AreaCaption; AreaCaptionLbl)
            {
            }
            column(Sea_Temp__CCaption; Sea_Temp__CCaptionLbl)
            {
            }
            column(Shrimp_PtsCaption; Shrimp_PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption; Fish_PtsCaptionLbl)
            {
            }
            column(PtsCaption; PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption_Control1000000010; Fish_PtsCaption_Control1000000010Lbl)
            {
            }
            column(Shrimp_PtsCaption_Control1000000011; Shrimp_PtsCaption_Control1000000011Lbl)
            {
            }
            column(Day_PtsCaption; Day_PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption_Control1000000016; Fish_PtsCaption_Control1000000016Lbl)
            {
            }
            column(Shrimp_PtsCaption_Control1000000017; Shrimp_PtsCaption_Control1000000017Lbl)
            {
            }
            column(PtsCaption_Control1000000031; PtsCaption_Control1000000031Lbl)
            {
            }
            column(DaysCaption; DaysCaptionLbl)
            {
            }
            column(CumulativeCaption; CumulativeCaptionLbl)
            {
            }
            column(AverageCaption; AverageCaptionLbl)
            {
            }
            column(AVERAGECaption_Control1000000043; AVERAGECaption_Control1000000043Lbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }
            column(FishingCountry; CountryCount)
            {
            }
            column(g_No; g_NoTot[1])
            {
            }
            column(g_No_2; g_NoTot[2])
            {
            }
            column(g_No_3; g_NoTot[3])
            {
            }
            column(g_No_4; g_NoTot[4])
            {
            }
            column(g_No_5; g_NoTot[5])
            {
            }
            column(g_No_6; g_NoTot[6])
            {
            }
            column(g_No_7; g_NoTot[7])
            {
            }
            column(g_No_8; g_NoTot[8])
            {
            }
            column(g_No_9; g_NoTot[9])
            {
            }
            column(jb; 1)
            {
            }

            trigger OnAfterGetRecord()
            begin
                HistoricalData.Reset;
                //MESSAGE('%1',Historical);
                //IF CurrReport.SHOWOUTPUT THEN BEGIN
                //MESSAGE('TEST',Historical);
                HistoricalData.SetRange(HistoricalData."Report Type", HistoricalData."Report Type"::Points);
                HistoricalData.SetRange(HistoricalData.Date, RepDate);
                HistoricalData.SetRange(HistoricalData.Vessel, Desc);
                HistoricalData.SetRange(HistoricalData.Type, HistoricalData.Type::" ");
                if HistoricalData.Find('-') then begin
                    HistoricalData."Day Fish Pts" := pts[1];
                    HistoricalData."Day Shrimp Pts" := pts[2];
                    HistoricalData."Day Points" := pts[3];
                    HistoricalData."Cumm. Fish Pts" := pts[4];
                    HistoricalData."Cumm. Shrimp Pts" := pts[5];
                    HistoricalData."Cumm. Total Pts" := pts[6];
                    HistoricalData."Avg Fish Pts" := pts[7];
                    HistoricalData."Avg Shrimp Pts" := pts[8];
                    HistoricalData."Total Avg Pts" := pts[9];
                    //MESSAGE('Modify %1',RepDate);
                    HistoricalData.Modify;
                end else begin
                    //MESSAGE('Insert %1',RepDate);
                    HistoricalData.Init;
                    HistoricalData."Report Type" := HistoricalData."Report Type"::Points;
                    HistoricalData.Date := RepDate;
                    HistoricalData.Vessel := Desc;
                    HistoricalData.Type := 0;
                    HistoricalData.Country := Job."Fishing Country Code";
                    HistoricalData.Skipper := Skipper;
                    HistoricalData."Sea Days" := SeaDays;
                    HistoricalData."Sea Area" := SeArea;
                    HistoricalData."Day Fish Pts" := pts[1];
                    HistoricalData."Day Shrimp Pts" := pts[2];
                    HistoricalData."Day Points" := pts[3];
                    HistoricalData."Cumm. Fish Pts" := pts[4];
                    HistoricalData."Cumm. Shrimp Pts" := pts[5];
                    HistoricalData."Cumm. Total Pts" := pts[6];
                    HistoricalData."Avg Fish Pts" := pts[7];
                    HistoricalData."Avg Shrimp Pts" := pts[8];
                    HistoricalData."Total Avg Pts" := pts[9];
                    HistoricalData.Insert(true);
                end;
                //END;




                /*IF Loc.GET(Vessel) THEN
                  Desc := Loc.Name;*/  //#1

                if RepDate <> 0D then
                    Workdat := RepDate
                else
                    Workdat := Today;

                j := 1;
                repeat
                    pts[j] := 0;
                    j := j + 1;
                until j = 10;

                SeTemp := '';
                SeArea := '';
                job1.Get(Job."No.");
                job1.SetRange(job1."Task Filter");
                job1.SetRange(job1."Posting Date Filter");

                JobLdgr.SetCurrentKey(JobLdgr."Job No.", JobLdgr."Posting Date");
                JobLdgr.SetFilter(JobLdgr."Job No.", job1."No.");
                JobLdgr.SetRange(JobLdgr."Posting Date", Workdat);
                JobLdgr.SetRange(JobLdgr.Type, 0, 1);
                if JobLdgr.FindLast then begin
                    //SeTemp:= JobLdgr."Step Code"; #1 //No comment in 3.0
                    SeArea := JobLdgr."Phase Code";
                    "Sno." += 1;
                    Desc := '';
                end else begin

                    CurrReport.Skip;
                end;

                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job1.SetRange(job1."Posting Date Filter", 0D, Workdat);
                //job1.CALCFIELDS(job1.Points);
                pts[6] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', '', '', job1.Vessel);  //job1.Points;

                job1.SetFilter(job1."Task Filter", 'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[5] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'SHR', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[4] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'FIS', '', job1.Vessel); //job1.Points;


                TotPts[4] += pts[4];
                TotPts[5] += pts[5];
                //Average
                //AAA* IF  job1."Starting Date"<>0D THEN SeaDays:=TODAY-job1."Starting Date" ELSE SeaDays:=0;
                if job1."Starting Date" <> 0D then
                    SeaDays := Workdat - job1."Starting Date"
                else
                    SeaDays := 0;

                if SeaDays <> 0 then begin
                    pts[9] := pts[6] / SeaDays;
                    pts[8] := pts[5] / SeaDays;
                    pts[7] := pts[4] / SeaDays
                end;
                AvgPtSortBay := pts[9];
                Modify;

                //Daily
                job1.SetFilter(job1."Posting Date Filter", '=%1', Workdat);
                job1.SetRange(job1."Task Filter");
                //job1.CALCFIELDS(job1.Points);
                pts[3] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', '', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[2] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'SHR', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[1] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'FIS', '', job1.Vessel);//job1.Points;

                TotPts[1] += pts[1];
                TotPts[2] += pts[2];
                //No Catch Record Exist
                job1.SetRange(job1."Task Filter");
                //job1.SETRANGE(job1."Type Filter",0); #1//Noi comment in3.0
                job1.CalcFields(job1.NoCatchExist);
                NoCatch := job1.NoCatchExist;

                //SeaDaysTot:=SeaDaysTot+SeaDays;

                if Countz <> 0 then begin
                    SeaTempA := SeaTemp / Countz;
                    SeaDayA := Round(SeaDaysTot / Countz, 1, '<');
                end
                else begin
                    SeaTempA := 0;
                    SeaDayA := 0;
                end;
                //Message('Total Sea Temp is %1, Counter is %2',SeaTemp,Countz);
                k := 0;
                repeat
                    k := k + 1;
                    if CountCum[k] <> 0 then TotPtsA[k] := TotPts[k] / CountCum[k] else TotPtsA[k] := 0;
                until k = 9;

                if Loc.Get(JobLdgr."Location Code") then
                    Desc := Loc.Name;


                Eval := Evaluate(SeTempVal, SeTemp);
                SeaTemp := SeaTemp + SeTempVal;
                if Resource.Get(Job."Person Responsible") then
                    Skipper := Resource.Name
                else
                    Skipper := "Person Responsible";

                Country1 := false;
                if Job."Fishing Country Code" <> ' ' then
                    Country1 := true;

                if Countz <> 0 then begin
                    SeaTempA := SeaTemp / Countz;
                    SeaDayA := Round(SeaDaysTot / Countz, 1, '<');
                end
                else begin
                    SeaTempA := 0;
                    SeaDayA := 0;
                end;
                /*CountryCount := 0;
                Job.SETRANGE(Job."Fishing Country Code",job1."Fishing Country Code");
                IF Job.FINDFIRST THEN BEGIN
                  CountryCount := Job.COUNT;
                END;*/
                g_NoTot[1] := 0;

                if (pts[1] = 0) and (pts[2] = 0) then
                    g_No[1] += 1;
                g_NewCount[1] := "Sno." - g_No[1];
                g_NoTot[1] := Round(TotPts[1] / g_NewCount[1], 2);

                g_NoTot[2] := 0;
                if (pts[1] = 0) and (pts[2] = 0) then
                    g_No[2] += 1;
                g_NewCount[2] := "Sno." - g_No[2];
                g_NoTot[2] := Round(TotPts[2] / g_NewCount[2], 2);


                g_NoTot[3] := g_NoTot[1] + g_NoTot[2];

                g_NoTot[4] := 0;
                if (pts[4] = 0) and (pts[5] = 0) then
                    g_No[4] += 1;
                g_NewCount[4] := "Sno." - g_No[4];
                g_NoTot[4] := Round(TotPts[4] / g_NewCount[4], 2);

                g_NoTot[5] := 0;
                if (pts[4] = 0) and (pts[5] = 0) then
                    g_No[5] += 1;
                g_NewCount[5] := "Sno." - g_No[5];
                g_NoTot[5] := Round(TotPts[5] / g_NewCount[5], 2);

                g_NoTot[6] := g_NoTot[4] + g_NoTot[5];

                g_NoTot[7] := 0;
                if (pts[7] = 0) and (pts[8] = 0) then
                    g_No[7] += 1;
                g_NewCount[7] := "Sno." - g_No[7];
                g_NoTot[7] := Round(TotPts[7] / g_NewCount[7], 2);

                g_NoTot[8] := 0;
                if (pts[7] = 0) and (pts[8] = 0) then
                    g_No[8] += 1;
                g_NewCount[8] := "Sno." - g_No[8];
                g_NoTot[8] := Round(TotPts[8] / g_NewCount[8], 2);

                g_NoTot[9] := g_NoTot[7] + g_NoTot[8];

            end;

            trigger OnPostDataItem()
            begin
                pts[6] := pts[4] + pts[5];
                SetFilter(AvgPtSortBay, '<>0');
                SetFilter("Points Sort Bay", '<>0');
                SetRange("Fishing Country Code", '');
                //MESSAGE('Total no of Rec %1',COUNT);
                Medn := Round(Count / 2, 1, '<');
                //Sort Data Based on Average Points
                SetCurrentKey(AvgPtSortBay);
                if Find('+') then;
                Next(-Medn);
                MednVoy[2] := "No.";

                /*IF ((ROUND(COUNT/2,1,'>'))-(ROUND(COUNT/2,1,'<')))=0 THEN
                NEXT(-1);
                MednVoy[1]:="No.";
                //MESSAGE('Voyages are %1 and %2',MednVoy[1],MednVoy[2])
                */



                //Message('Total Sea Temp is %1, Counter is %2',SeaTemp,Countz);

            end;

            trigger OnPreDataItem()
            begin
                SetFilter("Starting Date", '<=%1', RepDate);//ETD= Starting Date
                SetFilter("Ending Date", '>=%1', RepDate);  //ETA= Ending Date
                "Sno." := 0;
                if not Historical then SetRange(Status, 2);
                SetFilter(AvgPtSortBay, '<>0');
                if Find('-') then
                    repeat
                        AvgPtSortBay := 0;
                        Modify();
                    until Next = 0;
                SetFilter(AvgPtSortBay, '');
                if Find('-') then;
                if ((pts[1] = 0) and (pts[2] = 0) and (not NoCatch)) then
                    CurrReport.ShowOutput(false)
                else begin
                    SeaDaysTot := SeaDaysTot + SeaDays;
                    Countz := Countz + 1;
                    I := 0;
                    repeat
                        I := I + 1;
                        TotPts[I] := TotPts[I] + pts[I];
                        if pts[I] <> 0 then
                            CountCum[I] := CountCum[I] + 1;
                    //MESSAGE('Value for row %1 Col %2 is %3',Countz,I,CountCum[I]);
                    until I = 9;
                end;




                g_No[1] := 0;
                g_No[2] := 0;
                g_No[3] := 0;
                g_No[4] := 0;
                g_No[5] := 0;
                g_No[6] := 0;
                g_No[7] := 0;
                g_No[8] := 0;
                g_No[9] := 0;
            end;
        }
        dataitem(Job2; Job)
        {
            DataItemTableView = SORTING("Fishing Country Code", AvgPtSortBay) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
            column(Job2__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Job2__Fishing_Country_Code__Control1000000060; "Fishing Country Code")
            {
            }
            column(Job2_Vessel; Vessel)
            {
            }
            column(Job2__No__; "No.")
            {
            }
            column(CountJ; CountJ)
            {
            }
            column(pts_1__Control1000000064; pts[1])
            {

            }
            column(pts_2__Control1000000065; pts[2])
            {

            }
            column(pts_3__Control1000000066; pts[3])
            {

            }
            column(pts_4__Control1000000067; pts[4])
            {

            }
            column(pts_5__Control1000000068; pts[5])
            {

            }
            column(pts_6__Control1000000069; pts[6])
            {

            }
            column(pts_7__Control1000000070; pts[7])
            {

            }
            column(pts_8__Control1000000071; pts[8])
            {

            }
            column(pts_9__Control1000000072; pts[9])
            {

            }
            column(UPPERCASE_FishCountry_; UpperCase(FishCountry))
            {
            }
            column(CountJ_Control1000000050; CountJ)
            {
            }
            column(pts_1__Control1000000051; pts[1])
            {

            }
            column(pts_2__Control1000000052; pts[2])
            {

            }
            column(pts_3__Control1000000053; pts[3])
            {

            }
            column(pts_4__Control1000000054; pts[4])
            {

            }
            column(pts_5__Control1000000055; pts[5])
            {

            }
            column(pts_6__Control1000000056; pts[6])
            {

            }
            column(pts_7__Control1000000057; pts[7])
            {

            }
            column(pts_8__Control1000000058; pts[8])
            {

            }
            column(pts_9__Control1000000059; pts[9])
            {

            }
            column(pts_10_; pts[10])
            {

            }
            column(AverageCaption_Control1000000075; AverageCaption_Control1000000075Lbl)
            {
            }
            column(Job2__Fishing_Country_Code_Caption; FieldCaption("Fishing Country Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin

                if RepDate <> 0D then
                    Workdat := RepDate
                else
                    Workdat := Today;

                if RepDate <> 0D then
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1', RepDate)
                else
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1..%2', 19800101D, Today);

                sea += SeaDays;
                if "Sno." <> 0 then
                    AVG := Round(sea / "Sno.");

                j := 1;
                repeat
                    pts[j] := 0;
                    j := j + 1;
                until j = 11;


                job3.Get(Job2."No.");
                job3.SetRange(job3."Task Filter");
                job3.SetRange(job3."Posting Date Filter");

                JobLdgr.SetCurrentKey(JobLdgr."Job No.", JobLdgr."Posting Date");
                JobLdgr.SetFilter(JobLdgr."Job No.", job3."No.");
                JobLdgr.SetRange(JobLdgr."Posting Date", 0D, Workdat);
                JobLdgr.SetRange(JobLdgr.Type, 0, 1);
                if JobLdgr.Find('+') then begin
                    //SeTemp:= JobLdgr."Step Code";#1 // no comment in 3.0
                    SeArea := JobLdgr."Phase Code";
                end
                else begin
                    SeTemp := '';
                    SeArea := '';
                end;


                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job3.SetRange(job3."Posting Date Filter", 0D, Workdat);
                //job3.CALCFIELDS(job3.Points);
                pts[6] := job3.PointZ(job3."No.", '', job3.GetFilter("Posting Date Filter"), '', '', '', job3.Vessel);//job3.Points;


                job3.SetFilter(job3."Task Filter", 'SHR');
                //job3.CALCFIELDS(job3.Points);
                pts[5] := job3.PointZ(job3."No.", '', job3.GetFilter("Posting Date Filter"), '', 'SHR', '', job3.Vessel);//job3.Points;

                job3.SetFilter(job3."Task Filter", 'FIS');
                //job3.CALCFIELDS(job3.Points);
                pts[4] := job3.PointZ(job3."No.", '', job3.GetFilter("Posting Date Filter"), '', 'FIS', '', job3.Vessel);//job3.Points;


                //Average
                //AAA* IF  job3."Starting Date"<>0D THEN SeaDays:=TODAY-job3."Starting Date" ELSE SeaDays:=0;
                if job3."Starting Date" <> 0D then
                    SeaDays := Workdat - job3."Starting Date"
                else
                    SeaDays := 0;

                if SeaDays <> 0 then begin
                    pts[9] := pts[6] / SeaDays;
                    pts[8] := pts[5] / SeaDays;
                    pts[7] := pts[4] / SeaDays;

                    TotPts[7] += pts[7];
                    TotPts[8] += pts[8]
                end;

                //Daily
                job3.SetFilter(job3."Posting Date Filter", '=%1', Workdat);
                job3.SetRange(job3."Task Filter");
                //job3.CALCFIELDS(job3.Points);
                pts[3] := job3.PointZ(job3."No.", '', job3.GetFilter("Posting Date Filter"), '', '', '', job3.Vessel);//job3.Points;

                job3.SetFilter(job3."Task Filter", 'SHR');
                //job3.CALCFIELDS(job3.Points);
                pts[2] := job3.PointZ(job3."No.", '', job3.GetFilter("Posting Date Filter"), '', 'SHR', '', job3.Vessel);//job3.Points;

                job3.SetFilter(job3."Task Filter", 'FIS');
                //job3.CALCFIELDS(job3.Points);
                pts[1] := job3.PointZ(job3."No.", '', job3.GetFilter("Posting Date Filter"), '', 'FIS', '', job3.Vessel);//job3.Points;

                if pts[3] = 0 then CurrReport.Skip;

                //No Catch Record Exist
                job3.SetRange(job3."Task Filter");
                //job3.SETRANGE(job3."Type Filter",0); #1 no comment in 3.0
                job3.CalcFields(job3.NoCatchExist);
                NoCatch := job3.NoCatchExist;

                pts[10] := SeaDays;
                if "Fishing Country Code" = '' then
                    FishCountry := 'NIGERIA'
                else
                    if Country.Get("Fishing Country Code") then
                        FishCountry := Country.Name;
            end;

            trigger OnPreDataItem()
            begin
                /*IF NOT Historical THEN SETRANGE(Status,2);
                LastFieldNo := FIELDNO("Fishing Country Code");*/
                //Job2.SETFILTER(Job2."Posting Date Filter",'%1',040104D);
                j := 1;
                repeat CurrReport.CreateTotals(pts[j]); j := j + 1; until j = 11;



                HistoricalData.Reset;
                if CurrReport.ShowOutput and (CountJ <> 0) then begin
                    HistoricalData.SetRange(HistoricalData."Report Type", HistoricalData."Report Type"::Points);
                    HistoricalData.SetRange(HistoricalData.Date, RepDate);
                    HistoricalData.SetRange(HistoricalData.Country, FishCountry);
                    HistoricalData.SetRange(HistoricalData.Type, HistoricalData.Type::Average);
                    if HistoricalData.Find('-') then begin
                        HistoricalData."Vessel Count" := CountJ;
                        HistoricalData."Day Fish Pts" := pts[1];
                        HistoricalData."Day Shrimp Pts" := pts[2];
                        HistoricalData."Day Points" := pts[3];
                        HistoricalData."Cumm. Fish Pts" := pts[4];
                        HistoricalData."Cumm. Shrimp Pts" := pts[5];
                        HistoricalData."Cumm. Total Pts" := pts[6];
                        HistoricalData."Avg Fish Pts" := pts[7];
                        HistoricalData."Avg Shrimp Pts" := pts[8];
                        HistoricalData."Total Avg Pts" := pts[9];
                        HistoricalData."Sea Days" := pts[10];
                        HistoricalData.Modify;
                    end else begin
                        HistoricalData.Init;
                        HistoricalData."Report Type" := HistoricalData."Report Type"::Points;
                        HistoricalData.Date := RepDate;
                        HistoricalData.Type := HistoricalData.Type::Average;
                        HistoricalData.Country := UpperCase(FishCountry);
                        HistoricalData."Sea Days" := pts[10];
                        HistoricalData."Day Fish Pts" := pts[1];
                        HistoricalData."Day Shrimp Pts" := pts[2];
                        HistoricalData."Day Points" := pts[3];
                        HistoricalData."Cumm. Fish Pts" := pts[4];
                        HistoricalData."Cumm. Shrimp Pts" := pts[5];
                        HistoricalData."Cumm. Total Pts" := pts[6];
                        HistoricalData."Avg Fish Pts" := pts[7];
                        HistoricalData."Avg Shrimp Pts" := pts[8];
                        HistoricalData."Total Avg Pts" := pts[9];
                        HistoricalData.Insert(true);
                    end;
                end;

            end;
        }
        dataitem(VoyMedian; Job)
        {
            DataItemTableView = SORTING("Points Sort Bay", Status) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
            column(Desc_Control1000000077; Desc)
            {
            }
            column(VoyMedian__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Skipper_Control1000000079; Skipper)
            {
            }
            column(SeaDays_Control1000000080; SeaDays)
            {
            }
            column(SeArea_Control1000000081; SeArea)
            {
            }
            column(pts_1__Control1000000082; pts[1])
            {

            }
            column(pts_2__Control1000000083; pts[2])
            {

            }
            column(pts_3__Control1000000084; pts[3])
            {

            }
            column(pts_4__Control1000000085; pts[4])
            {

            }
            column(pts_5__Control1000000086; pts[5])
            {

            }
            column(pts_6__Control1000000087; pts[6])
            {

            }
            column(pts_7__Control1000000088; pts[7])
            {

            }
            column(pts_8__Control1000000089; pts[8])
            {

            }
            column(pts_9__Control1000000090; pts[9])
            {

            }
            column(pts_1__Control1000000091; pts[1])
            {

            }
            column(pts_2__Control1000000092; pts[2])
            {

            }
            column(pts_3__Control1000000093; pts[3])
            {

            }
            column(pts_4__Control1000000094; pts[4])
            {

            }
            column(pts_5__Control1000000095; pts[5])
            {

            }
            column(pts_6__Control1000000096; pts[6])
            {

            }
            column(pts_7__Control1000000097; pts[7])
            {

            }
            column(pts_8__Control1000000098; pts[8])
            {

            }
            column(pts_9__Control1000000099; pts[9])
            {

            }
            column(Median_NigeriaCaption; Median_NigeriaCaptionLbl)
            {
            }
            column(VoyMedian_No_; "No.")
            {
            }
            column(Sno; "Sno.")
            {
            }
            column(AVG; AVG)
            {
            }
            column(Test; Test)
            {
            }

            trigger OnAfterGetRecord()
            begin

                if RepDate <> 0D then
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1', RepDate)
                else
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1..%2', 19800101D, Today);

                job1.Get("No.");
                job1.SetRange(job1."Task Filter");
                job1.SetRange(job1."Posting Date Filter");

                JobLdgr.SetCurrentKey(JobLdgr."Job No.", JobLdgr."Posting Date");
                JobLdgr.SetFilter(JobLdgr."Job No.", job1."No.");
                JobLdgr.SetRange(JobLdgr."Posting Date", 0D, Workdat);
                JobLdgr.SetRange(JobLdgr.Type, 0, 1);
                CurrReport.Skip;
                /*IF JobLdgr.FIND('+') THEN
                BEGIN
                  //SeTemp:= JobLdgr."Step Code"; #1
                 // SeArea:=JobLdgr."Phase Code"; #1
                END
                ELSE
                BEGIN
                  SeTemp:='';
                  SeArea:='';
                END;
                */

                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job1.SetRange(job1."Posting Date Filter", 0D, Workdat);
                //job1.CALCFIELDS(job1.Points);
                pts[6] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', '', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[5] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'SHR', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[4] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'FIS', '', job1.Vessel);//job1.Points;

                //Average
                //AAA* IF  job1."Starting Date"<>0D THEN SeaDays:=TODAY-job1."Starting Date" ELSE SeaDays:=0;
                if job1."Starting Date" <> 0D then SeaDays := Workdat - job1."Starting Date" else SeaDays := 0;
                if SeaDays <> 0 then begin
                    pts[9] := pts[6] / SeaDays;
                    pts[8] := pts[5] / SeaDays;
                    pts[7] := pts[4] / SeaDays
                end;

                //Daily
                job1.SetFilter(job1."Posting Date Filter", '=%1', Workdat);
                job1.SetRange(job1."Task Filter");
                //job1.CALCFIELDS(job1.Points);
                pts[3] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', '', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[2] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'SHR', '', job1.Vessel);//job1.Points;

                job1.SetFilter(job1."Task Filter", 'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[1] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'FIS', '', job1.Vessel);//job1.Points;



                if Count < 2 then
                    CurrReport.ShowOutput(false) else begin
                    j := 1;
                    repeat
                        pts[j] := pts[j] / Count;
                        j := j + 1;
                    until j = 10;
                end;

                if Loc.Get(VoyMedian.Vessel) then
                    Desc := Loc.Name
                else
                    Desc := '';
                if Resource.Get(VoyMedian."Person Responsible") then
                    Skipper := Resource.Name
                else
                    Skipper := VoyMedian."Person Responsible";

            end;

            trigger OnPreDataItem()
            begin
                if not Historical then
                    SetRange(Status, 2);
                VoyMedian.SetFilter(VoyMedian."No.", '%1|%2', MednVoy[1], MednVoy[2]);
                j := 1;
                repeat
                    CurrReport.CreateTotals(pts[j]);
                    j := j + 1;
                until j = 10;



                HistoricalData.Reset;
                if CurrReport.ShowOutput then begin
                    HistoricalData.SetRange(HistoricalData."Report Type", HistoricalData."Report Type"::Points);
                    HistoricalData.SetRange(HistoricalData.Date, RepDate);
                    HistoricalData.SetRange(HistoricalData.Vessel, Desc);
                    HistoricalData.SetRange(HistoricalData.Type, HistoricalData.Type::Median);
                    if HistoricalData.Find('-') then begin
                        HistoricalData."Day Fish Pts" := pts[1];
                        HistoricalData."Day Shrimp Pts" := pts[2];
                        HistoricalData."Day Points" := pts[3];
                        HistoricalData."Cumm. Fish Pts" := pts[4];
                        HistoricalData."Cumm. Shrimp Pts" := pts[5];
                        HistoricalData."Cumm. Total Pts" := pts[6];
                        HistoricalData."Avg Fish Pts" := pts[7];
                        HistoricalData."Avg Shrimp Pts" := pts[8];
                        HistoricalData."Total Avg Pts" := pts[9];
                        HistoricalData.Modify;
                    end else begin
                        HistoricalData.Init;
                        HistoricalData."Report Type" := HistoricalData."Report Type"::Points;
                        HistoricalData.Date := RepDate;
                        HistoricalData.Vessel := Desc;
                        HistoricalData.Type := HistoricalData.Type::Median;
                        HistoricalData.Country := VoyMedian."Fishing Country Code";
                        HistoricalData.Skipper := Skipper;
                        HistoricalData."Sea Days" := SeaDays;
                        HistoricalData."Sea Area" := SeArea;
                        HistoricalData."Day Fish Pts" := pts[1];
                        HistoricalData."Day Shrimp Pts" := pts[2];
                        HistoricalData."Day Points" := pts[3];
                        HistoricalData."Cumm. Fish Pts" := pts[4];
                        HistoricalData."Cumm. Shrimp Pts" := pts[5];
                        HistoricalData."Cumm. Total Pts" := pts[6];
                        HistoricalData."Avg Fish Pts" := pts[7];
                        HistoricalData."Avg Shrimp Pts" := pts[8];
                        HistoricalData."Total Avg Pts" := pts[9];
                        HistoricalData.Insert(true);
                    end;
                end;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(RepDate; RepDate)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin

                        if DOTrec.Get(RepDate) then
                            DOT := DOTrec."Day of tide"
                        else begin
                            DOTrec.Date := RepDate;
                            DOT := ' ';
                            DOTrec.Insert;
                        end;
                    end;
                }
                field("Day Of Tide"; DOT)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin

                        if DOTrec.Get(RepDate) then begin
                            DOTrec."Day of tide" := DOT;
                            DOTrec.Modify;
                        end
                        else begin
                            DOTrec.Date := RepDate;
                            DOTrec."Day of tide" := DOT;
                            DOTrec.Insert;
                        end;
                    end;
                }
                field(Historical; Historical)
                {
                    ApplicationArea = All;
                }
            }
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
        //"Sno." := 0;
    end;

    var
        job1: Record Job;
        JobLdgr: Record "Job Ledger Entry";
        DOTrec: Record "Day of Tide";
        JobsPointVal: Record Job;
        Resource: Record Resource;
        Loc: Record Location;
        NoCatch: Boolean;
        Eval: Boolean;
        SeaDays: Integer;
        I: Integer;
        j: Integer;
        k: Integer;
        Countz: Integer;
        pts: array[10] of Decimal;
        TotPts: array[9] of Decimal;
        TotPtsA: array[9] of Decimal;
        TotPtsAvg: array[9] of Decimal;
        SeaDaysTot: Decimal;
        SeaDayA: Integer;
        CountCum: array[9] of Decimal;
        SeaTemp: Decimal;
        SeaTempA: Decimal;
        SeTempVal: Decimal;
        Skipper: Text[30];
        Desc: Text[30];
        SeTemp: Code[10];
        SeArea: Code[10];
        DOT: Code[15];
        Workdat: Date;
        RepDate: Date;
        "------------": Integer;
        Country: Record "Country/Region";
        job3: Record Job;
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        FishCountry: Text[100];
        Medn: Decimal;
        MednVoy: array[2] of Code[10];
        CountJ: Integer;
        CountJx: Integer;
        PntsAvg: Decimal;
        Historical: Boolean;
        HistoricalData: Record "ASL Entry/Exit P";
        OperationCaptionLbl: Label 'Operation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Sr__No_CaptionLbl: Label 'Sr. No.';
        VesselCaptionLbl: Label 'Vessel';
        CountryCaptionLbl: Label 'Country';
        SkipperCaptionLbl: Label 'Skipper';
        Sea_DaysCaptionLbl: Label 'Sea Days';
        AreaCaptionLbl: Label 'Area';
        Sea_Temp__CCaptionLbl: Label 'Sea Temp. C';
        Shrimp_PtsCaptionLbl: Label 'Shrimp Pts';
        Fish_PtsCaptionLbl: Label 'Fish Pts';
        PtsCaptionLbl: Label 'Pts';
        Fish_PtsCaption_Control1000000010Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000011Lbl: Label 'Shrimp Pts';
        Day_PtsCaptionLbl: Label 'Day Pts';
        Fish_PtsCaption_Control1000000016Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000017Lbl: Label 'Shrimp Pts';
        PtsCaption_Control1000000031Lbl: Label 'Pts';
        DaysCaptionLbl: Label 'Days';
        CumulativeCaptionLbl: Label 'Cumulative';
        AverageCaptionLbl: Label 'Average';
        AVERAGECaption_Control1000000043Lbl: Label 'AVERAGE';
        TOTALCaptionLbl: Label 'TOTAL';
        AverageCaption_Control1000000075Lbl: Label 'Average';
        Median_NigeriaCaptionLbl: Label 'Median Nigeria';
        "Sno.": Integer;
        sea: Decimal;
        AVG: Decimal;
        Country1: Boolean;
        CountryCount: Integer;
        Test: Code[10];
        g_No: array[10] of Integer;
        g_NoTot: array[10] of Integer;
        g_NewCount: array[10] of Integer;
}

