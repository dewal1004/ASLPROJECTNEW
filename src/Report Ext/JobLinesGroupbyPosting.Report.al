report 98015 "Job Lines Group by Posting"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/JobLinesGroupbyPosting.rdlc';
    Caption = 'Job Lines Group by Posting';
    dataset
    {
        dataitem("Job Journal Line"; "Job Journal Line")
        {
            DataItemTableView = SORTING("Posting Group");
            RequestFilterFields = "Posting Group";
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
            column(Job_Journal_Line__Posting_Group_; "Posting Group")
            {
            }
            column(Job_Journal_Line__Posting_Date_; "Posting Date")
            {
            }
            column(Job_Journal_Line__Job_No__; "Job No.")
            {
            }
            column(Job_Journal_Line__Document_No__; "Document No.")
            {
            }
            column(Job_Journal_Line_Type; Type)
            {
            }
            column(Job_Journal_Line__No__; "No.")
            {
            }
            column(Job_Journal_Line_Quantity; Quantity)
            {
            }
            column(Job_Journal_Line__Unit_of_Measure_Code_; "Unit of Measure Code")
            {
            }
            column(Job_Journal_Line__Unit_Cost__LCY__; "Unit Cost (LCY)")
            {
            }
            column(Job_Journal_Line__Total_Cost__LCY__; "Total Cost (LCY)")
            {
            }
            column(Job_Journal_Line__Unit_Price__LCY__; "Unit Price (LCY)")
            {
            }
            column(Job_Journal_Line__Total_Price__LCY__; "Total Price (LCY)")
            {
            }
            column(TotalFor___FIELDCAPTION__Posting_Group__; TotalFor + FieldCaption("Posting Group"))
            {
            }
            column(Job_Journal_Line__Total_Cost__LCY___Control44; "Total Cost (LCY)")
            {
            }
            column(Job_Journal_Line__Total_Price__LCY___Control45; "Total Price (LCY)")
            {
            }
            column(Job_Journal_LineCaption; Job_Journal_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Journal_Line__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Job_Journal_Line__Job_No__Caption; FieldCaption("Job No."))
            {
            }
            column(Job_Journal_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Job_Journal_Line_TypeCaption; FieldCaption(Type))
            {
            }
            column(Job_Journal_Line__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_Journal_Line_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Job_Journal_Line__Unit_of_Measure_Code_Caption; FieldCaption("Unit of Measure Code"))
            {
            }
            column(Job_Journal_Line__Unit_Cost__LCY__Caption; FieldCaption("Unit Cost (LCY)"))
            {
            }
            column(Job_Journal_Line__Total_Cost__LCY__Caption; FieldCaption("Total Cost (LCY)"))
            {
            }
            column(Job_Journal_Line__Unit_Price__LCY__Caption; FieldCaption("Unit Price (LCY)"))
            {
            }
            column(Job_Journal_Line__Total_Price__LCY__Caption; FieldCaption("Total Price (LCY)"))
            {
            }
            column(Job_Journal_Line__Posting_Group_Caption; FieldCaption("Posting Group"))
            {
            }
            column(Job_Journal_Line_Journal_Template_Name; "Journal Template Name")
            {
            }
            column(Job_Journal_Line_Journal_Batch_Name; "Journal Batch Name")
            {
            }
            column(Job_Journal_Line_Line_No_; "Line No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Posting Group");
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
        TotalFor: Label 'Total for ';
        Job_Journal_LineCaptionLbl: Label 'Job Journal Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
