report 91001 "Update resource posted"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/Updateresourceposted.rdlc';

    dataset
    {
        dataitem(Resource; Resource)
        {
            //The property 'DataItemTableView' shouldn't have an empty value.
            //DataItemTableView = '';
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
            column(Resource__No__; "No.")
            {
            }
            column(Resource_Name; Name)
            {
            }
            column(Resource_Posted; Posted)
            {
            }
            column(Resource__Posted_To_Operation_; "Posted To Operation")
            {
            }
            column(Resource__Posted_To_Operation_Voyage_No__; "Posted To Operation Voyage No.")
            {
            }
            column(ResourceCaption; ResourceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Resource__No__Caption; FieldCaption("No."))
            {
            }
            column(Resource_NameCaption; FieldCaption(Name))
            {
            }
            column(Resource_PostedCaption; FieldCaption(Posted))
            {
            }
            column(Resource__Posted_To_Operation_Caption; FieldCaption("Posted To Operation"))
            {
            }
            column(Resource__Posted_To_Operation_Voyage_No__Caption; FieldCaption("Posted To Operation Voyage No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if "Posted To Operation" > 0 then Posted := true;
                Modify();
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
        ResourceCaptionLbl: Label 'Resource';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

