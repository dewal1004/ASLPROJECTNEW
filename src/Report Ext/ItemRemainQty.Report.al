report 70001 "Item Remain Qty"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ItemRemainQty.rdlc';
    Caption = 'Item Remain Qty';
    dataset
    {
        dataitem(Item; Item)
        {
            CalcFields = Inventory;
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Inventory Posting Group";
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
            column(Item__Base_Unit_of_Measure_; "Base Unit of Measure")
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(RemQty; RemQty)
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
            column(Item__Base_Unit_of_Measure_Caption; FieldCaption("Base Unit of Measure"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(RemQtyCaption; RemQtyCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                RemQty := 0;
                Item.CalcFields(Item.Inventory);
                ItemLedgEntry.SetCurrentKey("Item No.", "Posting Date");
                ItemLedgEntry.SetRange(ItemLedgEntry."Item No.", Item."No.");
                if ItemLedgEntry.FindSet() then
                    repeat
                        RemQty := RemQty + ItemLedgEntry."Remaining Quantity";
                    until ItemLedgEntry.Next() = 0;

                if RemQty = Item.Inventory then
                    CurrReport.Skip();
            end;

            trigger OnPreDataItem()
            begin

                RemQty := 0;
                Item.CalcFields(Item.Inventory, Item."Net Change");
                ItemLedgEntry.Reset();
                ItemLedgEntry.SetCurrentKey("Item No.", "Posting Date");
                ItemLedgEntry.SetRange(ItemLedgEntry."Item No.", Item."No.");
                if ItemLedgEntry.Find('-') then
                    repeat
                        RemQty := RemQty + ItemLedgEntry."Remaining Quantity";
                    until ItemLedgEntry.Next() = 0;

                if RemQty = Item."Net Change" then
                    CurrReport.ShowOutput(false);
                //CurrReport.SKIP;
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
        ItemLedgEntry: Record "Item Ledger Entry";
        RemQty: Decimal;
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        RemQtyCaptionLbl: Label 'Remaining Qty';
}
