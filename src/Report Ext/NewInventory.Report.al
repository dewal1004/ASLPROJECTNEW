report 99993 "New Inventory"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/NewInventory.rdlc';

    dataset
    {
        dataitem("Item Journal Line"; "Item Journal Line")
        {
            RequestFilterFields = "Journal Template Name";
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
            column(Item_Journal_Line__Journal_Batch_Name_; "Journal Batch Name")
            {
            }
            column(Item_Journal_Line__Item_No__; "Item No.")
            {
            }
            column(Item_Journal_Line_Quantity; Quantity)
            {
            }
            column(Item_Journal_Line__Unit_Cost_; "Unit Cost")
            {
            }
            column(Item_Journal_Line_Amount; Amount)
            {
            }
            column(Item_Journal_LineCaption; Item_Journal_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Journal_Line__Journal_Batch_Name_Caption; FieldCaption("Journal Batch Name"))
            {
            }
            column(Item_Journal_Line__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Item_Journal_Line_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Item_Journal_Line__Unit_Cost_Caption; FieldCaption("Unit Cost"))
            {
            }
            column(Item_Journal_Line_AmountCaption; FieldCaption(Amount))
            {
            }
            column(Item_Journal_Line_Journal_Template_Name; "Journal Template Name")
            {
            }
            column(Item_Journal_Line_Line_No_; "Line No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItJl.Init;
                ItJl."Journal Template Name" := 'ITEM';
                ItJl."Journal Batch Name" := "Journal Batch Name";
                ItJl."Line No." := "Line No.";
                ItJl.Validate(ItJl."Item No.", "Item No.");
                ItJl."Posting Date" := "Posting Date";
                ItJl."Entry Type" := 2;
                ItJl."Source No." := "Source No.";
                ItJl."Document No." := "Document No.";
                ItJl."Location Code" := "Location Code";
                ItJl."Inventory Posting Group" := "Inventory Posting Group";
                ItJl."Gen. Bus. Posting Group" := 'OB';
                ItJl.Validate(ItJl.Quantity, "Item Journal Line"."Qty. (Calculated)");
                ItJl."Shortcut Dimension 2 Code" := 'ATLANTIC';
                if not ItJl.Insert then ItJl.Modify;
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
        ItJl: Record "Item Journal Line";
        Item_Journal_LineCaptionLbl: Label 'Item Journal Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

