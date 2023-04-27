report 90192 "Sample Vessel Groupg"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/SampleVesselGroupg.rdlc';
    Caption = 'Sample Vessel Groupg';

    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(Vessel, "Person Responsible");
            RequestFilterFields = Vessel, "Person Responsible";
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
            column(Job__Person_Responsible_; "Person Responsible")
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
            column(Job__Person_Responsible__Control1000000023; "Person Responsible")
            {
            }
            column(Job_Vessel_Control1000000026; Vessel)
            {
            }
            column(Job_Points; Points)
            {
            }
            column(Job__Points_Actual_; "Points Actual")
            {
            }
            column(Job__Comsumed_Value_; "Comsumed Value")
            {
            }
            column(TotalFor___FIELDCAPTION__Person_Responsible__; TotalFor + FieldCaption("Person Responsible"))
            {
            }
            column(Job_Points_Control1000000038; Points)
            {
            }
            column(Job__Points_Actual__Control1000000039; "Points Actual")
            {
            }
            column(Job__Comsumed_Value__Control1000000040; "Comsumed Value")
            {
            }
            column(TotalFor___FIELDCAPTION_Vessel_; TotalFor + FieldCaption(Vessel))
            {
            }
            column(Job_Points_Control1000000042; Points)
            {
            }
            column(Job__Points_Actual__Control1000000043; "Points Actual")
            {
            }
            column(Job__Comsumed_Value__Control1000000044; "Comsumed Value")
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
            column(Job__Person_Responsible__Control1000000023Caption; FieldCaption("Person Responsible"))
            {
            }
            column(Job_Vessel_Control1000000026Caption; FieldCaption(Vessel))
            {
            }
            column(Job_PointsCaption; FieldCaption(Points))
            {
            }
            column(Job__Points_Actual_Caption; FieldCaption("Points Actual"))
            {
            }
            column(Job__Comsumed_Value_Caption; FieldCaption("Comsumed Value"))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Person_Responsible_Caption; FieldCaption("Person Responsible"))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Person Responsible");
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

