report 50919 "Update Item category cod"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateItemcategorycod.rdlc';
    Caption = 'Update Item category cod';
    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.") WHERE("Gen. Prod. Posting Group" = FILTER('FIS'), "SF Cat" = FILTER(''));
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
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Description_2_; "Description 2")
            {
            }
            column(Item__Item_Category_Code_; "Item Category Code")
            {
            }
            column(Item__SF_Cat_; "SF Cat")
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
            column(Item__Description_2_Caption; FieldCaption("Description 2"))
            {
            }
            column(Item__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if InvtPg.Get(Item."Inventory Posting Group") then Item."SF Cat" := CopyStr(InvtPg.Category, 5);
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
        InvtPg: Record "Inventory Posting Group";
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
