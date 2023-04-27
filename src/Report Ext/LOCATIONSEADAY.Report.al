report 90007 "LOCATION SEA DAY"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/LOCATIONSEADAY.rdlc';

    dataset
    {
        dataitem(Location; Location)
        {
            RequestFilterFields = "Code";
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
            column(Location__Location_Type_; "Location Type")
            {
            }
            column(Location__Sea_Days_; "Sea Days")
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
            column(Location__Location_Type_Caption; FieldCaption("Location Type"))
            {
            }
            column(Location__Sea_Days_Caption; FieldCaption("Sea Days"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Location."Location Type" = 1 then
                    Location."Sea Days" := 2
                else
                    Location."Sea Days" := 0;

                Location.Modify;
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
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

