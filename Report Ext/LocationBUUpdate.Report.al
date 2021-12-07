report 99002 "Location BU Update"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/LocationBUUpdate.rdlc';

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
            column(Location__Name_2_; "Name 2")
            {
            }
            column(Location__Shortcut_Dimension_2_Code_; "Shortcut Dimension 2 Code")
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
            column(Location__Name_2_Caption; FieldCaption("Name 2"))
            {
            }
            column(Location__Shortcut_Dimension_2_Code_Caption; FieldCaption("Shortcut Dimension 2 Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Location."Name 2" <> 'ICF' then begin
                    Location.Address := COY.Address;
                    Location."Address 2" := COY."Address 2";
                    Location.City := COY.City;
                    Location."Phone No." := COY."Phone No.";
                    Location."Phone No. 2" := COY."Phone No. 2";
                    Location."Telex No." := COY."Telex No.";
                    Location."Fax No." := COY."Fax No.";
                    Location."E-Mail" := COY."E-Mail";
                    Location."Home Page" := COY."Home Page";
                end;

                if Location."Name 2" = 'ASL' then Location."Shortcut Dimension 2 Code" := 'ATLANTIC';
                if Location."Name 2" = 'SSC' then Location."Shortcut Dimension 2 Code" := 'SAVANNAH';
                if Location."Name 2" = 'ICF' then Location."Shortcut Dimension 2 Code" := 'ICF';
                if Location."Name 2" = 'COS' then Location."Shortcut Dimension 2 Code" := 'COSMOS';
                Location.Modify;
            end;

            trigger OnPreDataItem()
            begin
                COY.Get;
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
        COY: Record "Company Information";
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

