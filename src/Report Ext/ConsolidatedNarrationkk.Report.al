report 50245 "Consolidated Narration_kk"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ConsolidatedNarrationkk.rdlc';
    Caption = 'Consolidated Narration_kk';
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
            column(CurrReport_PAGENO; CurrReport.PageNo())
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
            column(Seadays; Seadays)
            {
            }
            column(TotHrsLost_24; TotHrsLost / 24)
            {
            }
            column(Day1; Day1)
            {
            }
            column(Day2; Day2)
            {
            }
            column(Day3; Day3)
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
            column(SeadaysCaption; SeadaysCaptionLbl)
            {
            }
            column(TotHrsLost_24Caption; TotHrsLost_24CaptionLbl)
            {
            }
            column(Day1Caption; Day1CaptionLbl)
            {
            }
            column(Day2Caption; Day2CaptionLbl)
            {
            }
            column(Day3Caption; Day3CaptionLbl)
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
        VessName: Code[50];
        NarratnFilter: Code[20];
        Seadays: Integer;
        TotHrsLost: Decimal;
        Day1: Boolean;
        Day2: Boolean;
        Day3: Boolean;
        Text000: Label 'Consolidated Narration Report As of %1';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Vessel_NameCaptionLbl: Label 'Vessel Name';
        NarrationCaptionLbl: Label 'Narration';
        Comment_Line__Day_Lost_Cause_CaptionLbl: Label 'Loss Cause';
        SeadaysCaptionLbl: Label 'Sea Days';
        TotHrsLost_24CaptionLbl: Label 'Total Hours Days';
        Day1CaptionLbl: Label 'Prev. Day';
        Day2CaptionLbl: Label 'Day Before';
        Day3CaptionLbl: Label 'Day Before';
        Conolidated_Narration_Report_50087CaptionLbl: Label 'Conolidated Narration Report 50087';
}
