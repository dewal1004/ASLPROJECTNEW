report 90992 "Update InUse/Cat Invt.PGrp"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateInUseCatInvtPGrp.rdlc';
    Caption = 'Update InUse/Cat Invt.PGrp';
    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            RequestFilterFields = "Code";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(Inventory_Posting_Group__In_Use_; "In Use")
            {
            }
            column(Inventory_Posting_GroupCaption; Inventory_Posting_GroupCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_CodeCaption; FieldCaption(Code))
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group__In_Use_Caption; FieldCaption("In Use"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Inventory Posting Group"."In Use" := true;
                if ItCat.Get("Inventory Posting Group".Category) then
                    // "Inventory Posting Group".Category:=ItCat."Sort Code";//@MAHENDAR
                    "Inventory Posting Group".Modify();
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
        ItCat: Record "Item Category";
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
