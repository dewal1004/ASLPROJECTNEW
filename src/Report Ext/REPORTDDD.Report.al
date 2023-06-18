report 86666 "REPORT DDD"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/REPORTDDD.rdlc';
    Caption = 'REPORT DDD';
    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = SORTING(Code);
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

            trigger OnAfterGetRecord()
            begin

                INVREC."Location Code" := 'FISH-SHOP';
                INVREC."Invt. Posting Group Code" := "Inventory Posting Group".Code;
                INVREC."Inventory Account" := '12090100';
                INVREC."Inventory Account (Interim)" := '12090100';
                if INVREC.Insert() then;
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
        INVREC: Record "Inventory Posting Setup";
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
