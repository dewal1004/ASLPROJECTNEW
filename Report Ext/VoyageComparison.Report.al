report 50114 "Voyage Comparison"
{
    // UNL-ASL3.60.01.007 (Santus) May 31, 2005
    // -> new report to compare voyage performance of vessels in a particular vessel class
    // 
    // UNL-ASL3.60.01.008 (Santus) June 07, 2005
    // -> changed voyage class selection criteria to be based on vessel selected, added ETD control,
    //    made each vessel calculate points based on its individual ETD & ETA
    // 
    // UNL-ASL3.60.01.009 (Santus) June 14, 2005
    // -> grouping by fishing country, comparison by skipper functionality added, also functionality for
    //   sending data to excel has also been added.
    // 
    // UNL-ASL3.60.01.010 (Santus) June 21, 2005
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyageComparison.rdlc';


    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING("Fishing Country Code", "Ending Date") ORDER(Descending) WHERE("Voyage Ended" = CONST(true));
            RequestFilterFields = "No.";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(VesselCode; VesselCode)
            {
            }
            column(EndingDate; EndingDate)
            {
            }
            column(PeriodCode; PeriodCode)
            {
            }
            column(Skipper; Skipper)
            {
            }
            column(Job_Job__Fishing_Country_Code_; Job."Fishing Country Code")
            {
            }
            column(Location_Name; Location.Name)
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(Resource_Name; Resource.Name)
            {
            }
            column(Seadays; Seadays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(FishingDays; FishingDays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(ShrimpPoints; ShrimpPoints)
            {
            }
            column(FishPoints; FishPoints)
            {
            }
            column(TotalPoints; TotalPoints)
            {
            }
            column(AveragePoints; AveragePoints)
            {
            }
            column(AverageShrimpPts; AverageShrimpPts)
            {
            }
            column(AverageFishPts; AverageFishPts)
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Seadays_Control1000000083; Seadays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(FishingDays_Control1000000084; FishingDays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(ShrimpPoints_Control1000000085; ShrimpPoints)
            {
            }
            column(FishPoints_Control1000000086; FishPoints)
            {
            }
            column(TotalPoints_Control1000000087; TotalPoints)
            {
            }
            column(AveragePoints_Control1000000088; AveragePoints)
            {
            }
            column(AverageShrimpPts_Control1000000089; AverageShrimpPts)
            {
            }
            column(AverageFishPts_Control1000000090; AverageFishPts)
            {
            }
            column(Total_for______Fishing_Country_Code_; 'Total for ' + "Fishing Country Code")
            {
            }
            column(Seadays_Control1000000057; Seadays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(FishingDays_Control1000000058; FishingDays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(ShrimpPoints_Control1000000059; ShrimpPoints)
            {
            }
            column(FishPoints_Control1000000060; FishPoints)
            {
            }
            column(TotalPoints_Control1000000061; TotalPoints)
            {
            }
            column(AveragePoints_Control1000000062; AveragePoints)
            {
            }
            column(AverageShrimpPts_Control1000000063; AverageShrimpPts)
            {
            }
            column(AverageFishPts_Control1000000064; AverageFishPts)
            {
            }
            column(Voyage_Comparison_ReportCaption; Voyage_Comparison_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VesselCodeCaption; VesselCodeCaptionLbl)
            {
            }
            column(EndingDateCaption; EndingDateCaptionLbl)
            {
            }
            column(PeriodCodeCaption; PeriodCodeCaptionLbl)
            {
            }
            column(SkipperCaption; SkipperCaptionLbl)
            {
            }
            column(Location_NameCaption; Location_NameCaptionLbl)
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }
            column(Resource_NameCaption; Resource_NameCaptionLbl)
            {
            }
            column(SeadaysCaption; SeadaysCaptionLbl)
            {
            }
            column(FishingDaysCaption; FishingDaysCaptionLbl)
            {
            }
            column(ShrimpPointsCaption; ShrimpPointsCaptionLbl)
            {
            }
            column(FishPointsCaption; FishPointsCaptionLbl)
            {
            }
            column(TotalPointsCaption; TotalPointsCaptionLbl)
            {
            }
            column(AveragePointsCaption; AveragePointsCaptionLbl)
            {
            }
            column(AverageShrimpPtsCaption; AverageShrimpPtsCaptionLbl)
            {
            }
            column(AverageFishPtsCaption; AverageFishPtsCaptionLbl)
            {
            }
            column(Job__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Job_Job__Fishing_Country_Code_Caption; Job_Job__Fishing_Country_Code_CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Res.Get(Job."Person Responsible") then Skipper := Res.Name;
                Seadays := 0;
                FishingDays := 0;
                ShrimpPoints := 0;
                FishPoints := 0;
                TotalPoints := 0;
                AveragePoints := 0;
                AverageShrimpPts := 0;
                AverageFishPts := 0;

                if VesselCode <> '' then begin
                    FA.SetCurrentKey("FA Subclass Code");
                    FA.SetRange("FA Subclass Code", VesselClassCode);
                    FA.SetRange("No.", Job.Vessel);
                    if not FA.Find('-') then CurrReport.Skip;
                end;

                if not Location.Get(Job.Vessel) then CurrReport.Skip;
                if Resource.Get(Job."Person Responsible") then;

                if Job."Starting Date" < StartingDate then
                    CurrReport.Skip;
                if Job."Ending Date" > EndingDate then
                    CurrReport.Skip;

                //sea days
                if ("Starting Date" = 0D) or (Job."Ending Date" = 0D) then
                    Error('Ensure that Starting & Ending Dates for %1 have updated!', Job."No.")
                else
                    Seadays := Job."Ending Date" - Job."Starting Date";

                //lost days
                HoursLost := 0;
                DaysLost := 0;
                LostDays.SetRange("No.", Job."No.");
                LostDays.SetRange(Deductible, true);
                if LostDays.Find('-') then
                    repeat
                        HoursLost := HoursLost + LostDays."Hours Lost";
                    until LostDays.Next = 0;
                if HoursLost <> 0 then
                    DaysLost := Round(HoursLost / 24, 1);

                //fishing days
                FishingDays := Seadays - DaysLost;

                //shrimp points
                Job.SetRange("Date Filter", Job."Starting Date", Job."Ending Date");
                //Job.SETFILTER(Job."Task Filter",'SHR');
                //Job.CALCFIELDS(Job.Points);
                Job.Points :=
                  PointZ("No.", '', GetFilter("Date Filter"), '', 'SHR', '', Vessel);
                ShrimpPoints := Job.Points;

                //fish points
                //Job.SETFILTER(Job."Task Filter",'FIS');
                //Job.CALCFIELDS(Job.Points);
                Job.Points :=
                  PointZ("No.", '', GetFilter("Date Filter"), '', 'FIS', '', Vessel);
                FishPoints := Job.Points;

                //average points
                AverageShrimpPts := ShrimpPoints / FishingDays;
                AverageFishPts := FishPoints / FishingDays;

                //total points
                TotalPoints := ShrimpPoints + FishPoints;
                AveragePoints := AverageShrimpPts + AverageFishPts;

                iCount := 1;
                TotalCount := TotalCount + 1;
            end;

            trigger OnPreDataItem()
            begin
                //get vessel class code
                if VesselCode <> '' then begin
                    FA.Get(VesselCode);
                    VesselClassCode := FA."FA Subclass Code";
                end;

                if PeriodCode = '' then
                    PeriodCode := '-60D';

                Evaluate(Period, PeriodCode);

                StartingDate := CalcDate(Period, EndingDate);

                CurrReport.CreateTotals(Seadays, FishingDays, ShrimpPoints, FishPoints, TotalPoints);
                CurrReport.CreateTotals(AveragePoints, AverageShrimpPts, AverageFishPts, iCount);

                //Job.SETFILTER("Starting Date",'<=%1',StartingDate);
                //Job.SETFILTER("Ending Date",'<=%1',EndingDate);
                if Skipper <> '' then
                    Job.SetRange(Job."Person Responsible", Skipper);

                TotalCount := 0;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control2)
                {
                    ShowCaption = false;
                    field("Vessel Code"; JobRec.Vessel)
                    {
                    }
                    field("Voyage Ending Date"; JobRec."Ending Date")
                    {
                    }
                    field("Period Code"; PeriodCode)
                    {
                    }
                    field(Skipper; Skipper)
                    {
                    }
                    field("Font Size"; FontSize)
                    {
                    }
                    field("Page Orientation"; PageOrientation)
                    {
                    }
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

    trigger OnInitReport()
    begin
        Bold := true;
        UnderLine := true;
        Italic := true;
        // TopPage := true;
        PageOrientation := 1;
        FontSize := 7;
    end;

    trigger OnPreReport()
    begin
        if (VesselCode = '') and (Skipper = '') then
            Error('Please Enter Vessel Code Filter!');

        if EndingDate = 0D then
            Error('Please Enter Voyage End Date!');
    end;

    var
        JobRec: Record Job;
        LostDays: Record "Comment Line";
        FA: Record "Fixed Asset";
        FASubClass: Record "FA Subclass";
        Resource: Record Resource;
        Location: Record Location;
        Seadays: Decimal;
        FishingDays: Decimal;
        ShrimpPoints: Decimal;
        FishPoints: Decimal;
        TotalPoints: Decimal;
        AveragePoints: Decimal;
        VesselCode: Code[10];
        VesselClassCode: Code[10];
        StartingDate: Date;
        EndingDate: Date;
        HoursLost: Decimal;
        DaysLost: Decimal;
        AverageShrimpPts: Decimal;
        AverageFishPts: Decimal;
        iCount: Decimal;
        Period: DateFormula;
        PeriodCode: Code[10];
        Skipper: Code[20];
        TotalCount: Integer;
        // xlApp: Automation BC;
        // xlBook: Automation BC;
        // xlSheet: Automation BC;
        // Send2Excel: Boolean;
        // TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        Voyage_Comparison_ReportCaptionLbl: Label 'Voyage Comparison Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VesselCodeCaptionLbl: Label 'Vessel Code';
        EndingDateCaptionLbl: Label 'Voyage End Date';
        PeriodCodeCaptionLbl: Label 'Period';
        SkipperCaptionLbl: Label 'Skipper';
        Location_NameCaptionLbl: Label 'Vessel Name';
        Resource_NameCaptionLbl: Label 'Skipper';
        SeadaysCaptionLbl: Label 'Sea Days';
        FishingDaysCaptionLbl: Label 'Fishing Days';
        ShrimpPointsCaptionLbl: Label 'Shrimp Points';
        FishPointsCaptionLbl: Label 'Fish Points';
        TotalPointsCaptionLbl: Label 'Total Points';
        AveragePointsCaptionLbl: Label 'Sum Avg Points';
        AverageShrimpPtsCaptionLbl: Label 'Average Shrimp Pts';
        AverageFishPtsCaptionLbl: Label 'Average Fish Pts';
        Job_Job__Fishing_Country_Code_CaptionLbl: Label 'Fishing Country';
        TotalCaptionLbl: Label 'Total';
        Res: Record Resource;

    /*[Scope('Internal')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin
        xlSheet.Range(GetCol(Col) + Format(Row)).Value := ValueText;
        if Bold then
            xlSheet.Range(GetCol(Col) + Format(Row)).Font.Bold := Bold;
        if Italic then
            xlSheet.Range(GetCol(Col) + Format(Row)).Font.Italic := Italic;
        if Underline then
            xlSheet.Range(GetCol(Col) + Format(Row)).Font.Underline := Underline;
        xlSheet.Range(GetCol(Col) + Format(Row)).Font.Size := FontSize;
    end;

    [Scope('Internal')]
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
    end;*/
}

