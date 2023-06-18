report 50176 "New Daily Points by Capt Rep"
{
    // Countz:=0;
    // I:=0;
    // REPEAT I:=I+1;TotPts[I]:=0;CountCum[I]:=0; UNTIL I=9;
    // IF GCountCum[k]<>0 THEN GTotPtsA[k]:= GTotPts[k]/GCountCum[k] ELSE GTotPtsA[k]:=0;
    // SeaDaysTot:=0;SeaDayA:=0;
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/NewDailyPointsbyCaptRep.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'New Daily Points Report';

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            RequestFilterFields = Number;
            column(Day_of_Tide____DOT; 'Day of Tide: ' + DOT)
            {
            }
            column(Consolidated_Daily_Points_Report_As_On_____FORMAT_Workdat_0_4_; 'Consolidated Daily Points Report As On : ' + Format(Workdat, 0, 4))
            {
            }
            column(USERID; UserId)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(OperationCaption; OperationCaptionLbl)
            {
            }
            column(Integer_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                IF NOT Historical THEN
                BEGIN
                  JobsPointVal.SETCURRENTKEY(JobsPointVal.Vessel,JobsPointVal.Status);
                  JobsPointVal.SETRANGE(JobsPointVal.Status,2);
                END;

                IF RepDate<>0D THEN
                BEGIN
                  JobsPointVal.SETFILTER(JobsPointVal."Date Filter",'%1',RepDate);
                  //ResPointVal.SETFILTER(ResPointVal."Date Filter",'%1',RepDate);
                END
                ELSE
                BEGIN
                  JobsPointVal.SETFILTER(JobsPointVal."Date Filter",'%1..%2',010180D,TODAY);
                  //ResPointVal.SETFILTER(ResPointVal."Date Filter",'%1..%2',010180D,TODAY);
                END;

                //MESSAGE('Report Date is %1',RepDate);
                CountK:=0;
                IF JobsPointVal.FIND('-') THEN
                REPEAT
                  //JobsPointVal.CALCFIELDS(JobsPointVal.Points);
                  IF JobsPointVal.Points <>0 THEN //MESSAGE('Val is %1',JobsPointVal.Points);
                  JobsPointVal."Points Sort Bay":= JobsPointVal.PointZ(JobsPointVal."No.",'',
                     JobsPointVal.GETFILTER("Date Filter"),'','','',JobsPointVal.Vessel);//JobsPointVal.Points;
                  JobsPointVal.MODIFY();
                UNTIL JobsPointVal.NEXT=0;
                //COMMIT;

                ResPointVal.SETRANGE(ResPointVal."Resource Group No.",'PCAP');
                IF ResPointVal.FIND('-') THEN
                REPEAT
                  ResPointVal.CALCFIELDS(ResPointVal."Points Average");
                  ResPointVal."Points Average Sort Bay":=ResPointVal."Points Average";
                  ResPointVal.MODIFY();
                UNTIL ResPointVal.NEXT=0;
                *////AAA
            end;
        }
        dataitem(Res; Resource)
        {
            DataItemTableView = SORTING("Points Average Sort Bay") ORDER(Descending) WHERE("Resource Group No." = CONST('PCAP'));
            column(Res__No__; "No.")
            {
            }
            column(Name_______FORMAT_ROUND__Points_Average_Sort_Bay__1__; Name + '   ' + Format(Round("Points Average Sort Bay", 1)))
            {
            }
            column(SeaDayA; SeaDayA)
            {
            }
            column(SeaTempA; SeaTempA)
            {
            }
            column(GTotPtsA_1_; GTotPtsA[1])
            {
            }
            column(GTotPtsA_2_; GTotPtsA[2])
            {
            }
            column(GTotPtsA_3_; GTotPtsA[3])
            {
            }
            column(GTotPtsA_4_; GTotPtsA[4])
            {
            }
            column(GTotPtsA_5_; GTotPtsA[5])
            {
            }
            column(GTotPtsA_6_; GTotPtsA[6])
            {
            }
            column(GTotPtsA_7_; GTotPtsA[7])
            {
            }
            column(GTotPtsA_8_; GTotPtsA[8])
            {
            }
            column(GTotPts_1_; GTotPts[1])
            {
            }
            column(GTotPts_2_; GTotPts[2])
            {
            }
            column(GTotPts_3_; GTotPts[3])
            {
            }
            column(GTotPts_4_; GTotPts[4])
            {
            }
            column(GTotPts_5_; GTotPts[5])
            {
            }
            column(GTotPts_6_; GTotPts[6])
            {
            }
            column(GTotPts_7_; GTotPts[7])
            {
            }
            column(GTotPts_8_; GTotPts[8])
            {
            }
            column(GSeaDaysTot; GSeaDaysTot)
            {
            }
            column(GTotPts_9_; GTotPts[9])
            {
            }
            column(GTotPtsA_9_; GTotPtsA[9])
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
            column(Fish_PtsCaption; Fish_PtsCaptionLbl)
            {
            }
            column(Shrimp_PtsCaption; Shrimp_PtsCaptionLbl)
            {
            }
            column(Day_PtsCaption; Day_PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption_Control1000000124; Fish_PtsCaption_Control1000000124Lbl)
            {
            }
            column(Shrimp_PtsCaption_Control1000000125; Shrimp_PtsCaption_Control1000000125Lbl)
            {
            }
            column(PtsCaption; PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption_Control1000000127; Fish_PtsCaption_Control1000000127Lbl)
            {
            }
            column(Shrimp_PtsCaption_Control1000000128; Shrimp_PtsCaption_Control1000000128Lbl)
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
            column(PtsCaption_Control1000000132; PtsCaption_Control1000000132Lbl)
            {
            }
            column(RPMCaption; RPMCaptionLbl)
            {
            }
            column(AVERAGECaption_Control1000000050; AVERAGECaption_Control1000000050Lbl)
            {
            }
            column(GRAND_TOTALCaption; GRAND_TOTALCaptionLbl)
            {
            }
            dataitem(Job; Job)
            {
                DataItemLink = Captain = FIELD("No.");
                DataItemTableView = SORTING("Points Sort Bay", Status) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
                column(FORMAT_TODAY_0_4__Control2; Format(Today, 0, 4))
                {
                }
                column(Consolidated_Daily_Points_Report_As_On_____FORMAT_Workdat_0_4__Control3; 'Consolidated Daily Points Report As On : ' + Format(Workdat, 0, 4))
                {
                }
                column(CurrReport_PAGENO_Control4; CurrReport.PageNo())
                {
                }
                column(USERID_Control6; UserId)
                {
                }
                column(Day_of_Tide____DOT_Control1000000048; 'Day of Tide: ' + DOT)
                {
                }
                column(Countz; Countz)
                {
                }
                column(Desc; Desc)
                {
                }
                column(Job__Fishing_Country_Code_; "Fishing Country Code")
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
                column(RPM; RPM)
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
                column(SeaTempA_Control1000000047; SeaTempA)
                {
                }
                column(SeaDayA_Control1000000102; SeaDayA)
                {
                }
                column(OperationCaption_Control1; OperationCaption_Control1Lbl)
                {
                }
                column(CurrReport_PAGENO_Control4Caption; CurrReport_PAGENO_Control4CaptionLbl)
                {
                }
                column(Sr__No_Caption_Control9; Sr__No_Caption_Control9Lbl)
                {
                }
                column(VesselCaption_Control12; VesselCaption_Control12Lbl)
                {
                }
                column(CountryCaption_Control15; CountryCaption_Control15Lbl)
                {
                }
                column(SkipperCaption_Control18; SkipperCaption_Control18Lbl)
                {
                }
                column(Sea_DaysCaption_Control21; Sea_DaysCaption_Control21Lbl)
                {
                }
                column(AreaCaption_Control24; AreaCaption_Control24Lbl)
                {
                }
                column(Sea_Temp__CCaption_Control27; Sea_Temp__CCaption_Control27Lbl)
                {
                }
                column(Shrimp_PtsCaption_Control1000000013; Shrimp_PtsCaption_Control1000000013Lbl)
                {
                }
                column(Fish_PtsCaption_Control1000000014; Fish_PtsCaption_Control1000000014Lbl)
                {
                }
                column(PtsCaption_Control1000000032; PtsCaption_Control1000000032Lbl)
                {
                }
                column(Fish_PtsCaption_Control1000000010; Fish_PtsCaption_Control1000000010Lbl)
                {
                }
                column(Shrimp_PtsCaption_Control1000000011; Shrimp_PtsCaption_Control1000000011Lbl)
                {
                }
                column(Day_PtsCaption_Control1000000015; Day_PtsCaption_Control1000000015Lbl)
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
                column(DaysCaption_Control1000000012; DaysCaption_Control1000000012Lbl)
                {
                }
                column(CumulativeCaption_Control1000000030; CumulativeCaption_Control1000000030Lbl)
                {
                }
                column(AverageCaption_Control1000000033; AverageCaption_Control1000000033Lbl)
                {
                }
                column(RPMCaption_Control1000000075; RPMCaption_Control1000000075Lbl)
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
                column(Job_Captain; Captain)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /*
                    IF RepDate<>0D THEN Workdat:=RepDate
                    ELSE Workdat:=TODAY;

                    j:=1;
                    REPEAT
                     pts[j]:=0;
                     j:=j+1;
                    UNTIL j = 10;

                    job1.GET(Job."No.");
                    job1.SETRANGE(job1."Task Filter");
                    job1.SETRANGE(job1."Date Filter");

                    JobLdgr.SETCURRENTKEY(JobLdgr."Job No.",JobLdgr."Posting Date");
                    JobLdgr.SETFILTER(JobLdgr."Job No.",job1."No.");
                    JobLdgr.SETRANGE(JobLdgr."Posting Date",0D,Workdat);
                    JobLdgr.SETRANGE(JobLdgr.Type,0,1);
                    IF JobLdgr.FIND('+') THEN
                    BEGIN
                      SeTemp:= JobLdgr."Step Code";
                      SeArea:=JobLdgr."Phase Code";
                    END
                    ELSE
                    BEGIN
                      SeTemp:='';
                      SeArea:='';
                    END;

                    JobBatch.SETFILTER(JobBatch."Job No.", job1."No.");
                    IF JobBatch.FIND('+') THEN
                    RPM:=JobBatch."R.P.M."
                    ELSE
                    RPM:=0;

                    // Cumulative
                    //MESSAGE('Date is %1',Workdat);
                    job1.SETRANGE(job1."Date Filter",0D,Workdat);
                    //job1.CALCFIELDS(job1.Points);
                    pts[6]:= job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','','',job1.Vessel);  //job1.Points;

                    job1.SETFILTER(job1."Task Filter",'SHR');
                    //job1.CALCFIELDS(job1.Points);
                    pts[5]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','SHR','',job1.Vessel);//job1.Points;

                    job1.SETFILTER(job1."Task Filter",'FIS');
                    //job1.CALCFIELDS(job1.Points);
                    pts[4]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','FIS','',job1.Vessel); //job1.Points;

                    //Average
                    //AAA* IF  job1."Starting Date"<>0D THEN SeaDays:=TODAY-job1."Starting Date" ELSE SeaDays:=0;
                    IF job1."Starting Date"<>0D THEN SeaDays:=Workdat-job1."Starting Date" ELSE SeaDays:=0;
                    IF SeaDays<>0 THEN
                    BEGIN
                      pts[9]:=pts[6]/SeaDays;
                      pts[8]:=pts[5]/SeaDays;
                      pts[7]:=pts[4]/SeaDays
                    END;
                    AvgPtSortBay:=pts[9];
                    MODIFY;

                    //Daily
                    job1.SETFILTER(job1."Date Filter",'=%1',Workdat);
                    job1.SETRANGE(job1."Task Filter");
                    //job1.CALCFIELDS(job1.Points);
                    pts[3]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','','',job1.Vessel);//job1.Points;

                    job1.SETFILTER(job1."Task Filter",'SHR');
                    //job1.CALCFIELDS(job1.Points);
                    pts[2]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','SHR','',job1.Vessel);//job1.Points;

                    job1.SETFILTER(job1."Task Filter",'FIS');
                    //job1.CALCFIELDS(job1.Points);
                    pts[1]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','FIS','',job1.Vessel);//job1.Points;

                    //No Catch Record Exist
                    job1.SETRANGE(job1."Task Filter");
                    job1.SETRANGE(job1."Type Filter",0);
                    job1.CALCFIELDS(job1.NoCatchExist);
                    NoCatch:=job1.NoCatchExist;

                    //SeaDaysTot:=SeaDaysTot+SeaDays;
                    *////AAA
                end;

                trigger OnPostDataItem()
                begin
                    /*
                    SETFILTER(AvgPtSortBay,'<>0');
                    SETFILTER("Points Sort Bay",'<>0');
                    SETRANGE("Fishing Country Code",'');
                    //MESSAGE('Total no of Rec %1',COUNT);
                    Medn:=ROUND(COUNT/2,1,'<');
                    //Sort Data Based on Average Points
                    SETCURRENTKEY(AvgPtSortBay);
                    IF FIND('+') THEN;
                    NEXT(-Medn);
                    MednVoy[2]:="No.";

                    {IF ((ROUND(COUNT/2,1,'>'))-(ROUND(COUNT/2,1,'<')))=0 THEN
                    NEXT(-1);
                    MednVoy[1]:="No.";
                    //MESSAGE('Voyages are %1 and %2',MednVoy[1],MednVoy[2])
                    }
                     *////AAA
                end;

                trigger OnPreDataItem()
                begin
                    /*
                    IF NOT Historical THEN SETRANGE(Status,2);
                    SETFILTER(AvgPtSortBay,'<>0');
                    IF FIND('-') THEN
                    REPEAT
                      AvgPtSortBay:=0;
                      MODIFY();
                    UNTIL NEXT=0;
                    SETFILTER(AvgPtSortBay,'');
                    IF FIND('-') THEN;

                    //Initiate for each Group
                    Countz:=0;
                    I:=0;
                    REPEAT I:=I+1;TotPts[I]:=0;CountCum[I]:=0; UNTIL I=9;
                    SeaDaysTot:=0;SeaDayA:=0;
                    *////AAA
                end;
            }
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
        /*
        IF RepDate<>0D THEN Workdat:=RepDate
        ELSE Workdat:=TODAY;
        *////AAA
    end;

    var
        SeaDays: Integer;
        Countz: Integer;
        pts: array[10] of Decimal;
        TotPts: array[9] of Decimal;
        TotPtsA: array[9] of Decimal;
        GTotPts: array[9] of Decimal;
        GTotPtsA: array[9] of Decimal;
        SeaDaysTot: Decimal;
        GSeaDaysTot: Decimal;
        SeaDayA: Integer;
        SeaTempA: Decimal;
        Skipper: Text[30];
        Desc: Text[30];
        SeTemp: Code[10];
        SeArea: Code[10];
        DOT: Code[15];
        Workdat: Date;
        RPM: Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        OperationCaptionLbl: Label 'Operation';
        Sr__No_CaptionLbl: Label 'Sr. No.';
        VesselCaptionLbl: Label 'Vessel';
        CountryCaptionLbl: Label 'Country';
        SkipperCaptionLbl: Label 'Skipper';
        Sea_DaysCaptionLbl: Label 'Sea Days';
        AreaCaptionLbl: Label 'Area';
        Sea_Temp__CCaptionLbl: Label 'Sea Temp. C';
        Fish_PtsCaptionLbl: Label 'Fish Pts';
        Shrimp_PtsCaptionLbl: Label 'Shrimp Pts';
        Day_PtsCaptionLbl: Label 'Day Pts';
        Fish_PtsCaption_Control1000000124Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000125Lbl: Label 'Shrimp Pts';
        PtsCaptionLbl: Label 'Pts';
        Fish_PtsCaption_Control1000000127Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000128Lbl: Label 'Shrimp Pts';
        DaysCaptionLbl: Label 'Days';
        CumulativeCaptionLbl: Label 'Cumulative';
        AverageCaptionLbl: Label 'Average';
        PtsCaption_Control1000000132Lbl: Label 'Pts';
        RPMCaptionLbl: Label 'RPM';
        AVERAGECaption_Control1000000050Lbl: Label 'AVERAGE';
        GRAND_TOTALCaptionLbl: Label 'GRAND TOTAL';
        OperationCaption_Control1Lbl: Label 'Operation';
        CurrReport_PAGENO_Control4CaptionLbl: Label 'Page';
        Sr__No_Caption_Control9Lbl: Label 'Sr. No.';
        VesselCaption_Control12Lbl: Label 'Vessel';
        CountryCaption_Control15Lbl: Label 'Country';
        SkipperCaption_Control18Lbl: Label 'Skipper';
        Sea_DaysCaption_Control21Lbl: Label 'Sea Days';
        AreaCaption_Control24Lbl: Label 'Area';
        Sea_Temp__CCaption_Control27Lbl: Label 'Sea Temp. C';
        Shrimp_PtsCaption_Control1000000013Lbl: Label 'Shrimp Pts';
        Fish_PtsCaption_Control1000000014Lbl: Label 'Fish Pts';
        PtsCaption_Control1000000032Lbl: Label 'Pts';
        Fish_PtsCaption_Control1000000010Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000011Lbl: Label 'Shrimp Pts';
        Day_PtsCaption_Control1000000015Lbl: Label 'Day Pts';
        Fish_PtsCaption_Control1000000016Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000017Lbl: Label 'Shrimp Pts';
        PtsCaption_Control1000000031Lbl: Label 'Pts';
        DaysCaption_Control1000000012Lbl: Label 'Days';
        CumulativeCaption_Control1000000030Lbl: Label 'Cumulative';
        AverageCaption_Control1000000033Lbl: Label 'Average';
        RPMCaption_Control1000000075Lbl: Label 'RPM';
        AVERAGECaption_Control1000000043Lbl: Label 'AVERAGE';
        TOTALCaptionLbl: Label 'TOTAL';
}
