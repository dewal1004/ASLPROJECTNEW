report 99974 "Narration update type=1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/Narrationupdatetype1.rdlc';

    dataset
    {
        dataitem("Comment Line"; "Comment Line")
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
            column(Comment_Line__Table_Name_; "Table Name")
            {
            }
            column(Comment_Line__No__; "No.")
            {
            }
            column(Comment_Line__Line_No__; "Line No.")
            {
            }
            column(Comment_Line_Type; Type)
            {
            }
            column(Comment_Line_Date; Date)
            {
            }
            column(Comment_LineCaption; Comment_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Comment_Line__Table_Name_Caption; FieldCaption("Table Name"))
            {
            }
            column(Comment_Line__No__Caption; FieldCaption("No."))
            {
            }
            column(Comment_Line__Line_No__Caption; FieldCaption("Line No."))
            {
            }
            column(Comment_Line_TypeCaption; FieldCaption(Type))
            {
            }
            column(Comment_Line_DateCaption; FieldCaption(Date))
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
        CmmLn: Record "Comment Line";
        bla: Text[30];
        Comment_LineCaptionLbl: Label 'Comment Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

