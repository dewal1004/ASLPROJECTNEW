report 50128 "Account Schedule Working CA"
{
    // //Text004 ///AAA
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/AccountScheduleWorkingCA.rdlc';

    Caption = 'Account Schedule';

    dataset
    {
        dataitem(AccScheduleName; "Acc. Schedule Name")
        {
            DataItemTableView = SORTING(Name);
            column(AccScheduleName_Name; Name)
            {
            }
            dataitem(Heading; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(USERID; UserId)
                {
                }
                column(Text004_PeriodText; Text004 + PeriodText)
                {
                }
                column(CurrReport_PAGENO; CurrReport.PageNo)
                {
                }
                column(COMPANYNAME; CompanyName)
                {
                }
                column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                {
                }
                column(AccScheduleName_Description__Text004_PeriodText; AccScheduleName.Description + Text004 + PeriodText)
                {
                }
                column(AnalysisView_Code; AnalysisView.Code)
                {
                }
                column(AnalysisView_Name; AnalysisView.Name)
                {
                }
                column(HeaderText____; '(' + HeaderText + ')')
                {
                }
                column(Acc__Schedule_Line__TABLECAPTION__________AccSchedLineFilter; "Acc. Schedule Line".TableCaption + ': ' + AccSchedLineFilter)
                {
                }
                column(FiscalStartDate; FiscalStartDate)
                {
                }
                column(AccScheduleName_Name_Control68; AccScheduleName.Name)
                {
                }
                column(ColumnLayoutName; ColumnLayoutName)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(AnalysisView_CodeCaption; AnalysisView_CodeCaptionLbl)
                {
                }
                column(Account_ScheduleCaption; Account_ScheduleCaptionLbl)
                {
                }
                column(FiscalStartDateCaption; FiscalStartDateCaptionLbl)
                {
                }
                column(AccScheduleName_Name_Control68Caption; AccScheduleName_Name_Control68CaptionLbl)
                {
                }
                column(ColumnLayoutNameCaption; ColumnLayoutNameCaptionLbl)
                {
                }
                column(Heading_Number; Number)
                {
                }
                dataitem(AccSchedLineSpec; "Acc. Schedule Line")
                {
                    DataItemLink = "Schedule Name" = FIELD(Name);
                    DataItemLinkReference = AccScheduleName;
                    DataItemTableView = SORTING("Schedule Name", "Line No.");
                    column(AccSchedLineSpec__Show_Opposite_Sign_; "Show Opposite Sign")
                    {
                    }
                    column(AccSchedLineSpec_Underline; Underline)
                    {
                    }
                    column(AccSchedLineSpec_Italic; Italic)
                    {
                    }
                    column(AccSchedLineSpec_Bold; Bold)
                    {
                    }
                    column(AccSchedLineSpec_Show; Show)
                    {
                    }
                    column(AccSchedLineSpec__New_Page_; "New Page")
                    {
                    }
                    column(AccSchedLineSpec__Totaling_Type_; "Totaling Type")
                    {
                    }
                    column(AccSchedLineSpec_Totaling; Totaling)
                    {
                    }
                    column(AccSchedLineSpec_Description; Description)
                    {
                    }
                    column(AccSchedLineSpec__Row_No__; "Row No.")
                    {
                    }
                    column(AnalysisView__Dimension_1_Code_; AnalysisView."Dimension 1 Code")
                    {
                    }
                    column(AccSchedLineSpec__Dimension_1_Totaling_; "Dimension 1 Totaling")
                    {
                    }
                    column(AnalysisView__Dimension_2_Code_; AnalysisView."Dimension 2 Code")
                    {
                    }
                    column(AccSchedLineSpec__Dimension_2_Totaling_; "Dimension 2 Totaling")
                    {
                    }
                    column(AnalysisView__Dimension_3_Code_; AnalysisView."Dimension 3 Code")
                    {
                    }
                    column(AccSchedLineSpec__Dimension_3_Totaling_; "Dimension 3 Totaling")
                    {
                    }
                    column(AnalysisView__Dimension_4_Code_; AnalysisView."Dimension 4 Code")
                    {
                    }
                    column(AccSchedLineSpec__Dimension_4_Totaling_; "Dimension 4 Totaling")
                    {
                    }
                    column(AccSchedLineSpec__Show_Opposite_Sign_Caption; FieldCaption("Show Opposite Sign"))
                    {
                    }
                    column(AccSchedLineSpec_UnderlineCaption; FieldCaption(Underline))
                    {
                    }
                    column(AccSchedLineSpec_ItalicCaption; FieldCaption(Italic))
                    {
                    }
                    column(AccSchedLineSpec_BoldCaption; FieldCaption(Bold))
                    {
                    }
                    column(AccSchedLineSpec_ShowCaption; FieldCaption(Show))
                    {
                    }
                    column(AccSchedLineSpec__New_Page_Caption; FieldCaption("New Page"))
                    {
                    }
                    column(AccSchedLineSpec__Totaling_Type_Caption; FieldCaption("Totaling Type"))
                    {
                    }
                    column(AccSchedLineSpec_TotalingCaption; FieldCaption(Totaling))
                    {
                    }
                    column(AccSchedLineSpec_DescriptionCaption; FieldCaption(Description))
                    {
                    }
                    column(AccSchedLineSpec__Row_No__Caption; FieldCaption("Row No."))
                    {
                    }
                    column(AnalysisView__Dimension_1_Code_Caption; AnalysisView__Dimension_1_Code_CaptionLbl)
                    {
                    }
                    column(AccSchedLineSpec_Schedule_Name; "Schedule Name")
                    {
                    }
                    column(AccSchedLineSpec_Line_No_; "Line No.")
                    {
                    }

                    trigger OnPreDataItem()
                    begin
                        if not ShowAccSchedSetup then
                            CurrReport.Break;
                    end;
                }
                dataitem(PageBreak; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

                    trigger OnAfterGetRecord()
                    begin
                        CurrReport.NewPage;
                    end;

                    trigger OnPreDataItem()
                    begin
                        if not ShowAccSchedSetup then
                            CurrReport.Break;
                    end;
                }
                dataitem("Acc. Schedule Line"; "Acc. Schedule Line")
                {
                    DataItemLink = "Schedule Name" = FIELD(Name);
                    DataItemLinkReference = AccScheduleName;
                    DataItemTableView = SORTING("Schedule Name", "Line No.");
                    RequestFilterFields = "Date Filter", "G/L Budget Filter", "Dimension 1 Filter", "Dimension 2 Filter";
                    column(Header_1_; Header[1])
                    {
                    }
                    column(Header_2_; Header[2])
                    {
                    }
                    column(Header_3_; Header[3])
                    {
                    }
                    column(Header_4_; Header[4])
                    {
                    }
                    column(Header_5_; Header[5])
                    {
                    }
                    column(Header_10_; Header[10])
                    {
                    }
                    column(Header_9_; Header[9])
                    {
                    }
                    column(Header_8_; Header[8])
                    {
                    }
                    column(Header_7_; Header[7])
                    {
                    }
                    column(Header_6_; Header[6])
                    {
                    }
                    column(RoundingHeader_5_; RoundingHeader[5])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_4_; RoundingHeader[4])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_3_; RoundingHeader[3])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_2_; RoundingHeader[2])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_1_; RoundingHeader[1])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_10_; RoundingHeader[10])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_9_; RoundingHeader[9])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_8_; RoundingHeader[8])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_7_; RoundingHeader[7])
                    {
                        AutoCalcField = false;
                    }
                    column(RoundingHeader_6_; RoundingHeader[6])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_5_; ColumnValuesAsText[5])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_4_; ColumnValuesAsText[4])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_3_; ColumnValuesAsText[3])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_2_; ColumnValuesAsText[2])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_1_; ColumnValuesAsText[1])
                    {
                        AutoCalcField = false;
                    }
                    column(Acc__Schedule_Line_Description; Description)
                    {
                    }
                    column(ColumnValuesAsText_10_; ColumnValuesAsText[10])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_9_; ColumnValuesAsText[9])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_8_; ColumnValuesAsText[8])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_7_; ColumnValuesAsText[7])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_6_; ColumnValuesAsText[6])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_5__Control50; ColumnValuesAsText[5])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_4__Control51; ColumnValuesAsText[4])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_3__Control52; ColumnValuesAsText[3])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_2__Control53; ColumnValuesAsText[2])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_1__Control58; ColumnValuesAsText[1])
                    {
                        AutoCalcField = false;
                    }
                    column(Acc__Schedule_Line_Description_Control59; Description)
                    {
                    }
                    column(ColumnValuesAsText_10__Control1000000005; ColumnValuesAsText[10])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_9__Control1000000006; ColumnValuesAsText[9])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_8__Control1000000007; ColumnValuesAsText[8])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_7__Control1000000008; ColumnValuesAsText[7])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_6__Control1000000009; ColumnValuesAsText[6])
                    {
                        AutoCalcField = false;
                    }
                    column(Acc__Schedule_Line_Description_Control22; Description)
                    {
                    }
                    column(ColumnValuesAsText_1__Control23; ColumnValuesAsText[1])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_2__Control24; ColumnValuesAsText[2])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_3__Control25; ColumnValuesAsText[3])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_4__Control26; ColumnValuesAsText[4])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_5__Control12; ColumnValuesAsText[5])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_10__Control1000000010; ColumnValuesAsText[10])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_9__Control1000000011; ColumnValuesAsText[9])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_8__Control1000000012; ColumnValuesAsText[8])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_7__Control1000000013; ColumnValuesAsText[7])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_6__Control1000000014; ColumnValuesAsText[6])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_5__Control35; ColumnValuesAsText[5])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_4__Control36; ColumnValuesAsText[4])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_3__Control37; ColumnValuesAsText[3])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_2__Control38; ColumnValuesAsText[2])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_1__Control39; ColumnValuesAsText[1])
                    {
                        AutoCalcField = false;
                    }
                    column(Acc__Schedule_Line_Description_Control40; Description)
                    {
                    }
                    column(ColumnValuesAsText_10__Control1000000015; ColumnValuesAsText[10])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_9__Control1000000016; ColumnValuesAsText[9])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_8__Control1000000017; ColumnValuesAsText[8])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_7__Control1000000018; ColumnValuesAsText[7])
                    {
                        AutoCalcField = false;
                    }
                    column(ColumnValuesAsText_6__Control1000000019; ColumnValuesAsText[6])
                    {
                        AutoCalcField = false;
                    }
                    column(Acc__Schedule_Line_Description_Control22Caption; FieldCaption(Description))
                    {
                    }
                    column(Acc__Schedule_Line_Schedule_Name; "Schedule Name")
                    {
                    }
                    column(Acc__Schedule_Line_Line_No_; "Line No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        for i := 1 to MaxColumnsDisplayed do begin
                            ColumnValuesDisplayed[i] := 0;
                            ColumnValuesAsText[i] := '';
                        end;
                        if GetFilter("Date Filter") = '' then
                            SetRange("Date Filter", CalcDate('CM-2M+1D'), CalcDate('CM', CalcDate('CM-1M')));
                    end;
                }
            }

            trigger OnAfterGetRecord()
            begin
                //MESSAGE('Current Filter is%1',GETFILTER(Name));
                CurrReport.PageNo := 1;
                GLSetup.Get;
                if "Analysis View Name" <> '' then begin
                    AnalysisView.Get("Analysis View Name");
                end else begin
                    AnalysisView.Init;
                    AnalysisView."Dimension 1 Code" := GLSetup."Global Dimension 1 Code";
                    AnalysisView."Dimension 2 Code" := GLSetup."Global Dimension 2 Code";
                end;

                if UseAmtsInAddCurr then
                    HeaderText := StrSubstNo(Text003, GLSetup."Additional Reporting Currency")
                else
                    if GLSetup."LCY Code" <> '' then
                        HeaderText := StrSubstNo(Text003, GLSetup."LCY Code")
                    else
                        HeaderText := '';
            end;

            trigger OnPreDataItem()
            begin
                if GLSetup.Get then SetFilter(Name, GLSetup."Schedule Name 8");
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

    trigger OnPreReport()
    begin
        //InitAccSched;}///AAA
    end;

    var
        Text000: Label '(Thousands)';
        Text001: Label '(Millions)';
        Text002: Label '* ERROR *';
        Text003: Label 'All amounts are in %1.';
        ColLayoutTmp: Record "Column Layout" temporary;
        AnalysisView: Record "Analysis View";
        GLSetup: Record "General Ledger Setup";
        AccSchedManagement: Codeunit AccSchedManagement;
        ColumnLayoutName: Code[10];
        ColumnLayoutNameHidden: Code[10];
        StartDate: Date;
        EndDate: Date;
        ShowDivideError: Boolean;
        FiscalStartDate: Date;
        ColumnValuesDisplayed: array[13] of Decimal;
        ColumnValuesAsText: array[13] of Text[30];
        PeriodText: Text[30];
        AccSchedLineFilter: Text[250];
        Header: array[13] of Text[30];
        RoundingHeader: array[13] of Text[30];
        HasRounding: Boolean;
        i: Integer;
        MaxColumnsDisplayed: Integer;
        NoOfCols: Integer;
        UseAmtsInAddCurr: Boolean;
        ShowAccSchedSetup: Boolean;
        HeaderText: Text[100];
        Text004: Label ' FOR THE PERIOD ';
        StDat: Text[10];
        EnDat: Text[10];
        DatFilt: Text[30];
        Text005: Label ' AS AT ';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        AnalysisView_CodeCaptionLbl: Label 'Analysis View';
        Account_ScheduleCaptionLbl: Label 'Account Schedule';
        FiscalStartDateCaptionLbl: Label 'Fiscal Start Date';
        AccScheduleName_Name_Control68CaptionLbl: Label 'Account Schedule';
        ColumnLayoutNameCaptionLbl: Label 'Column Layout';
        AnalysisView__Dimension_1_Code_CaptionLbl: Label 'Dimension Code';

    //[Scope('OnPrem')]
    procedure InitAccSched()
    begin
        StDat := Format(CalcDate('CM-2M+1D'));
        EnDat := Format(CalcDate('CM', CalcDate('CM-1M')));
        DatFilt := StDat + '..' + EnDat;
        if "Acc. Schedule Line".GetFilter("Date Filter") = '' then
            "Acc. Schedule Line".SetFilter("Acc. Schedule Line"."Date Filter", DatFilt);
        //MESSAGE('Date Filter is %1',"Acc. Schedule Line".GETFILTER("Date Filter"));

        StartDate := "Acc. Schedule Line".GetRangeMin("Date Filter");
        EndDate := "Acc. Schedule Line".GetRangeMax("Date Filter");
        //FiscalStartDate := AccSchedManagement.FindFiscalYear(EndDate);

        MaxColumnsDisplayed := ArrayLen(ColumnValuesDisplayed);
        AccSchedLineFilter := "Acc. Schedule Line".GetFilters;
        PeriodText := "Acc. Schedule Line".GetFilter("Date Filter");
        HasRounding := false;
        NoOfCols := 0;
        AccSchedManagement.CopyColumnsToTemp(ColumnLayoutName, ColLayoutTmp);
        with ColLayoutTmp do begin
            i := 0;
            if Find('-') then begin
                repeat
                    if Show <> Show::Never then begin
                        i := i + 1;
                        if i <= MaxColumnsDisplayed then begin
                            Header[i] := "Column Header";
                            RoundingHeader[i] := '';
                            if "Rounding Factor" in ["Rounding Factor"::"1000", "Rounding Factor"::"1000000"] then begin
                                HasRounding := true;
                                case "Rounding Factor" of
                                    "Rounding Factor"::"1000":
                                        RoundingHeader[i] := Text000;
                                    "Rounding Factor"::"1000000":
                                        RoundingHeader[i] := Text001;
                                end;
                            end;
                        end;
                    end;
                    NoOfCols := NoOfCols + 1;
                until (i >= MaxColumnsDisplayed) or (Next = 0);
                MaxColumnsDisplayed := i;
            end;
        end;
    end;

    //[Scope('OnPrem')]
    procedure SetColumnLayoutName(ColLayoutName: Code[10])
    begin
        ColumnLayoutNameHidden := ColLayoutName;
    end;

    //[Scope('OnPrem')]
    procedure CalcColumns(): Boolean
    var
        NonZero: Boolean;
    begin
        NonZero := false;
        with ColLayoutTmp do begin
            SetRange("Column Layout Name", ColumnLayoutName);
            i := 0;
            if Find('-') then
                repeat
                    if ColLayoutTmp.Show <> ColLayoutTmp.Show::Never then begin
                        i := i + 1;
                        ColumnValuesDisplayed[i] :=
                          AccSchedManagement.CalcCell("Acc. Schedule Line", ColLayoutTmp, UseAmtsInAddCurr);
                        if AccSchedManagement.GetDivisionError then begin
                            if ShowDivideError then
                                ColumnValuesAsText[i] := Text002
                            else
                                ColumnValuesAsText[i] := '';
                        end else begin
                            NonZero := NonZero or (ColumnValuesDisplayed[i] <> 0);
                            ColumnValuesAsText[i] :=
                              AccSchedManagement.FormatCellAsText(ColLayoutTmp, ColumnValuesDisplayed[i], true);
                        end;
                    end;
                until (i >= MaxColumnsDisplayed) or (Next = 0);
        end;
        exit(NonZero);
    end;

    //[Scope('OnPrem')]
    procedure ShowLine(Bold: Boolean; Italic: Boolean): Boolean
    var
        NonZero: Boolean;
    begin
        if "Acc. Schedule Line".Show = "Acc. Schedule Line".Show::No then
            exit(false);
        if "Acc. Schedule Line".Bold <> Bold then
            exit(false);
        if "Acc. Schedule Line".Italic <> Italic then
            exit(false);
        NonZero := CalcColumns;
        if "Acc. Schedule Line".Show = "Acc. Schedule Line".Show::"If Any Column Not Zero" then
            exit(NonZero);
        exit(true);
    end;
}

