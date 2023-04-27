report 90999 "Class distribution Item"
{
    // Caught Item category= C
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/ClassdistributionItem.rdlc';


    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.");
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
            column(Item_Description; Description)
            {
            }
            column(ProdOrderExist; ProdOrderExistCaptionLbl)
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
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(ProdOrderExistCaption; ProdOrderExistCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*Item.ProdOrderExist:='C';
                Item.MODIFY;  *///ma

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
        ProdOrderExistCaptionLbl: Label 'Label15';
}

