report 99983 "Update Fis Sale & Purch UOM"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateFisSalePurchUOM.rdlc';

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
            column(Item_Description; Description)
            {
            }
            column(Item__Gen__Prod__Posting_Group_; "Gen. Prod. Posting Group")
            {
            }
            column(Item__Sales_Unit_of_Measure_; "Sales Unit of Measure")
            {
            }
            column(Item__Purch__Unit_of_Measure_; "Purch. Unit of Measure")
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
            column(Item__Gen__Prod__Posting_Group_Caption; FieldCaption("Gen. Prod. Posting Group"))
            {
            }
            column(Item__Sales_Unit_of_Measure_Caption; FieldCaption("Sales Unit of Measure"))
            {
            }
            column(Item__Purch__Unit_of_Measure_Caption; FieldCaption("Purch. Unit of Measure"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item."Purch. Unit of Measure" := 'KG';
                Item."Sales Unit of Measure" := 'KG';
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
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
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

