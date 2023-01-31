report 50149 "Skipper/Vessel Performance XC"
{
    // 
    // EndDate
    // Consd_Deductible_Days
    // NetSeaDay
    // CurrReport.SHOWOUTPUT(FALSE);
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/SkipperVesselPerformanceXC.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                Jobs.SetFilter(Jobs."Sea Days", '>0');
                Jobs.SetRange(Jobs."Voyage Ended", true);
                if Jobs.Find('-') then
                    repeat
                        Jobs."Points Sort Bay" := Jobs."Points Actual";
                        Jobs.CalcFields(Jobs."Deductible Lost Days");
                        if Consd_Deductible_Days then
                            NetSeaDay := Jobs."Sea Days" - Jobs."Deductible Lost Days"
                        else
                            NetSeaDay := Jobs."Sea Days";
                        if NetSeaDay <> 0 then
                            Jobs.AvgPtSortBay := Jobs."Points Actual" / NetSeaDay;
                        Jobs.Modify;
                    until Jobs.Next = 0;
                Jobs.SetRange(Jobs."Sea Days");
                Jobs.SetRange(Jobs."Voyage Ended");
            end;
        }
        dataitem("Jobs Point Validate"; Job)
        {
            DataItemTableView = WHERE("Sea Days" = FILTER(> 0), "Voyage Ended" = CONST(true));
            column(Jobs_Point_Validate__No__; "No.")
            {
            }
            column(Jobs_Point_Validate__Points_Sort_Bay_; "Points Sort Bay")
            {
            }
            column(Jobs_Point_Validate__Points_Actual_; "Points Actual")
            {
            }
            column(Jobs_Point_Validate_Points; Points)
            {
            }
            column(Jobs_Point_Validate__Points_Actual_Caption; FieldCaption("Points Actual"))
            {
            }
            column(Jobs_Point_Validate__Points_Sort_Bay_Caption; FieldCaption("Points Sort Bay"))
            {
            }
            column(Jobs_Point_Validate_PointsCaption; FieldCaption(Points))
            {
            }
            column(Jobs_Point_Validate__No__Caption; FieldCaption("No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Points Sort Bay" := "Points Actual";
                CalcFields("Deductible Lost Days");
                if Consd_Deductible_Days then
                    NetSeaDay := "Sea Days" - "Deductible Lost Days"
                else
                    NetSeaDay := "Sea Days";
                if NetSeaDay <> 0 then
                    AvgPtSortBay := "Points Actual" / NetSeaDay;
                Modify;
            end;
        }
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(AvgPtSortBay) ORDER(Descending) WHERE("Sea Days" = FILTER(> 0), "Voyage Ended" = CONST(true));
            RequestFilterFields = "Voyage No.", "Ending Date";
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
            column(DataItem1000000002; 'Skipper / Vessel Performance from ' + Format(GetRangeMin("Ending Date"), 0, 4) + ' to ' + Format(GetRangeMax("Ending Date"), 0, 4))
            {
            }
            column(Countz; Countz)
            {
            }
            column(Job__Person_Responsible_; "Person Responsible")
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Voyage_No__; "Voyage No.")
            {
            }
            column(Job__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(NetSeaDay; NetSeaDay)
            {
            }
            column(Job__Points_Actual_; "Points Actual")
            {
            }
            column(Points_Actual__NetSeaDay; "Points Actual" / NetSeaDay)
            {
            }
            column(Shrimp_2_; Shrimp[2])
            {
            }
            column(Fish_2_; Fish[2])
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(CountzCaption; CountzCaptionLbl)
            {
            }
            column(Job__Person_Responsible_Caption; Job__Person_Responsible_CaptionLbl)
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Voyage_No__Caption; Job__Voyage_No__CaptionLbl)
            {
            }
            column(Job__Fishing_Country_Code_Caption; Job__Fishing_Country_Code_CaptionLbl)
            {
            }
            column(Job__Starting_Date_Caption; Job__Starting_Date_CaptionLbl)
            {
            }
            column(Job__Ending_Date_Caption; Job__Ending_Date_CaptionLbl)
            {
            }
            column(NetSeaDayCaption; NetSeaDayCaptionLbl)
            {
            }
            column(Job__Points_Actual_Caption; FieldCaption("Points Actual"))
            {
            }
            column(Points_Actual__NetSeaDayCaption; Points_Actual__NetSeaDayCaptionLbl)
            {
            }
            column(Shrimp_2_Caption; Shrimp_2_CaptionLbl)
            {
            }
            column(Fish_2_Caption; Fish_2_CaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Asat := GetFilter("Ending Date");
                EndDate := GetRangeMax("Ending Date");
                Job.CalcFields("Deductible Lost Days");
                if Consd_Deductible_Days then
                    NetSeaDay := "Sea Days" - "Deductible Lost Days"
                else
                    NetSeaDay := "Sea Days";
            end;

            trigger OnPreDataItem()
            begin

                //SETRANGE("Task Filter",'SHR');
                CalcFields(Points, "Points Actual");
                Shrimp[1] := Points;
                Shrimp[2] := "Points Actual";
                //SETRANGE("Task Filter",'FIS');
                CalcFields(Points, "Points Actual");
                Fish[1] := Points;
                Fish[2] := "Points Actual";
                //SETRANGE("Task Filter");
                CalcFields(Points, "Points Actual");
                Countz := Countz + 1;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(Consd_Deductible_Days; Consd_Deductible_Days)
                    {
                        ApplicationArea = All;
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

    var
        Jobs: Record Job;
        Shrimp: array[2] of Decimal;
        Fish: array[2] of Decimal;
        Countz: Integer;
        Asat: Text[30];
        EndDate: Date;
        NetSeaDay: Decimal;
        Consd_Deductible_Days: Boolean;
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        CountzCaptionLbl: Label 'S/No.';
        Job__Person_Responsible_CaptionLbl: Label 'Skipper';
        Job__Voyage_No__CaptionLbl: Label 'Voyage';
        Job__Fishing_Country_Code_CaptionLbl: Label 'Area';
        Job__Starting_Date_CaptionLbl: Label 'From';
        Job__Ending_Date_CaptionLbl: Label 'To';
        NetSeaDayCaptionLbl: Label 'Sea Days';
        Points_Actual__NetSeaDayCaptionLbl: Label 'Average';
        Shrimp_2_CaptionLbl: Label 'Shrimp Points';
        Fish_2_CaptionLbl: Label 'Fish Points';
}

