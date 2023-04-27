report 99123 "Modify Item BUOM"
{
    // NewBUOM
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/ModifyItemBUOM.rdlc';

    Permissions = TableData Item = rimd,
                  TableData "Item Ledger Entry" = rimd;

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
            column(Item__No__2_; "No. 2")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Search_Description_; "Search Description")
            {
            }
            column(Item__Description_2_; "Description 2")
            {
            }
            column(Item__Assembly_BOM_; "Assembly BOM")
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
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Item__Search_Description_Caption; FieldCaption("Search Description"))
            {
            }
            column(Item__Description_2_Caption; FieldCaption("Description 2"))
            {
            }
            column(Item__Assembly_BOM_Caption; FieldCaption("Assembly BOM"))
            {
            }
            column(ProdOrderExistCaption; ProdOrderExistCaptionLbl)
            {
            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = FIELD("No.");
                column(Item_Ledger_Entry__Entry_No__; "Entry No.")
                {
                }
                column(Item_Ledger_Entry__Item_No__; "Item No.")
                {
                }
                column(Item_Ledger_Entry__Unit_of_Measure_Code_; "Unit of Measure Code")
                {
                }
                column(Item_Ledger_Entry__Entry_No__Caption; FieldCaption("Entry No."))
                {
                }
                column(Item_Ledger_Entry__Item_No__Caption; FieldCaption("Item No."))
                {
                }
                column(Item_Ledger_Entry__Unit_of_Measure_Code_Caption; FieldCaption("Unit of Measure Code"))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Item Ledger Entry".SetRange("Item Ledger Entry"."Unit of Measure Code", xBUOM);
                    "Item Ledger Entry"."Unit of Measure Code" := NewBUOM;
                    "Item Ledger Entry".Modify;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                xBUOM := Item."Base Unit of Measure";

                ITUOM."Item No." := Item."No.";
                ITUOM.Code := NewBUOM;
                ITUOM."Qty. per Unit of Measure" := 1;
                if not ITUOM.Insert then ITUOM.Modify;
                Item."Base Unit of Measure" := NewBUOM;
                Item.Modify;
            end;

            trigger OnPreDataItem()
            begin
                Nums := Item.GetFilter(Item."No.");
                if Nums = '' then Error('Pls enter Item No.');
                xBUOM := Item."Base Unit of Measure";
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
        ITUOM: Record "Item Unit of Measure";
        NewBUOM: Code[10];
        xBUOM: Code[10];
        Nums: Code[10];
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ProdOrderExistCaptionLbl: Label 'Label27';
}

