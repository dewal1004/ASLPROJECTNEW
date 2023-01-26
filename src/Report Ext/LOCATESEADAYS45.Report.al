report 90101 "LOCATE SEADAYS 45"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/LOCATESEADAYS45.rdlc';

    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = SORTING(Code);
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
            column(Location__Sea_Days_; "Sea Days")
            {
            }
            column(Location__Location_Type_; "Location Type")
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
            column(Location__Sea_Days_Caption; FieldCaption("Sea Days"))
            {
            }
            column(Location__Location_Type_Caption; FieldCaption("Location Type"))
            {
            }
            dataitem("Inventory Posting Group"; "Inventory Posting Group")
            {

                trigger OnAfterGetRecord()
                begin
                    InvtPostSetup.Init;
                    InvtPostSetup."Location Code" := Location.Code;
                    InvtPostSetup."Invt. Posting Group Code" := "Inventory Posting Group".Code;
                    InvtPostSetup."Inventory Account" := '12090010';
                    InvtPostSetup."Inventory Account (Interim)" := '12090010';
                    if not InvtPostSetup.Insert then InvtPostSetup.Modify;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                if Location."Location Type" = 1 then Location."Sea Days" := 1;
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
        InvtPostSetup: Record "Inventory Posting Setup";
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

