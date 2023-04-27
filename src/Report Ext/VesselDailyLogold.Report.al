report 50240 "Vessel Daily Log-old"
{
    // "Operation Daily Radio".GETFILTERS
    // Jobs."Voyage No."
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/VesselDailyLogold.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Operation Daily Radio"; "Operation Daily Radio")
        {
            DataItemTableView = SORTING(Name, "Job No.") WHERE(Date = FILTER(<> 0D));
            RequestFilterFields = Date, Name, "Job No.";
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
            column(GETFILTERS; GetFilters)
            {
            }
            column(Operation_Daily_Radio_Name; Name)
            {
            }
            column(Operation_Daily_Radio__Job_No__; "Job No.")
            {
            }
            column(Jobs_Vessel; Jobs.Vessel)
            {
            }
            column(Jobs__Starting_Date_; Jobs."Starting Date")
            {
            }
            column(Jobs__Ending_Date_; Jobs."Ending Date")
            {
            }
            column(Jobs__Voyage_No__; Jobs."Voyage No.")
            {
            }
            column(Operation_Daily_Radio_Date; Date)
            {
            }
            column(Operation_Daily_Radio__Fuel_Balance_; "Fuel Balance")
            {
            }
            column(Operation_Daily_Radio__R_P_M__; "R.P.M.")
            {
            }
            column(Operation_Daily_Radio__Fish_Hold_Temp_; "Fish Hold Temp")
            {
            }
            column(Operation_Daily_Radio__Fishing_Ground_; "Fishing Ground")
            {
            }
            column(Operation_Daily_Radio__Sea_Temperature_; "Sea Temperature")
            {
            }
            column(Operation_Daily_Radio__Job_No___Control1000000027; "Job No.")
            {
            }
            column(Jobs_Vessel_Control1000000028; Jobs.Vessel)
            {
            }
            column(Jobs__Starting_Date__Control1000000029; Jobs."Starting Date")
            {
            }
            column(Jobs__Ending_Date__Control1000000030; Jobs."Ending Date")
            {
            }
            column(Jobs__Voyage_No___Control1000000031; Jobs."Voyage No.")
            {
            }
            column(Operation_Daily_Radio_Date_Control17; Date)
            {
            }
            column(Operation_Daily_Radio__Fuel_Balance__Control20; "Fuel Balance")
            {
            }
            column(Operation_Daily_Radio__R_P_M___Control23; "R.P.M.")
            {
            }
            column(Operation_Daily_Radio__Fish_Hold_Temp__Control26; "Fish Hold Temp")
            {
            }
            column(Operation_Daily_Radio__Fishing_Ground__Control29; "Fishing Ground")
            {
            }
            column(Operation_Daily_Radio__Sea_Temperature__Control32; "Sea Temperature")
            {
            }
            column(TotalFor___FIELDCAPTION__Job_No___; TotalFor + FieldCaption("Job No."))
            {
            }
            column(Operation_Daily_Radio__R_P_M___Control35; "R.P.M.")
            {
            }
            column(Operation_Daily_Radio__Fish_Hold_Temp__Control36; "Fish Hold Temp")
            {
            }
            column(Operation_Daily_Radio__Sea_Temperature__Control37; "Sea Temperature")
            {
            }
            column(TotalFor___FIELDCAPTION_Name_; TotalFor + FieldCaption(Name))
            {
            }
            column(Operation_Daily_Radio__R_P_M___Control39; "R.P.M.")
            {
            }
            column(Operation_Daily_Radio__Fish_Hold_Temp__Control40; "Fish Hold Temp")
            {
            }
            column(Operation_Daily_Radio__Sea_Temperature__Control41; "Sea Temperature")
            {
            }
            column(Operation_Daily_RadioCaption; Operation_Daily_RadioCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Operation_Daily_Radio__Fuel_Balance_Caption; FieldCaption("Fuel Balance"))
            {
            }
            column(Operation_Daily_Radio__Job_No___Control1000000027Caption; FieldCaption("Job No."))
            {
            }
            column(Jobs_Vessel_Control1000000028Caption; Jobs_Vessel_Control1000000028CaptionLbl)
            {
            }
            column(Jobs__Starting_Date__Control1000000029Caption; Jobs__Starting_Date__Control1000000029CaptionLbl)
            {
            }
            column(Jobs__Ending_Date__Control1000000030Caption; Jobs__Ending_Date__Control1000000030CaptionLbl)
            {
            }
            column(Jobs__Voyage_No___Control1000000031Caption; Jobs__Voyage_No___Control1000000031CaptionLbl)
            {
            }
            column(Operation_Daily_Radio__R_P_M__Caption; FieldCaption("R.P.M."))
            {
            }
            column(Operation_Daily_Radio__Fish_Hold_Temp_Caption; FieldCaption("Fish Hold Temp"))
            {
            }
            column(Operation_Daily_Radio__Fishing_Ground_Caption; FieldCaption("Fishing Ground"))
            {
            }
            column(Operation_Daily_Radio__Sea_Temperature_Caption; FieldCaption("Sea Temperature"))
            {
            }
            column(Operation_Daily_Radio_DateCaption; FieldCaption(Date))
            {
            }
            column(Operation_Daily_Radio__Fuel_Balance__Control20Caption; FieldCaption("Fuel Balance"))
            {
            }
            column(Operation_Daily_Radio__R_P_M___Control23Caption; FieldCaption("R.P.M."))
            {
            }
            column(Operation_Daily_Radio__Sea_Temperature__Control32Caption; FieldCaption("Sea Temperature"))
            {
            }
            column(Operation_Daily_Radio__Fishing_Ground__Control29Caption; FieldCaption("Fishing Ground"))
            {
            }
            column(Operation_Daily_Radio__Fish_Hold_Temp__Control26Caption; FieldCaption("Fish Hold Temp"))
            {
            }
            column(Operation_Daily_Radio_Date_Control17Caption; FieldCaption(Date))
            {
            }
            column(Operation_Daily_Radio_NameCaption; FieldCaption(Name))
            {
            }
            column(Operation_Daily_Radio__Job_No__Caption; FieldCaption("Job No."))
            {
            }
            column(Jobs_VesselCaption; Jobs_VesselCaptionLbl)
            {
            }
            column(Jobs__Starting_Date_Caption; Jobs__Starting_Date_CaptionLbl)
            {
            }
            column(Jobs__Ending_Date_Caption; Jobs__Ending_Date_CaptionLbl)
            {
            }
            column(Jobs__Voyage_No__Caption; Jobs__Voyage_No__CaptionLbl)
            {
            }

            trigger OnPreDataItem()
            begin
                //LastFieldNo := FIELDNO("Job No.");        #1
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "----": Integer;
        Jobs: Record Job;
        DisplayOptions: Option "By Date","By Job";
        Operation_Daily_RadioCaptionLbl: Label 'Operation Daily Radio';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Jobs_Vessel_Control1000000028CaptionLbl: Label 'Vessel';
        Jobs__Starting_Date__Control1000000029CaptionLbl: Label 'ETD';
        Jobs__Ending_Date__Control1000000030CaptionLbl: Label 'ETA';
        Jobs__Voyage_No___Control1000000031CaptionLbl: Label 'Voyage No.';
        Jobs_VesselCaptionLbl: Label 'Vessel';
        Jobs__Starting_Date_CaptionLbl: Label 'ETD';
        Jobs__Ending_Date_CaptionLbl: Label 'ETA';
        Jobs__Voyage_No__CaptionLbl: Label 'Voyage No.';
}

