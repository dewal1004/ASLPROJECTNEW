report 99125 "dskdsk"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/dskdsk.rdlc';

    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.";
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
            column(Job__No__; "No.")
            {
            }
            column(Job_Description; Description)
            {
            }
            column(Job_Points; Points)
            {
            }
            column(Job__Points_Actual_; "Points Actual")
            {
            }
            column(Job__Incentive__Pt__Based__; "Incentive (Pt. Based)")
            {
            }
            column(Job__Incentive__Pt__Based__Actual_; "Incentive (Pt. Based) Actual")
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
            column(Job_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job_PointsCaption; FieldCaption(Points))
            {
            }
            column(Job__Points_Actual_Caption; FieldCaption("Points Actual"))
            {
            }
            column(Job__Incentive__Pt__Based__Caption; FieldCaption("Incentive (Pt. Based)"))
            {
            }
            column(Job__Incentive__Pt__Based__Actual_Caption; FieldCaption("Incentive (Pt. Based) Actual"))
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
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

