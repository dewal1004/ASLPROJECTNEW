report 99044 "GB POSTING GRP"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/GBPOSTINGGRP.rdlc';
    Caption = 'GB POSTING GRP';
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
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
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
            column(Item_Journal_LineCaption; Item_Journal_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
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
            column(Item_Journal_Line_Journal_Batch_Name; "Journal Batch Name")
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Item Journal Line"."Gen. Bus. Posting Group" := 'OB';
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
