report 90502 "Location by Inv. Postg Grp2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/LocationbyInvPostgGrp2.rdlc';

    dataset
    {
        dataitem(Location; Location)
        {
            RequestFilterFields = "Code", "Location Type";
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
                DataItemTableView = SORTING("S/No.", "Statistics Group") ORDER(Ascending) WHERE("S/No." = FILTER(0 .. 180));

                trigger OnAfterGetRecord()
                begin
                    val := '41010900';
                    if (Location.Code = 'CRM-ASL') and ("Inventory Posting Group".Code > '133') then val := '12090060';
                    if (Location.Code = 'CRM-ASL') and ("Inventory Posting Group".Code <= '133') then val := '12090050';
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

