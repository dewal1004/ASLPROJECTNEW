report 90991 "Fishing Area to Phase Code"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/FishingAreatoPhaseCode.rdlc';

    dataset
    {
        dataitem("Fishing Area +"; "Fishing Area +")
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
            column(Fishing_Area____No__; "No.")
            {
            }
            column(Fishing_Area___Code; Code)
            {
            }
            column(Fishing_AreaCaption; Fishing_AreaCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Fishing_Area____No__Caption; FieldCaption("No."))
            {
            }
            column(Fishing_Area___CodeCaption; FieldCaption(Code))
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*Phase.INIT;
                Phase.VALIDATE(Phase.Code,"Fishing Area +".Code);
                Phase.Description:=Phase.Code;
                Phase."No.":="Fishing Area +"."No.";
                IF NOT Phase.INSERT() THEN Phase.MODIFY();*/

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
        Fishing_AreaCaptionLbl: Label 'Fishing Area';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

