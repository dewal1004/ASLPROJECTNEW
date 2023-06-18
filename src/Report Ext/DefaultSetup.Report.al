report 99105 "Default Setup"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/DefaultSetup.rdlc';
    Caption = 'Default Setup';
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
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__Sales_Unit_of_Measure_; "Sales Unit of Measure")
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
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item__Sales_Unit_of_Measure_Caption; FieldCaption("Sales Unit of Measure"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                //Item."Sales Unit of Measure":='Kg';
                // modify();
            end;
        }
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            begin
                "Location Code" := 'CRM-ASL';
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
