report 95001 "BASEUOM IS PURCHUOM"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/BASEUOMISPURCHUOM.rdlc';

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
            column(Item__Base_Unit_of_Measure_; "Base Unit of Measure")
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
            column(Item__Base_Unit_of_Measure_Caption; FieldCaption("Base Unit of Measure"))
            {
            }
            column(Item__Purch__Unit_of_Measure_Caption; FieldCaption("Purch. Unit of Measure"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item."Purch. Unit of Measure" := Item."Base Unit of Measure";
                Item.Modify();
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

