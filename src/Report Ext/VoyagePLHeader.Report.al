report 50992 "Voyage P&L Header"
{
    // GETFILTER("No.")
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyagePLHeader.rdlc';
    Caption = 'Voyage P&L Header';
    dataset
    {
        dataitem(Job; Job)
        {
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(GETFILTERS__; GetFilters())
            {
            }
            column(Text21; Text21)
            {
            }
            column(Text22; Text22)
            {
            }
            column(Text23; Text23)
            {
            }
            column(Text24; Text24)
            {
            }
            column(Text25; Text25)
            {
            }
            column(Text26; Text26)
            {
            }
            column(Text27; Text27)
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__No__; "No.")
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(CycleDay; CycleDay)
            {
            }
            column(FishgDay; FishgDay)
            {
            }
            column(LostDay; LostDay)
            {
            }
            column(PortDay; PortDay)
            {
            }
            column(PntStor_1_; PntStor[1])
            {
            }
            column(PntStor_2_; PntStor[2])
            {
            }
            column(PntStor_3_; PntStor[3])
            {
            }
            column(PntStor_4_; PntStor[4])
            {
            }
            column(PntStor_5_; PntStor[5])
            {
            }
            column(PntStor_6_; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_7_; PntStor[7])
            {
            }
            column(CycleDay_Control1000000000; CycleDay)
            {
            }
            column(FishgDay_Control1000000062; FishgDay)
            {
            }
            column(LostDay_Control1000000063; LostDay)
            {
            }
            column(PortDay_Control1000000064; PortDay)
            {
            }
            column(PntStor_1__Control1000000065; PntStor[1])
            {
            }
            column(PntStor_2__Control1000000066; PntStor[2])
            {
            }
            column(PntStor_3__Control1000000067; PntStor[3])
            {
            }
            column(PntStor_4__Control1000000068; PntStor[4])
            {
            }
            column(PntStor_5__Control1000000069; PntStor[5])
            {
            }
            column(PntStor_6__Control1000000070; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_7__Countrs; PntStor[7] / Countrs)
            {
            }
            column(TotalFor___FIELDCAPTION_Vessel_; TotalFor + FieldCaption(Vessel))
            {
            }
            column(CycleDay_Control1000000001; CycleDay)
            {
            }
            column(FishgDay_Control1000000002; FishgDay)
            {
            }
            column(LostDay_Control1000000003; LostDay)
            {
            }
            column(PortDay_Control1000000004; PortDay)
            {
            }
            column(PntStor_7__Countrs_Control1000000005; PntStor[7] / Countrs)
            {
            }
            column(PntStor_6__Control1000000024; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5__Control1000000025; PntStor[5])
            {
            }
            column(PntStor_4__Control1000000026; PntStor[4])
            {
            }
            column(PntStor_3__Control1000000027; PntStor[3])
            {
            }
            column(PntStor_2__Control1000000028; PntStor[2])
            {
            }
            column(PntStor_1__Control1000000029; PntStor[1])
            {
            }
            column(Coutry_Name; Coutry.Name)
            {
            }
            column(Res_Name; Res.Name)
            {
            }
            column(Vess; Vess)
            {
            }
            column(GETFILTER__No___; GetFilter("No."))
            {
            }
            column(ETD; ETD)
            {
            }
            column(ETA; ETA)
            {
            }
            column(CycleDay_Control1000000036; CycleDay)
            {
            }
            column(FishgDay_Control1000000038; FishgDay)
            {
            }
            column(LostDay_Control1000000040; LostDay)
            {
            }
            column(PntStor_1__Control1000000042; PntStor[1])
            {
            }
            column(PntStor_2__Control1000000043; PntStor[2])
            {
            }
            column(PntStor_3__Control1000000044; PntStor[3])
            {
            }
            column(PntStor_4__Control1000000045; PntStor[4])
            {
                DecimalPlaces = 0 : 2;
            }
            column(PntStor_5__Control1000000046; PntStor[5])
            {
                DecimalPlaces = 0 : 2;
            }
            column(PntStor_6__Control1000000047; PntStor[6])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text21_Control1000000048; Text21)
            {
            }
            column(Text22_Control1000000049; Text22)
            {
            }
            column(Text23_Control1000000050; Text23)
            {
            }
            column(Text24_Control1000000051; Text24)
            {
            }
            column(Text25_Control1000000052; Text25)
            {
            }
            column(Text26_Control1000000053; Text26)
            {
            }
            column(PntStor_7__Countrs_Control1000000057; PntStor[7] / Countrs)
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text27_Control1000000058; Text27)
            {
            }
            column(PortDay_Control1000000059; PortDay)
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }
            column(CycleDayCaption; CycleDayCaptionLbl)
            {
            }
            column(FishgDayCaption; FishgDayCaptionLbl)
            {
            }
            column(LostDayCaption; LostDayCaptionLbl)
            {
            }
            column(PortDayCaption; PortDayCaptionLbl)
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(GETFILTER__No___Caption; GETFILTER__No___CaptionLbl)
            {
            }
            column(ETDCaption; ETDCaptionLbl)
            {
            }
            column(ETACaption; ETACaptionLbl)
            {
            }
            column(CycleDay_Control1000000036Caption; CycleDay_Control1000000036CaptionLbl)
            {
            }
            column(FishgDay_Control1000000038Caption; FishgDay_Control1000000038CaptionLbl)
            {
            }
            column(LostDay_Control1000000040Caption; LostDay_Control1000000040CaptionLbl)
            {
            }
            column(PortDay_Control1000000059Caption; PortDay_Control1000000059CaptionLbl)
            {
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

    var
        Coutry: Record "Country/Region";
        Res: Record Resource;
        PntStor: array[8] of Decimal;
        ETD: Date;
        ETA: Date;
        CycleDay: Decimal;
        PortDay: Decimal;
        LostDay: Decimal;
        FishgDay: Decimal;
        Vess: Text[30];
        Countrs: Integer;
        TotalFor: Label 'Total';
        Text21: Label 'Shrimp Points';
        Text22: Label 'Fish Points';
        Text23: Label 'Total Points';
        Text24: Label 'Avg. Shrimp Points';
        Text25: Label 'Avg. Fish Points';
        Text26: Label 'Avg. Total Points';
        Text27: Label 'Exchange Rate';
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        CycleDayCaptionLbl: Label 'Cycle Day';
        FishgDayCaptionLbl: Label 'Fishing Day';
        LostDayCaptionLbl: Label 'Lost At Sea';
        PortDayCaptionLbl: Label 'Port Day';
        GETFILTER__No___CaptionLbl: Label 'Job Filter:';
        ETDCaptionLbl: Label 'Label1000000033';
        ETACaptionLbl: Label 'Label1000000035';
        CycleDay_Control1000000036CaptionLbl: Label 'Cycle Day';
        FishgDay_Control1000000038CaptionLbl: Label 'Fishing Day';
        LostDay_Control1000000040CaptionLbl: Label 'Lost At Sea';
        PortDay_Control1000000059CaptionLbl: Label 'Port Day';
}
