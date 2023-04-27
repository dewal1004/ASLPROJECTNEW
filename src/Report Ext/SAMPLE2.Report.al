report 99509 "SAMPLE 2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/SAMPLE2.rdlc';

    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = SORTING("Statistics Group", Category, "S/No.");
            RequestFilterFields = "Statistics Group", Category;
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
            column(Inventory_Posting_Group__Statistics_Group_; "Statistics Group")
            {
            }
            column(Inventory_Posting_Group_Category; Category)
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control23; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control25; Inventory)
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
            column(Inventory_Posting_Group_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_CategoryCaption; FieldCaption(Category))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Category);
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

