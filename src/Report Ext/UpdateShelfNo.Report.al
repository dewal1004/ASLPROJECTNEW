report 90001 "Update Shelf No."
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateShelfNo.rdlc';

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
            column(Item__No__2_; "No. 2")
            {
            }
            column(Item__Shelf_No__; "Shelf No.")
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
            column(Item__No__2_Caption; FieldCaption("No. 2"))
            {
            }
            column(Item__Shelf_No__Caption; FieldCaption("Shelf No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Item."Shelf No." = '' then Item."Shelf No." := Item."No.";
                if not Item.Insert then Item.Modify();
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

