report 99986 "Inventory No Vat on all"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/InventoryNoVatonall.rdlc';

    dataset
    {
        dataitem(Item; Item)
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
            column(Item__No__; "No.")
            {
            }
            column(Item__VAT_Bus__Posting_Gr___Price__; "VAT Bus. Posting Gr. (Price)")
            {
            }
            column(Item__VAT_Prod__Posting_Group_; "VAT Prod. Posting Group")
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FieldCaption("No."))
            {
            }
            column(Item__VAT_Bus__Posting_Gr___Price__Caption; FieldCaption("VAT Bus. Posting Gr. (Price)"))
            {
            }
            column(Item__VAT_Prod__Posting_Group_Caption; FieldCaption("VAT Prod. Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item."VAT Prod. Posting Group" := 'No Vat';
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
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

