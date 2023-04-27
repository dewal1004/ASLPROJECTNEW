report 99975 "Gen. Bus Postg Grp 4 Item JLn"
{
    // NewGenBPostG
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/GenBusPostgGrp4ItemJLn.rdlc';


    dataset
    {
        dataitem("Item Journal Line"; "Item Journal Line")
        {
            RequestFilterFields = "Reason Code";
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
            column(Item_Journal_Line__Line_No__; "Line No.")
            {
            }
            column(Item_Journal_Line__Item_No__; "Item No.")
            {
            }
            column(Item_Journal_Line__Posting_Date_; "Posting Date")
            {
            }
            column(Item_Journal_Line__Reason_Code_; "Reason Code")
            {
            }
            column(Item_Journal_Line__External_Document_No__; "External Document No.")
            {
            }
            column(Item_Journal_Line__Gen__Prod__Posting_Group_; "Gen. Prod. Posting Group")
            {
            }
            column(Item_Journal_Line__Gen__Bus__Posting_Group_; "Gen. Bus. Posting Group")
            {
            }
            column(Item_Journal_Line_Quantity; Quantity)
            {
            }
            column(Item_Journal_Line__Unit_Amount_; "Unit Amount")
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
            column(Item_Journal_Line__Line_No__Caption; FieldCaption("Line No."))
            {
            }
            column(Item_Journal_Line__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Item_Journal_Line__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Item_Journal_Line__Reason_Code_Caption; FieldCaption("Reason Code"))
            {
            }
            column(Item_Journal_Line__External_Document_No__Caption; FieldCaption("External Document No."))
            {
            }
            column(Item_Journal_Line__Gen__Prod__Posting_Group_Caption; FieldCaption("Gen. Prod. Posting Group"))
            {
            }
            column(Item_Journal_Line__Gen__Bus__Posting_Group_Caption; FieldCaption("Gen. Bus. Posting Group"))
            {
            }
            column(Item_Journal_Line_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Item_Journal_Line__Unit_Amount_Caption; FieldCaption("Unit Amount"))
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
            column(Item_Journal_Line_Journal_Batch_Name; "Journal Batch Name")
            {
            }
            column(Item_Journal_Line_Entry_Type; "Entry Type")
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Gen. Bus. Posting Group" := NewGenBPostG;
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
        NewGenBPostG: Code[10];
        Item_Journal_LineCaptionLbl: Label 'Item Journal Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

