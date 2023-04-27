report 99087 "Consolidated Narrationz"
{
    // "Comment Line"."Day Lost Cause"
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/ConsolidatedNarrationz.rdlc';


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
            column(STRSUBSTNO_Text000_NarratnFilter_; StrSubstNo(Text000, NarratnFilter))
            {
            }
            column(Comment_Line_Comment; Comment)
            {
            }
            column(VessName; VessName)
            {
            }
            column(Comment_Line__Hours_Lost_; "Hours Lost")
            {
                DecimalPlaces = 1 : 1;
            }
            column(Comment_Line__Day_Lost_Cause_; "Day Lost Cause")
            {
            }
            column(Comment_Line_Date; Date)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Vessel_NameCaption; Vessel_NameCaptionLbl)
            {
            }
            column(NarrationCaption; NarrationCaptionLbl)
            {
            }
            column(Comment_Line__Hours_Lost_Caption; FieldCaption("Hours Lost"))
            {
            }
            column(Comment_Line__Day_Lost_Cause_Caption; Comment_Line__Day_Lost_Cause_CaptionLbl)
            {
            }
            column(Comment_Line_DateCaption; FieldCaption(Date))
            {
            }
            column(Conolidated_Narration_Report_50087Caption; Conolidated_Narration_Report_50087CaptionLbl)
            {
            }
            column(Comment_Line_Table_Name; "Table Name")
            {
            }
            column(Comment_Line_No_; "No.")
            {
            }
            column(Comment_Line_Line_No_; "Line No.")
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
        Loc: Record Location;
        VessName: Code[50];
        NarratnFilter: Code[20];
        Text000: Label 'Consolidated Narration Report As of %1';
        StartDate: Date;
        EndDate: Date;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Vessel_NameCaptionLbl: Label 'Vessel Name';
        NarrationCaptionLbl: Label 'Narration';
        Comment_Line__Day_Lost_Cause_CaptionLbl: Label 'Loss Cause';
        Conolidated_Narration_Report_50087CaptionLbl: Label 'Conolidated Narration Report 50087';
}

