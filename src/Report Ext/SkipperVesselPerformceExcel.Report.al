report 50189 "Skipper/Vessel Performce Excel"
{
    // EndDate
    // Consd_Deductible_Days
    // NetSeaDay
    // CurrReport.SHOWOUTPUT(FALSE);
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/SkipperVesselPerformceExcel.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Jobs Point Validate"; Job)
        {
            DataItemTableView = SORTING("No.") WHERE("Sea Days" = FILTER(> 0), "Voyage Ended" = CONST(true));
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
            DataItemTableView = SORTING("Fishing Country Code", AvgPtSortBay) ORDER(Descending) WHERE("Sea Days" = FILTER(> 0), "Voyage Ended" = CONST(true));
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
            column(FCountry; FCountry)
            {
            }
            column(Rems; Rems)
            {
            }
            column(AvgFuel; AvgFuel)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Countz; Countz)
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Voyage_No__; "Voyage No.")
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
                DecimalPlaces = 0 : 0;
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
            column(Job__Fuel_Consumed_; "Fuel Consumed")
            {
                DecimalPlaces = 0 : 0;
            }
            column(PResp; PResp)
            {
            }
            column(Countz_Control1000000001; Countz)
            {
            }
            column(PResp_Control1000000011; PResp)
            {
            }
            column(Job_Vessel_Control1000000013; Vessel)
            {
            }
            column(Job__Voyage_No___Control1000000015; "Voyage No.")
            {
            }
            column(Job__Starting_Date__Control1000000020; "Starting Date")
            {
            }
            column(Job__Ending_Date__Control1000000021; "Ending Date")
            {
            }
            column(NetSeaDay_Control1000000022; NetSeaDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Shrimp_2__Control1000000023; Shrimp[2])
            {
            }
            column(Fish_2__Control1000000024; Fish[2])
            {
            }
            column(Job__Points_Actual__Control1000000025; "Points Actual")
            {
            }
            column(Points_Actual__NetSeaDay_Control1000000026; "Points Actual" / NetSeaDay)
            {
            }
            column(Job__Fuel_Consumed__Control1000000027; "Fuel Consumed")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvgFuel_Control1000000028; AvgFuel)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Rems_Control1000000029; Rems)
            {
            }
            column(Countz_Control1000000031; Countz)
            {
            }
            column(PResp_Control1000000038; PResp)
            {
            }
            column(Job_Vessel_Control1000000039; Vessel)
            {
            }
            column(Job__Voyage_No___Control1000000040; "Voyage No.")
            {
            }
            column(Job__Starting_Date__Control1000000041; "Starting Date")
            {
            }
            column(Job__Ending_Date__Control1000000042; "Ending Date")
            {
            }
            column(NetSeaDay_Control1000000043; NetSeaDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Shrimp_2__Control1000000044; Shrimp[2])
            {
            }
            column(Fish_2__Control1000000045; Fish[2])
            {
            }
            column(Job__Points_Actual__Control1000000046; "Points Actual")
            {
            }
            column(Points_Actual__NetSeaDay_Control1000000047; "Points Actual" / NetSeaDay)
            {
            }
            column(Job__Fuel_Consumed__Control1000000048; "Fuel Consumed")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvgFuel_Control1000000049; AvgFuel)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Rems_Control1000000050; Rems)
            {
            }
            column(NetSeaDay_Control1000000030; NetSeaDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Shrimp_2__Control1000000032; Shrimp[2])
            {
            }
            column(Fish_2__Control1000000033; Fish[2])
            {
            }
            column(Job__Points_Actual__Control1000000034; "Points Actual")
            {
            }
            column(Points_Actual__NetSeaDay_Control1000000035; "Points Actual" / NetSeaDay)
            {
            }
            column(Job__Fuel_Consumed__Control1000000036; "Fuel Consumed")
            {
                DecimalPlaces = 0 : 0;
            }
            column(AvgFuel_Control1000000037; AvgFuel)
            {
                DecimalPlaces = 0 : 0;
            }
            column(OperationCaption; OperationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Control9Caption; Control9CaptionLbl)
            {
            }
            column(Control12Caption; Control12CaptionLbl)
            {
            }
            column(Control15Caption; Control15CaptionLbl)
            {
            }
            column(Control18Caption; Control18CaptionLbl)
            {
            }
            column(Control27Caption; Control27CaptionLbl)
            {
            }
            column(Control30Caption; Control30CaptionLbl)
            {
            }
            column(Control33Caption; Control33CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Control39Caption; Control39CaptionLbl)
            {
            }
            column(Shrimp_Caption; Shrimp_CaptionLbl)
            {
            }
            column(Fish_Caption; Fish_CaptionLbl)
            {
            }
            column(Job__Fuel_Consumed_Caption; Job__Fuel_Consumed_CaptionLbl)
            {
            }
            column(AvgFuelCaption; AvgFuelCaptionLbl)
            {
            }
            column(RemsCaption; RemsCaptionLbl)
            {
            }
            column(FCountryCaption; FCountryCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }
            column(Job_Fishing_Country_Code; "Fishing Country Code")
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
                Counting := Counting + 1;

                if Resource.Get("Person Responsible") then PResp := Resource.Name else PResp := "Person Responsible";
                //IF  "Fuel Days"<>0 THEN AvgFuel:="Fuel Consumed"/"Fuel Days" ELSE  AvgFuel:=0;
                AvgFuel := Job."Fuel Average";
                //Remarks
                Remark.SetFilter(Remark."Table Name", '=5');
                Remark.SetFilter(Remark."No.", '=%1', "No.");
                Remark.SetFilter(Remark.Type, '=%1', 0);
                if Remark.Find('-') then Rems := Remark.Comment else Rems := '';

                CurrReport.CreateTotals(NetSeaDay, Shrimp[2], Fish[2], Points, "Points Actual");
                CurrReport.CreateTotals("Fuel Consumed", AvgFuel);
            end;

            trigger OnPreDataItem()
            begin
                if country.Get("Fishing Country Code") then FCountry := country.Name else FCountry := 'Nigerian';
                if (CurrReport.TotalsCausedBy = Job.FieldNo("Fishing Country Code")) then Counting := 1;
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
                    field("Consider Deductible Lost Days"; Consd_Deductible_Days)
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
        Remark: Record "Comment Line";
        country: Record "Country/Region";
        Resource: Record Resource;
        Shrimp: array[2] of Decimal;
        Fish: array[2] of Decimal;
        Countz: Integer;
        Counting: Integer;
        Asat: Text[30];
        EndDate: Date;
        NetSeaDay: Decimal;
        Consd_Deductible_Days: Boolean;
        AvgFuel: Decimal;
        Rems: Text[225];
        FCountry: Text[30];
        PResp: Text[30];
        FooterPrinted: Boolean;
        LastFieldNo: Integer;
        OperationCaptionLbl: Label 'Operation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Control9CaptionLbl: Label 'Label9';
        Control12CaptionLbl: Label 'Label12';
        Control15CaptionLbl: Label 'Label15';
        Control18CaptionLbl: Label 'Label18';
        Control27CaptionLbl: Label 'Label27';
        Control30CaptionLbl: Label 'Label30';
        Control33CaptionLbl: Label 'Label33';
        TotalCaptionLbl: Label 'Total';
        Control39CaptionLbl: Label 'Label39';
        Shrimp_CaptionLbl: Label 'Shrimp ';
        Fish_CaptionLbl: Label 'Fish ';
        Job__Fuel_Consumed_CaptionLbl: Label 'Con''s';
        AvgFuelCaptionLbl: Label 'Avg.';
        RemsCaptionLbl: Label 'Remarks';
        FCountryCaptionLbl: Label 'Vessel :';
}

