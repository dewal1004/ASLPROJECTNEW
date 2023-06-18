report 50142 "Revenue Summary VJ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/RevenueSummaryVJ.rdlc';
    Caption = 'Revenue Summary VJ';
    dataset
    {
        dataitem("Revenue Table VJ"; "Revenue Table VJ")
        {
            DataItemTableView = SORTING("Job No.");
            RequestFilterFields = "Job No.", ETA, Vessel;
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyInfo.Name)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(Revenue_Table_VJ__Job_No__; "Job No.")
            {
            }
            column(Revenue_Table_VJ_Vessel; Vessel)
            {
            }
            column(Revenue_Table_VJ_ETD; ETD)
            {
            }
            column(Revenue_Table_VJ_ETA; ETA)
            {
            }
            column(Revenue_Table_VJ__Sea_Days_; "Sea Days")
            {
            }
            column(Revenue_Table_VJ__Local_Revenue_; "Local Revenue")
            {
            }
            column(Revenue_Table_VJ__Export_Revenue_; "Export Revenue")
            {
            }
            column(Revenue_Table_VJCaption; Revenue_Table_VJCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Revenue_Table_VJ__Job_No__Caption; FieldCaption("Job No."))
            {
            }
            column(Revenue_Table_VJ_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Revenue_Table_VJ_ETDCaption; FieldCaption(ETD))
            {
            }
            column(Revenue_Table_VJ_ETACaption; FieldCaption(ETA))
            {
            }
            column(Revenue_Table_VJ__Sea_Days_Caption; FieldCaption("Sea Days"))
            {
            }
            column(Revenue_Table_VJ__Local_Revenue_Caption; FieldCaption("Local Revenue"))
            {
            }
            column(Revenue_Table_VJ__Export_Revenue_Caption; FieldCaption("Export Revenue"))
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
        Revenue_Table_VJCaptionLbl: Label 'Revenue Table VJ';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        CompanyInfo: Record "Company Information";
}
