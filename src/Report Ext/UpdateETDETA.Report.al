report 99973 "Update ETD, ETA"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateETDETA.rdlc';

    dataset
    {
        dataitem(Location; Location)
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
            column(Location_Code; Code)
            {
            }
            column(Location_Name; Name)
            {
            }
            column(Location_ETD; ETD)
            {
            }
            column(Location_ETA; ETA)
            {
            }
            column(LocationCaption; LocationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Location_CodeCaption; FieldCaption(Code))
            {
            }
            column(Location_NameCaption; FieldCaption(Name))
            {
            }
            column(Location_ETDCaption; FieldCaption(ETD))
            {
            }
            column(Location_ETACaption; FieldCaption(ETA))
            {
            }
            column(Location_VSDVal; VSDVal)
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
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

