report 50103 "Weekly Points Report"
{
    // UNL-ASL3.60.01.002 (Santus) May 03, 2005
    // -> new report
    // 
    // UNL-ASL3.60.01.003 (Santus) May 10, 2005
    // -> modified report to kep track of hours lost and average voyage points,
    //   block report from checking for sea days less than 8 or 9, added functionality for sending report results to excel.
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/WeeklyPointsReport.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(Captain, Vessel, "Points Sort Bay", Status) WHERE(Status = FILTER(open), "No." = FILTER('I' .. 'K'));
            RequestFilterFields = "No.", Captain;
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(DataItem1000000003; 'Weekly Points Report - Port Captain Wise -  ' + Format(StartDate, 0, '<day,2> <month text,3> <year4>') + ' to ' + Format(EndDate, 0, '<day,2> <month text,3> <year4>'))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Job_Captain; Captain)
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(SerialNo; SerialNo)
            {
            }
            column(Skipper; Skipper)
            {
            }
            column(SeaDays; SeaDays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_1_; pts[1])
            {
            }
            column(pts_2_; pts[2])
            {
            }
            column(pts_3_; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_4_; pts[4])
            {
            }
            column(HoursLost; HoursLost)
            {
            }
            column(pts_5_; pts[5])
            {
            }
            column(pts_4__Control1000000083; pts[4])
            {
            }
            column(pts_3__Control1000000085; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_2__Control1000000087; pts[2])
            {
            }
            column(pts_1__Control1000000088; pts[1])
            {
            }
            column(SeaDays_Control1000000091; SeaDays)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_4_; Ave[4])
            {
            }
            column(Ave_3_; Ave[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_2_; Ave[2])
            {
            }
            column(Ave_1_; Ave[1])
            {
            }
            column(Ave_5_; Ave[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_5__Control1000000056; pts[5])
            {
            }
            column(Ave_6_; Ave[6])
            {
            }
            column(HoursLost_Control1000000058; HoursLost)
            {
            }
            column(Ave_7_; Ave[7])
            {
            }
            column(OperationCaption; OperationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Fishing_Country_Code_Caption; Job__Fishing_Country_Code_CaptionLbl)
            {
            }
            column(SeaDaysCaption; SeaDaysCaptionLbl)
            {
            }
            column(SerialNoCaption; SerialNoCaptionLbl)
            {
            }
            column(SkipperCaption; SkipperCaptionLbl)
            {
            }
            column(pts_1_Caption; pts_1_CaptionLbl)
            {
            }
            column(pts_2_Caption; pts_2_CaptionLbl)
            {
            }
            column(Day_PtsCaption; Day_PtsCaptionLbl)
            {
            }
            column(pts_4_Caption; pts_4_CaptionLbl)
            {
            }
            column(Hours_LostCaption; Hours_LostCaptionLbl)
            {
            }
            column(Avg__Voyage_PointsCaption; Avg__Voyage_PointsCaptionLbl)
            {
            }
            column(AVERAGECaption; AVERAGECaptionLbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Res.Get(Job."Person Responsible") then Skipper := Res.Name;
                HoursLost := 0;
                VoyagePoints := 0;

                if (Job."Ending Date" <= EndDate) then
                    CurrReport.Skip;

                j := 1;
                repeat
                    pts[j] := 0;
                    j := j + 1;
                until j = 5;

                if Job."Starting Date" <> 0D then
                    SeaDays := EndDate - Job."Starting Date"
                else
                    SeaDays := 0;

                if SeaDays < 1 then
                    CurrReport.Skip;

                //show all
                if (SeaDays < 8) and (Job."Fishing Country Code" in ['GB', '']) then
                    CurrReport.Skip;

                if (SeaDays < 9) and (Job."Fishing Country Code" = 'CA') then
                    CurrReport.Skip;


                //check for lost hours
                LostDays.SetRange("No.", Job."No.");
                LostDays.SetFilter("Day Lost Cause", '<>%1&<>%2', 'STMG', 'CHNG');
                LostDays.SetRange(LostDays.Date, StartDate, EndDate);
                if LostDays.Find('-') then
                    repeat
                        HoursLost := HoursLost + LostDays."Hours Lost"
                    until LostDays.Next = 0;

                if HoursLost > 20 then
                    CurrReport.Skip;

                //weekly
                //points
                Job.SetFilter(Job."Date Filter", '%1..%2', StartDate, EndDate);
                // Job.SETRANGE(Job."Task Filter");
                Job.CalcFields(Job.Points);
                pts[3] := Job.Points;

                // average week point
                pts[4] := pts[3] / 7;

                // shrimp points
                //Job.SETFILTER(Job."Task Filter",'SHR');
                Job.CalcFields(Job.Points);
                pts[2] := Job.Points;

                // fish points
                // Job.SETFILTER(Job."Task Filter",'FIS');
                Job.CalcFields(Job.Points);
                pts[1] := Job.Points;

                // voyage average point
                // Job.SETFILTER(Job."Date Filter",'%1..%2',Job."Starting Date",EndDate);
                // Job.SETRANGE(Job."Task Filter");
                Job.CalcFields(Job.Points);
                VoyagePoints := Job.Points;
                if SeaDays > 0 then
                    pts[5] := VoyagePoints / SeaDays;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Captain);
                // CurrReport.CreateTotals(pts, SeaDays, HoursLost);  //***Refactor
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

    trigger OnInitReport()
    begin
        Bold := true;
        UnderLine := true;
        Italic := true;
        TopPage := true;
        PageOrientation := 1;
        FontSize := 7;
    end;

    trigger OnPostReport()
    begin
        // if Send2Excel then
        //     Clear(xlApp);
    end;

    trigger OnPreReport()
    begin
        if StartDate = 0D then
            Error('Please enter Start Date!');

        EndDate := CalcDate('6D', StartDate);



        UpdateCell(2, 4, 'WEEKLY POINTS REPORT', Bold, not Italic, not UnderLine, FontSize + 2);
    end;

    var
        FooterPrinted: Boolean;
        Eval: Boolean;
        LostDays: Record "Comment Line";
        Resource: Record Resource;
        LastFieldNo: Integer;
        I: Integer;
        SerialNo: Integer;
        j: Integer;
        pts: array[5] of Decimal;
        SeaDays: Decimal;
        HoursLost: Decimal;
        VoyagePoints: Decimal;
        Skipper: Text[30];
        StartDate: Date;
        EndDate: Date;
        Ave: array[7] of Decimal;
        // xlApp: Automation BC;  //***R
        // xlBook: Automation BC;
        // xlSheet: Automation BC;
        Send2Excel: Boolean;
        TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        OperationCaptionLbl: Label 'Operation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Job__Fishing_Country_Code_CaptionLbl: Label 'Country';
        SeaDaysCaptionLbl: Label 'Sea Days';
        SerialNoCaptionLbl: Label 'S/N';
        SkipperCaptionLbl: Label 'Skipper';
        pts_1_CaptionLbl: Label 'Fish Pts';
        pts_2_CaptionLbl: Label 'Shrimp Pts';
        Day_PtsCaptionLbl: Label 'Day Pts';
        pts_4_CaptionLbl: Label 'Avg Pts./Wk';
        Hours_LostCaptionLbl: Label 'Hours Lost';
        Avg__Voyage_PointsCaptionLbl: Label 'Avg. Voyage Points';
        AVERAGECaptionLbl: Label 'AVERAGE';
        TOTALCaptionLbl: Label 'TOTAL';
        Res: Record Resource;

    [Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin
        // xlSheet.Range(GetCol(Col) + Format(Row)).Value := ValueText;
        // if Bold then
        //     xlSheet.Range(GetCol(Col) + Format(Row)).Font.Bold := Bold;
        // if Italic then
        //     xlSheet.Range(GetCol(Col) + Format(Row)).Font.Italic := Italic;
        // if Underline then
        //     xlSheet.Range(GetCol(Col) + Format(Row)).Font.Underline := Underline;
        // xlSheet.Range(GetCol(Col) + Format(Row)).Font.Size := FontSize;
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

