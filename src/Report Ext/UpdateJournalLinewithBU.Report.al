report 99901 "Update Journal Line with BU"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateJournalLinewithBU.rdlc';
    Caption = 'Update Journal Line with BU';
    dataset
    {
        dataitem("Item Journal Line"; "Item Journal Line")
        {
            RequestFilterFields = "Journal Template Name", "Journal Batch Name";
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
            column(Item_Journal_Line__Transaction_Specification_; "Transaction Specification")
            {
            }
            column(Item_Journal_Line__Posting_No__Series_; "Posting No. Series")
            {
            }
            column(Item_Journal_Line__Journal_Template_Name_; "Journal Template Name")
            {
            }
            column(Item_Journal_Line__Line_No__; "Line No.")
            {
            }
            column(Item_Journal_Line__Item_No__; "Item No.")
            {
            }
            column(Item_Journal_Line__Posting_Date_; "Posting Date")
            {
            }
            column(Item_Journal_Line__Entry_Type_; "Entry Type")
            {
            }
            column(Item_Journal_Line__Source_No__; "Source No.")
            {
            }
            column(Item_Journal_Line__Document_No__; "Document No.")
            {
            }
            column(Item_Journal_Line_Description; Description)
            {
            }
            column(Item_Journal_LineCaption; Item_Journal_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Journal_Line__Transaction_Specification_Caption; FieldCaption("Transaction Specification"))
            {
            }
            column(Item_Journal_Line__Posting_No__Series_Caption; FieldCaption("Posting No. Series"))
            {
            }
            column(Item_Journal_Line__Journal_Template_Name_Caption; FieldCaption("Journal Template Name"))
            {
            }
            column(Item_Journal_Line__Line_No__Caption; FieldCaption("Line No."))
            {
            }
            column(Item_Journal_Line__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Item_Journal_Line__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Item_Journal_Line__Entry_Type_Caption; FieldCaption("Entry Type"))
            {
            }
            column(Item_Journal_Line__Source_No__Caption; FieldCaption("Source No."))
            {
            }
            column(Item_Journal_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Item_Journal_Line_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Item_Journal_Line_Journal_Batch_Name; "Journal Batch Name")
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Item Journal Line"."Shortcut Dimension 2 Code" := 'ATLANTIC';
                "Item Journal Line"."Item List Cat" := CopyStr("Item Journal Line"."Item No.", 1, 2);
                "Item Journal Line"."Variant Code" := '';
                "Item Journal Line".Modify();
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
        Item_Journal_LineCaptionLbl: Label 'Item Journal Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
