report 99997 "Item Category Code No Update"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/ItemCategoryCodeNoUpdate.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "Statistics Group";
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
            column(Item__Item_Category_Code_; "Item Category Code")
            {
            }
            column(Item_Item__Item_Tracking_Code_; Item."Item Tracking Code")
            {
            }
            column(Item__Item_Category_No__; "Item Category No.")
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
            column(Item__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
            {
            }
            column(Item_Item__Item_Tracking_Code_Caption; FieldCaption("Item Tracking Code"))
            {
            }
            column(Item__Item_Category_No__Caption; FieldCaption("Item Category No."))
            {
            }
            column(Item_Statistics_Group; "Statistics Group")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Item."Item Category Code" <> '' then Item.Validate(Item."Item Category Code");
                Item.Modify;
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

