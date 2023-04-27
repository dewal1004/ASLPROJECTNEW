report 99996 "Update Cat Cd No.- Invt Postg"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/UpdateCatCdNoInvtPostg.rdlc';

    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = WHERE(Category = FILTER(<> ''));
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
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(Inventory_Posting_Group_Category; Category)
            {
            }
            column(Inventory_Posting_Group__S_No__; "S/No.")
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
            column(Inventory_Posting_Group_CategoryCaption; FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group__S_No__Caption; FieldCaption("S/No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                //IF ItCat.GET(Category) THEN
                //  "Category Code No.":=ItCat."No.";
                "S/No." := 0;
                ;

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
        ItCat: Record "Item Category";
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

