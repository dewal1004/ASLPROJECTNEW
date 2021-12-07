report 90501 "Location by Inv. Postg Grp"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/LocationbyInvPostgGrp.rdlc';

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
            dataitem("Inventory Posting Group"; "Inventory Posting Group")
            {
                DataItemTableView = SORTING("S/No.", "Statistics Group");
                RequestFilterFields = "Code";

                trigger OnAfterGetRecord()
                begin
                    val := '12090010';
                    if ("Inventory Posting Group".Code <= '133') and ("Inventory Posting Group".Code >= '0') then
                        val := '12090050'
                    else
                        if ("Inventory Posting Group".Code <= '175') and ("Inventory Posting Group".Code > '133') then val := '12090060';
                    InvSetUp.Init;
                    InvSetUp."Location Code" := Location.Code;
                    InvSetUp."Invt. Posting Group Code" := "Inventory Posting Group".Code;
                    InvSetUp."Inventory Account" := val;
                    InvSetUp."Inventory Account (Interim)" := val;
                    if not InvSetUp.Insert then InvSetUp.Modify;
                end;
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
        InvSetUp: Record "Inventory Posting Setup";
        val: Code[10];
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

