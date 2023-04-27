report 50196 "Voyage Rev by Sea Day"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyageRevbySeaDay.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem("Vessel Performance By Sea Day"; "Vessel Performance By Sea Day")
        {
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
            column(Vessel_Performance_By_Sea_Day__Voyage_Sea_Days_; "Voyage Sea Days")
            {
            }
            column(Vessel_Performance_By_Sea_Day__No__; "No.")
            {
            }
            column(Vessel_Performance_By_Sea_Day__Voyage_Sea_Days__Control1000000014; "Voyage Sea Days")
            {
            }
            column(Vessel_Performance_By_Sea_Day__Revenue_Per_Sea_Day_; "Revenue Per Sea Day")
            {
            }
            column(Vessel_Performance_By_Sea_DayCaption; Vessel_Performance_By_Sea_DayCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Vessel_Performance_By_Sea_Day__No__Caption; FieldCaption("No."))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Voyage_Sea_Days__Control1000000014Caption; FieldCaption("Voyage Sea Days"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Revenue_Per_Sea_Day_Caption; FieldCaption("Revenue Per Sea Day"))
            {
            }
            column(Vessel_Performance_By_Sea_Day__Voyage_Sea_Days_Caption; FieldCaption("Voyage Sea Days"))
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        Vessel_Performance_By_Sea_DayCaptionLbl: Label 'Vessel Performance By Sea Day';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

