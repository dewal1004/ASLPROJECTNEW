report 50104 "Daily Points History"
{
    // UNL-ASL3.60.01.004 (Santus) May 11, 2005
    // -> new reoprt, to retrieve historical daily points information
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/DailyPointsHistory.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
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
            column(Consolidated_Daily_Points_Report_As_On_____FORMAT_ReportDate_0_4_; 'Consolidated Daily Points Report As On : ' + Format(ReportDate, 0, 4))
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
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
            column(Sea_AreaCaption; Sea_AreaCaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Day_Fish_Pts_Caption; AllPoints_AllPoints__Day_Fish_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Day_Shrimp_Pts_Caption; AllPoints_AllPoints__Day_Shrimp_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Day_Points_Caption; AllPoints_AllPoints__Day_Points_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Cumm__Fish_Pts_Caption; AllPoints_AllPoints__Cumm__Fish_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Cumm__Shrimp_Pts_Caption; AllPoints_AllPoints__Cumm__Shrimp_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Cumm__Total_Pts_Caption; AllPoints_AllPoints__Cumm__Total_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Avg_Fish_Pts_Caption; AllPoints_AllPoints__Avg_Fish_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Avg_Shrimp_Pts_Caption; AllPoints_AllPoints__Avg_Shrimp_Pts_CaptionLbl)
            {
            }
            column(AllPoints_AllPoints__Total_Avg_Pts_Caption; AllPoints_AllPoints__Total_Avg_Pts_CaptionLbl)
            {
            }
            column(DayCaption; DayCaptionLbl)
            {
            }
            column(CummulativeCaption; CummulativeCaptionLbl)
            {
            }
            column(AverageCaption; AverageCaptionLbl)
            {
            }
            column(S_NCaption; S_NCaptionLbl)
            {
            }
            column(Integer_Number; Number)
            {
            }
        }
        dataitem(AllPoints; "Entry/Exit Point")
        {
            DataItemTableView = SORTING("Entry No.") WHERE(Type = CONST(" "), "Report Type" = CONST(Points));
            column(FORMAT_TODAY_0_4__Control1000000168; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME_Control1000000169; CompanyName)
            {
            }
            column(CurrReport_PAGENO_Control1000000170; CurrReport.PageNo)
            {
            }
            column(USERID_Control1000000172; UserId)
            {
            }
            column(Consolidated_Daily_Points_Report_As_On_____FORMAT_ReportDate_0_4__Control1000000173; 'Consolidated Daily Points Report As On : ' + Format(ReportDate, 0, 4))
            {
            }
            column(AllPoints_AllPoints_Vessel; AllPoints.Vessel)
            {
            }
            column(AllPoints_AllPoints_Country; AllPoints.Country)
            {
            }
            column(AllPoints_AllPoints_Skipper; AllPoints.Skipper)
            {
            }
            column(AllPoints_AllPoints__Sea_Days_; AllPoints."Sea Days")
            {
            }
            column(AllPoints_AllPoints__Sea_Area_; AllPoints."Sea Area")
            {
            }
            column(AllPoints_AllPoints__Day_Fish_Pts_; AllPoints."Day Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Day_Shrimp_Pts_; AllPoints."Day Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Day_Points_; AllPoints."Day Points")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Cumm__Fish_Pts_; AllPoints."Cumm. Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Cumm__Shrimp_Pts_; AllPoints."Cumm. Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Cumm__Total_Pts_; AllPoints."Cumm. Total Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Avg_Fish_Pts_; AllPoints."Avg Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Avg_Shrimp_Pts_; AllPoints."Avg Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Total_Avg_Pts_; AllPoints."Total Avg Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(SerialNo; SerialNo)
            {
            }
            column(AllPoints_AllPoints__Sea_Days__Control1000000059; AllPoints."Sea Days")
            {
            }
            column(AllPoints_AllPoints__Day_Fish_Pts__Control1000000061; AllPoints."Day Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Day_Shrimp_Pts__Control1000000062; AllPoints."Day Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Day_Points__Control1000000063; AllPoints."Day Points")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Cumm__Fish_Pts__Control1000000064; AllPoints."Cumm. Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Cumm__Shrimp_Pts__Control1000000065; AllPoints."Cumm. Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Cumm__Total_Pts__Control1000000066; AllPoints."Cumm. Total Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Avg_Fish_Pts__Control1000000067; AllPoints."Avg Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Avg_Shrimp_Pts__Control1000000068; AllPoints."Avg Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AllPoints_AllPoints__Total_Avg_Pts__Control1000000069; AllPoints."Total Avg Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_1_; Ave[1])
            {
            }
            column(Ave_2_; Ave[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_3_; Ave[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_4_; Ave[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_5_; Ave[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_6_; Ave[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_7_; Ave[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_8_; Ave[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_9_; Ave[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Ave_10_; Ave[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CurrReport_PAGENO_Control1000000170Caption; CurrReport_PAGENO_Control1000000170CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(AverageCaption_Control1000000008; AverageCaption_Control1000000008Lbl)
            {
            }
            column(AllPoints_Code; Code)
            {
            }

            trigger OnAfterGetRecord()
            begin
                SerialNo := SerialNo + 1;
            end;

            trigger OnPreDataItem()
            begin
                AllPoints.SetRange(Date, ReportDate);
                SerialNo := 0;
            end;
        }
        dataitem(AvePoint; "Entry/Exit Point")
        {
            DataItemTableView = SORTING("Entry No.") WHERE(Type = CONST(Average), "Report Type" = CONST(Points));
            column(AvePoint_AvePoint_Type; AvePoint.Type)
            {
            }
            column(AvePoint_AvePoint_Country; AvePoint.Country)
            {
            }
            column(AvePoint_AvePoint__Sea_Days_; AvePoint."Sea Days")
            {
            }
            column(AvePoint_AvePoint__Day_Fish_Pts_; AvePoint."Day Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Day_Shrimp_Pts_; AvePoint."Day Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Day_Points_; AvePoint."Day Points")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Cumm__Fish_Pts_; AvePoint."Cumm. Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Cumm__Shrimp_Pts_; AvePoint."Cumm. Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Cumm__Total_Pts_; AvePoint."Cumm. Total Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Avg_Fish_Pts_; AvePoint."Avg Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Avg_Shrimp_Pts_; AvePoint."Avg Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Total_Avg_Pts_; AvePoint."Total Avg Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvePoint_AvePoint__Vessel_Count_; AvePoint."Vessel Count")
            {
            }
            column(AvePoint_Code; Code)
            {
            }

            trigger OnPreDataItem()
            begin
                AvePoint.SetRange(Date, ReportDate);
            end;
        }
        dataitem(MedianPoint; "Entry/Exit Point")
        {
            DataItemTableView = SORTING("Entry No.") WHERE(Type = CONST(Median), "Report Type" = CONST(Points));
            column(MedianPoint_MedianPoint_Type; MedianPoint.Type)
            {
            }
            column(MedianPoint_MedianPoint_Vessel; MedianPoint.Vessel)
            {
            }
            column(MedianPoint_MedianPoint_Country; MedianPoint.Country)
            {
            }
            column(MedianPoint_MedianPoint_Skipper; MedianPoint.Skipper)
            {
            }
            column(MedianPoint_MedianPoint__Sea_Days_; MedianPoint."Sea Days")
            {
            }
            column(MedianPoint_MedianPoint__Sea_Area_; MedianPoint."Sea Area")
            {
            }
            column(MedianPoint_MedianPoint__Day_Fish_Pts_; MedianPoint."Day Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Day_Shrimp_Pts_; MedianPoint."Day Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Day_Points_; MedianPoint."Day Points")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Cumm__Fish_Pts_; MedianPoint."Cumm. Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Cumm__Shrimp_Pts_; MedianPoint."Cumm. Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Cumm__Total_Pts_; MedianPoint."Cumm. Total Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Avg_Fish_Pts_; MedianPoint."Avg Fish Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Avg_Shrimp_Pts_; MedianPoint."Avg Shrimp Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_MedianPoint__Total_Avg_Pts_; MedianPoint."Total Avg Pts")
            {
                DecimalPlaces = 0 : 0;
            }
            column(MedianPoint_Code; Code)
            {
            }

            trigger OnPreDataItem()
            begin
                MedianPoint.SetRange(Date, ReportDate);
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
        ReportDate: Date;
        SerialNo: Integer;
        Ave: array[10] of Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VesselCaptionLbl: Label 'Vessel';
        CountryCaptionLbl: Label 'Country';
        SkipperCaptionLbl: Label 'Skipper';
        Sea_DaysCaptionLbl: Label 'Sea Days';
        Sea_AreaCaptionLbl: Label 'Sea Area';
        AllPoints_AllPoints__Day_Fish_Pts_CaptionLbl: Label 'Fish Pts';
        AllPoints_AllPoints__Day_Shrimp_Pts_CaptionLbl: Label 'Shrimp Pts';
        AllPoints_AllPoints__Day_Points_CaptionLbl: Label 'Day Pts';
        AllPoints_AllPoints__Cumm__Fish_Pts_CaptionLbl: Label 'Fish Pts';
        AllPoints_AllPoints__Cumm__Shrimp_Pts_CaptionLbl: Label 'Shrimp Pts';
        AllPoints_AllPoints__Cumm__Total_Pts_CaptionLbl: Label 'Total Pts';
        AllPoints_AllPoints__Avg_Fish_Pts_CaptionLbl: Label 'Fish Pts';
        AllPoints_AllPoints__Avg_Shrimp_Pts_CaptionLbl: Label 'Shrimp Pts';
        AllPoints_AllPoints__Total_Avg_Pts_CaptionLbl: Label 'Total Pts';
        DayCaptionLbl: Label 'Day';
        CummulativeCaptionLbl: Label 'Cummulative';
        AverageCaptionLbl: Label 'Average';
        S_NCaptionLbl: Label 'S/N';
        CurrReport_PAGENO_Control1000000170CaptionLbl: Label 'Page';
        TotalCaptionLbl: Label 'Total';
        AverageCaption_Control1000000008Lbl: Label 'Average';
}

