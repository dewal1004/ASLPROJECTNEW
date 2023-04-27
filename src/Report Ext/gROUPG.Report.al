report 99991 "gROUPG"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/gROUPG.rdlc';

    dataset
    {
        dataitem("Job Journal Line"; "Job Journal Line")
        {
            DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Statistics Group", "Work Type Code");
            RequestFilterFields = "Journal Template Name", "Journal Batch Name", "Statistics Group", "Work Type Code";
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
            column(Job_Journal_Line__Journal_Template_Name_; "Journal Template Name")
            {
            }
            column(Job_Journal_Line__Journal_Batch_Name_; "Journal Batch Name")
            {
            }
            column(Job_Journal_Line__Statistics_Group_; "Statistics Group")
            {
            }
            column(Job_Journal_Line__Work_Type_Code_; "Work Type Code")
            {
            }
            column(Job_Journal_Line__Job_No__; "Job No.")
            {
            }
            column(Job_Journal_Line__No__; "No.")
            {
            }
            column(Job_Journal_Line_Description; Description)
            {
            }
            column(Job_Journal_Line_Quantity; Quantity)
            {
            }
            column(Job_Journal_Line__Statistics_Group__Control32; "Statistics Group")
            {
            }
            column(Job_Journal_Line__Work_Type_Code__Control35; "Work Type Code")
            {
            }
            column(TotalFor___FIELDCAPTION__Work_Type_Code__; TotalFor + FieldCaption("Work Type Code"))
            {
            }
            column(Job_Journal_Line_Quantity_Control38; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Job_Journal_Line_Quantity_Control40; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Journal_Batch_Name__; TotalFor + FieldCaption("Journal Batch Name"))
            {
            }
            column(Job_Journal_Line_Quantity_Control42; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Journal_Template_Name__; TotalFor + FieldCaption("Journal Template Name"))
            {
            }
            column(Job_Journal_Line_Quantity_Control44; Quantity)
            {
            }
            column(Job_Journal_LineCaption; Job_Journal_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Journal_Line__Job_No__Caption; FieldCaption("Job No."))
            {
            }
            column(Job_Journal_Line__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_Journal_Line_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job_Journal_Line_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Job_Journal_Line__Statistics_Group__Control32Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Job_Journal_Line__Work_Type_Code__Control35Caption; FieldCaption("Work Type Code"))
            {
            }
            column(Job_Journal_Line__Journal_Template_Name_Caption; FieldCaption("Journal Template Name"))
            {
            }
            column(Job_Journal_Line__Journal_Batch_Name_Caption; FieldCaption("Journal Batch Name"))
            {
            }
            column(Job_Journal_Line__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Job_Journal_Line__Work_Type_Code_Caption; FieldCaption("Work Type Code"))
            {
            }
            column(Job_Journal_Line_Line_No_; "Line No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Work Type Code");
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
        TotalFor: Label 'Total for ';
        Job_Journal_LineCaptionLbl: Label 'Job Journal Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

