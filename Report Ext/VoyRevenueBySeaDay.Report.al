report 50197 "Voy Revenue By Sea Day"
{
    // HdrStore.Description
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyRevenueBySeaDay.rdlc';


    dataset
    {
        dataitem("Vessel Performance By Sea Day"; "Vessel Performance By Sea Day")
        {
            DataItemTableView = SORTING("Voyage Sea Days", "Revenue Per Sea Day") ORDER(Descending);
            RequestFilterFields = "Voyage Sea Days";
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
            column(HdrStore_Description; HdrStore.Description)
            {
            }
            column(Vessel_Performance_By_Sea_Day__Voyage_Sea_Days_; "Voyage Sea Days")
            {
            }
            column(CountZ; CountZ)
            {
            }
            column(Vessel_Performance_By_Sea_Day_Vess; Vess)
            {
            }
            column(Vessel_Performance_By_Sea_Day__Cycle_Day_; "Cycle Day")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Fishing_Days_; "Fishing Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Lost_Days_; "Lost Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Port_Days_; "Port Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Fish_Perct_; "Fish Perct")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Export_Val__N__; "Export Val (N)")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Local_Val__N__; "Local Val (N)")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Revenue; Revenue)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Rev_SD_; "Rev/SD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Rev_FD_; "Rev/FD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_AGO; AGO)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__AGO_Perct_; "AGO Perct")
            {
                DecimalPlaces = 1 : 1;
            }
            column(Vessel_Performance_By_Sea_Day_Direct; Direct)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Margin; Margin)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Gross_Margin_Perc_; "Gross Margin Perc")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Indirect; Indirect)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Profit; Profit)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Direct_SD_; "Direct/SD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Profit_Control1000000084; Profit)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Indirect_Control1000000085; Indirect)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Gross_Margin_Perc__Control1000000086; "Gross Margin Perc")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Margin_Control1000000087; Margin)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Direct_Control1000000088; Direct)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__AGO_Perct__Control1000000089; "AGO Perct")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_AGO_Control1000000090; AGO)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Rev_FD__Control1000000091; "Rev/FD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Rev_SD__Control1000000092; "Rev/SD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Revenue_Control1000000093; Revenue)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Cycle_Day__Control1000000095; "Cycle Day")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Fishing_Days__Control1000000096; "Fishing Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Lost_Days__Control1000000097; "Lost Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Port_Days__Control1000000098; "Port Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Fish_Perct__Control1000000099; "Fish Perct")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Export_Val__N___Control1000000100; "Export Val (N)")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Local_Val__N___Control1000000101; "Local Val (N)")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Direct_SD__Control1000000052; "Direct/SD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Profit_Control1000000022; Profit)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Indirect_Control1000000025; Indirect)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Gross_Margin_Perc__Control1000000028; "Gross Margin Perc")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Margin_Control1000000031; Margin)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Direct_Control1000000034; Direct)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__AGO_Perct__Control1000000037; "AGO Perct")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_AGO_Control1000000040; AGO)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Rev_FD__Control1000000043; "Rev/FD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Rev_SD__Control1000000046; "Rev/SD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day_Revenue_Control1000000049; Revenue)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Cycle_Day__Control1000000055; "Cycle Day")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Fishing_Days__Control1000000058; "Fishing Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Lost_Days__Control1000000061; "Lost Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Port_Days__Control1000000064; "Port Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Fish_Perct__Control1000000081; "Fish Perct")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Export_Val__N___Control1000000082; "Export Val (N)")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_Day__Local_Val__N___Control1000000083; "Local Val (N)")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Direct_SD__Control1000000067; "Direct/SD")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Vessel_Performance_By_Sea_DayCaption; Vessel_Performance_By_Sea_DayCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(CountZCaption; CountZCaptionLbl)
            {
            }
            column(Vessel_Performance_By_Sea_Day_VessCaption; FieldCaption(Vess))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Cycle_Day_Caption; FieldCaption("Cycle Day"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Fishing_Days_Caption; FieldCaption("Fishing Days"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Lost_Days_Caption; FieldCaption("Lost Days"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Port_Days_Caption; FieldCaption("Port Days"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Fish_Perct_Caption; FieldCaption("Fish Perct"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Export_Val__N__Caption; FieldCaption("Export Val (N)"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Local_Val__N__Caption; FieldCaption("Local Val (N)"))
            {
            }
            column(Vessel_Performance_By_Sea_Day_RevenueCaption; FieldCaption(Revenue))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Rev_SD_Caption; FieldCaption("Rev/SD"))
            {
            }
            column(Vessel_Performance_By_Sea_Day_AGOCaption; FieldCaption(AGO))
            {
            }
            column(Vessel_Performance_By_Sea_Day__AGO_Perct_Caption; FieldCaption("AGO Perct"))
            {
            }
            column(Vessel_Performance_By_Sea_Day_DirectCaption; FieldCaption(Direct))
            {
            }
            column(Vessel_Performance_By_Sea_Day_MarginCaption; FieldCaption(Margin))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Gross_Margin_Perc_Caption; Vessel_Performance_By_Sea_Day__Gross_Margin_Perc_CaptionLbl)
            {
            }
            column(Vessel_Performance_By_Sea_Day_IndirectCaption; FieldCaption(Indirect))
            {
            }
            column(Vessel_Performance_By_Sea_Day_ProfitCaption; FieldCaption(Profit))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Rev_FD_Caption; FieldCaption("Rev/FD"))
            {
            }
            column(Direct_SD_Caption; Direct_SD_CaptionLbl)
            {
            }
            column(Vessel_Performance_By_Sea_Day__Voyage_Sea_Days_Caption; FieldCaption("Voyage Sea Days"))
            {
            }
            column(AvgCaption; AvgCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Vessel_Performance_By_Sea_Day_No_; "No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Voyage Sea Days");
                if HdrStore.Get(UserId) then begin
                    HdrValue := HdrStore.Description;
                    HdrStore.Delete;
                end;


                CountZ := CountZ + 1;
                SD := "Fishing Days" + "Lost Days";
                if SD <> 0 then "Direct/SD" := Direct / SD else "Direct/SD" := 0;


                if (CurrReport.TotalsCausedBy = FieldNo("Voyage Sea Days")) then begin
                    CountZx := CountZ;
                    CountZ := 0;
                end;

                if CountZx <> 0 then begin
                    "Cycle Day" := "Cycle Day" / CountZx;
                    "Fishing Days" := "Fishing Days" / CountZx;
                    "Lost Days" := "Lost Days" / CountZx;
                    "Port Days" := "Port Days" / CountZx;

                    "Export Val (N)" := "Export Val (N)" / CountZx;
                    "Local Val (N)" := "Local Val (N)" / CountZx;
                    Revenue := Revenue / CountZx;

                    "Rev/SD" := Revenue / ("Fishing Days" + "Lost Days");
                    "Rev/FD" := Revenue / "Fishing Days";

                    AGO := AGO / CountZx;
                    Direct := Direct / CountZx;
                    Margin := Margin / CountZx;
                    Indirect := Indirect / CountZx;
                    Profit := Profit / CountZx;
                end;
                if "Cycle Day" <> 0 then "Fish Perct" := ("Fishing Days" / "Cycle Day") * 100 else "Fish Perct" := 0;
                if Direct <> 0 then "AGO Perct" := (AGO / Direct) * 100 else "AGO Perct" := 0;
                if Revenue <> 0 then "Gross Margin Perc" := (Margin / Revenue) * 100 else "Gross Margin Perc" := 0;

                SD := "Fishing Days" + "Lost Days";
                if SD <> 0 then "Direct/SD" := Direct / SD else "Direct/SD" := 0;


                "Rev/SD" := Revenue / ("Fishing Days" + "Lost Days");
                "Rev/FD" := Revenue / "Fishing Days";

                if "Cycle Day" <> 0 then "Fish Perct" := ("Fishing Days" / "Cycle Day") * 100 else "Fish Perct" := 0;
                if Direct <> 0 then "AGO Perct" := (AGO / Direct) * 100 else "AGO Perct" := 0;
                if Revenue <> 0 then "Gross Margin Perc" := (Margin / Revenue) * 100 else "Gross Margin Perc" := 0;

                SD := "Fishing Days" + "Lost Days";
                if SD <> 0 then "Direct/SD" := Direct / SD else "Direct/SD" := 0;
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
        CountZ: Integer;
        CountZx: Integer;
        "Direct/SD": Decimal;
        SD: Decimal;
        HdrStore: Record "Standard Text";
        HdrValue: Text[520];
        Vessel_Performance_By_Sea_DayCaptionLbl: Label 'Vessel Performance By Sea Day';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        CountZCaptionLbl: Label 'Label1000000012';
        Vessel_Performance_By_Sea_Day__Gross_Margin_Perc_CaptionLbl: Label 'GM %';
        Direct_SD_CaptionLbl: Label 'Label1000000068';
        AvgCaptionLbl: Label 'Avg';
        TotalCaptionLbl: Label 'Total';
}

