report 50138 "Monthly PC Wise Report VJ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/MonthlyPCWiseReportVJ.rdlc';

    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(Captain, Vessel, "Points Sort Bay", Status) ORDER(Descending) WHERE("Voyage Ended" = FILTER(true));
            RequestFilterFields = Captain, "Ending Date";
            column(GETFILTERS; GetFilters)
            {
            }
            column(Job_Captain; Captain)
            {
            }
            column(Job_Captain_Control11; Captain)
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Job__Sea_Days_; "Sea Days")
            {
            }
            column(Job__Points_Actual_; "Points Actual")
            {
            }
            column(TotalFor___FIELDCAPTION_Captain_; TotalFor + FieldCaption(Captain))
            {
            }
            column(Job__Points_Actual__Control26; "Points Actual")
            {
            }
            column(GTotal; GTotal)
            {
            }
            column(Port_Captain_Wise___Caption; Port_Captain_Wise___CaptionLbl)
            {
            }
            column(Job_Captain_Control11Caption; FieldCaption(Captain))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Fishing_Country_Code_Caption; FieldCaption("Fishing Country Code"))
            {
            }
            column(Job__Sea_Days_Caption; FieldCaption("Sea Days"))
            {
            }
            column(Job__Points_Actual_Caption; FieldCaption("Points Actual"))
            {
            }
            column(Job_CaptainCaption; FieldCaption(Captain))
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            column(AverageCaption; AverageCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }

            trigger OnPostDataItem()
            begin
                GTotal := GTotal + Job."Points Actual";
            end;

            trigger OnPreDataItem()
            begin

                LastFieldNo := FieldNo(Captain);

                GTotal := 0;
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
        GTotal: Decimal;
        Port_Captain_Wise___CaptionLbl: Label 'Port Captain Wise - ';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        AverageCaptionLbl: Label 'Average';
}

