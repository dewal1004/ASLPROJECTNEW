report 99345 "FISH Area By Location"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/FISHAreaByLocation.rdlc';

    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = SORTING(Code) WHERE("Location Type" = CONST(Vessel));
            RequestFilterFields = "date filter";
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
            column(Location__Current_Operation_; "Current Operation")
            {
            }
            column(Location__Fishing_Area_; "Fishing Area")
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
            column(Location__Current_Operation_Caption; FieldCaption("Current Operation"))
            {
            }
            column(Location__Fishing_Area_Caption; FieldCaption("Fishing Area"))
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

