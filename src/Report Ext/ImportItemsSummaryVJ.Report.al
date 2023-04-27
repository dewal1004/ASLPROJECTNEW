report 50121 "Import Items Summary VJ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ImportItemsSummaryVJ.rdlc';

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
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
            column(Value_Entry__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L_; "Cost Posted to G/L")
            {
            }
            column(Value_Entry__Valued_Quantity_; "Valued Quantity")
            {
            }
            column(ItemTable_Description; ItemTable.Description)
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_Entry__Gen__Prod__Posting_Group_; "Gen. Prod. Posting Group")
            {
            }
            column(Value_Entry__Valued_Quantity__Control32; "Valued Quantity")
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L__Control33; "Cost Posted to G/L")
            {
            }
            column(Import_Items_for_a_PeriodCaption; Import_Items_for_a_PeriodCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(GroupCaption; GroupCaptionLbl)
            {
            }
            column(ItemNoCaption; Item_No_CaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(Cost_Post_to_G_LCaption; Cost_Post_to_G_LCaptionLbl)
            {
            }
            column(Item_DescriptionCaption; Item_DescriptionCaptionLbl)
            {
            }
            column(Value_Entry__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Value_Entry_Entry_No_; "Entry No.")
            {
            }
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
        ItemDescription: Text[30];
        ItemTable: Record Item;
        ItemNo: Code[20];
        Import_Items_for_a_PeriodCaptionLbl: Label 'Import Items for a Period';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        GroupCaptionLbl: Label 'Group';
        Item_No_CaptionLbl: Label 'Item No.';
        QuantityCaptionLbl: Label 'Quantity';
        Cost_Post_to_G_LCaptionLbl: Label 'Cost Post to G/L';
        Item_DescriptionCaptionLbl: Label 'Item Description';
        TotalCaptionLbl: Label 'Total';
}

