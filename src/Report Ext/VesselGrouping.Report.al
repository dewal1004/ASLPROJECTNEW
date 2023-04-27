report 55512 "Vessel Grouping"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VesselGrouping.rdlc';

    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(Vessel);
            RequestFilterFields = Vessel;
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
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Cycle_Day__Manual__; "Cycle Day (Manual)")
            {
            }
            column(Job__Fishing_Day__Manual__; "Fishing Day (Manual)")
            {
            }
            column(Job__Lost_At_Sea__Manual__; "Lost At Sea (Manual)")
            {
            }
            column(Job__Port_Day__Manual__; "Port Day (Manual)")
            {
            }
            column(Job__Cycle_Day__Manual___Control1000000026; "Cycle Day (Manual)")
            {
            }
            column(Job__Fishing_Day__Manual___Control1000000027; "Fishing Day (Manual)")
            {
            }
            column(Job__Lost_At_Sea__Manual___Control1000000028; "Lost At Sea (Manual)")
            {
            }
            column(Job__Port_Day__Manual___Control1000000029; "Port Day (Manual)")
            {
            }
            column(Job_Vessel_Control1000000008; Vessel)
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Cycle_Day__Manual__Caption; FieldCaption("Cycle Day (Manual)"))
            {
            }
            column(Job__Fishing_Day__Manual__Caption; FieldCaption("Fishing Day (Manual)"))
            {
            }
            column(Job__Lost_At_Sea__Manual__Caption; FieldCaption("Lost At Sea (Manual)"))
            {
            }
            column(Job__Port_Day__Manual__Caption; FieldCaption("Port Day (Manual)"))
            {
            }
            column(Job_No_; "No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Vessel);
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
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

