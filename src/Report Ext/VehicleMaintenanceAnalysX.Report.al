report 59028 "Vehicle Maintenance - Analys X"
{
    // "Fixed Asset"."Responsible Employee"
    // RespEmpl.FullName
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VehicleMaintenanceAnalysX.rdlc';

    Caption = 'Maintenance - Analysis';

    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            DataItemTableView = WHERE("FA Class Code" = CONST('MOVE'));
            RequestFilterFields = "No.", "FA Class Code", "FA Subclass Code";
            column(COMPANYNAME; CompanyName)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(DeprBookText; DeprBookText)
            {
            }
            column(Fixed_Asset__TABLECAPTION__________FAFilter; "Fixed Asset".TableCaption + ': ' + FAFilter)
            {
            }
            column(HeadLineText_1_; HeadLineText[1])
            {
            }
            column(HeadLineText_2_; HeadLineText[2])
            {
            }
            column(HeadLineText_3_; HeadLineText[3])
            {
            }
            column(GroupCodeName; GroupCodeName)
            {
            }
            column(FADescription; FADescription)
            {
            }
            column(HeadLineText_4_; HeadLineText[4])
            {
            }
            column(GroupHeadLine; GroupHeadLine)
            {
            }
            column(Amounts_1__Amounts_2__Amounts_3__Amounts_4_; Amounts[1] + Amounts[2] + Amounts[3] + Amounts[4])
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }
            column(Amounts_1_; Amounts[1])
            {
                AutoFormatType = 1;
            }
            column(Amounts_2_; Amounts[2])
            {
                AutoFormatType = 1;
            }
            column(Amounts_3_; Amounts[3])
            {
                AutoFormatType = 1;
            }
            column(Fixed_Asset__Serial_No__; "Serial No.")
            {
            }
            column(Amounts_4_; Amounts[4])
            {
                AutoFormatType = 1;
            }
            column(ResEmp; ResEmp)
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_1_; GroupAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_2_; GroupAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_3_; GroupAmounts[3])
            {
                AutoFormatType = 1;
            }
            column(Text000__________GroupHeadLine; Text000 + ': ' + GroupHeadLine)
            {
            }
            column(GroupAmounts_4_; GroupAmounts[4])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_1__GroupAmounts_2__GroupAmounts_3__GroupAmounts_4_; GroupAmounts[1] + GroupAmounts[2] + GroupAmounts[3] + GroupAmounts[4])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_1_; TotalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_2_; TotalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_3_; TotalAmounts[3])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_4_; TotalAmounts[4])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_1__TotalAmounts_2__TotalAmounts_3__TotalAmounts_4_; TotalAmounts[1] + TotalAmounts[2] + TotalAmounts[3] + TotalAmounts[4])
            {
                AutoFormatType = 1;
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Maintenance___AnalysisCaption; Maintenance___AnalysisCaptionLbl)
            {
            }
            column(Fixed_Asset__Serial_No__Caption; Fixed_Asset__Serial_No__CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(ResEmpCaption; ResEmpCaptionLbl)
            {
            }
            column(TotalCaption_Control38; TotalCaption_Control38Lbl)
            {
            }
            column(Fixed_Asset_No_; "No.")
            {
            }
            column(Fixed_Asset_FA_Subclass_Code; "FA Subclass Code")
            {
            }
            column(Fixed_Asset_FA_Class_Code; "FA Class Code")
            {
            }
            column(Fixed_Asset_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Fixed_Asset_Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }
            column(Fixed_Asset_Component_of_Main_Asset; "Component of Main Asset")
            {
            }
            column(Fixed_Asset_FA_Location_Code; "FA Location Code")
            {
            }
            column(Fixed_Asset_FA_Posting_Group; "FA Posting Group")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Inactive then
                    CurrReport.Skip;
                if not FADeprBook.Get("No.", DeprBookCode) then
                    CurrReport.Skip;
                if "FA Posting Group" <> FADeprBook."FA Posting Group" then
                    Error(Text005, FieldCaption("FA Posting Group"), "No.");
                MaintenanceLedgEntry.SetRange("FA No.", "No.");
                Amounts[1] := CalculateAmount(MaintenanceCode1, Period1);
                Amounts[2] := CalculateAmount(MaintenanceCode2, Period2);
                Amounts[3] := CalculateAmount(MaintenanceCode3, Period3);
                Amounts[4] := CalculateAmount(MaintenanceCode4, Period4);
                if (Amounts[1] = 0) and (Amounts[2] = 0) and (Amounts[3] = 0) and (Amounts[4] = 0) then
                    CurrReport.Skip;
            end;

            trigger OnPostDataItem()
            begin

                for i := 1 to 4 do begin
                    GroupAmounts[i] := GroupAmounts[i] + Amounts[i];
                    TotalAmounts[i] := TotalAmounts[i] + Amounts[i];
                end;
            end;

            trigger OnPreDataItem()
            begin
                case GroupTotals of
                    GroupTotals::"FA Class":
                        SetCurrentKey("FA Class Code");
                    GroupTotals::"FA SubClass":
                        SetCurrentKey("FA Subclass Code");
                    GroupTotals::"Main Asset":
                        SetCurrentKey("Component of Main Asset");
                    GroupTotals::"Global Dimension 1":
                        SetCurrentKey("Global Dimension 1 Code");
                    GroupTotals::"FA Location":
                        SetCurrentKey("FA Location Code");
                    GroupTotals::"Global Dimension 2":
                        SetCurrentKey("Global Dimension 2 Code");
                    GroupTotals::"FA Posting Group":
                        SetCurrentKey("FA Posting Group");
                end;
                if RespEmpl.Get("Responsible Employee") then ResEmp := RespEmpl.FullName else ResEmp := '';
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
        DeprBook.Get(DeprBookCode);
        FAGenReport.SetFAPostingGroup("Fixed Asset", DeprBook.Code);
        if DateSelection = DateSelection::"FA Posting Date" then
            FAGenReport.AppendFAPostingFilter("Fixed Asset", StartingDate, EndingDate);
        FAFilter := "Fixed Asset".GetFilters;
        if DateSelection = DateSelection::"Posting Date" then
            FAGenReport.AppendPostingDateFilter(FAFilter, StartingDate, EndingDate);
        DeprBookText := StrSubstNo('%1%2 %3', DeprBook.TableCaption, ':', DeprBookCode);
        MakeGroupTotalText;
        ValidateDates;
        MakeAmountHeadLine(1, MaintenanceCode1, Period1);
        MakeAmountHeadLine(2, MaintenanceCode2, Period2);
        MakeAmountHeadLine(3, MaintenanceCode3, Period3);
        MakeAmountHeadLine(4, MaintenanceCode4, Period4);
        if DateSelection = DateSelection::"Posting Date" then
            MaintenanceLedgEntry.SetCurrentKey(
              "FA No.", "Depreciation Book Code", "Maintenance Code", "Posting Date")
        else
            MaintenanceLedgEntry.SetCurrentKey(
              "FA No.", "Depreciation Book Code", "Maintenance Code", "FA Posting Date");
        MaintenanceLedgEntry.SetRange("Depreciation Book Code", DeprBookCode);
        if PrintDetails then begin
            FANo := "Fixed Asset".FieldCaption("No.");
            FADescription := "Fixed Asset".FieldCaption(Description);
        end;
    end;

    var
        Text000: Label 'Group Total';
        Text001: Label 'Group Totals';
        Text002: Label 'You must specify the Starting Date and the Ending Date.';
        Text003: Label 'The Starting Date is later than the Ending Date.';
        Text004: Label 'The Starting Date must be specified when you use the option %1.';
        Text005: Label '%1 has been modified in fixed asset %2';
        FASetup: Record "FA Setup";
        DeprBook: Record "Depreciation Book";
        FADeprBook: Record "FA Depreciation Book";
        MaintenanceLedgEntry: Record "Maintenance Ledger Entry";
        FAGenReport: Codeunit "FA General Report";
        FAFilter: Text[250];
        DeprBookText: Text[50];
        GroupCodeName: Text[50];
        GroupHeadLine: Text[50];
        FANo: Text[50];
        FADescription: Text[50];
        GroupTotals: Option " ","FA Class","FA SubClass","FA Location","Main Asset","Global Dimension 1","Global Dimension 2","FA Posting Group";
        GroupAmounts: array[4] of Decimal;
        TotalAmounts: array[4] of Decimal;
        HeadLineText: array[4] of Text[50];
        Amounts: array[4] of Decimal;
        MaintenanceCode1: Code[10];
        MaintenanceCode2: Code[10];
        MaintenanceCode3: Code[10];
        MaintenanceCode4: Code[10];
        Period1: Option "before Starting Date","Net Change","at Ending Date";
        Period2: Option "before Starting Date","Net Change","at Ending Date";
        Period3: Option "before Starting Date","Net Change","at Ending Date";
        Period4: Option "before Starting Date","Net Change","at Ending Date";
        StartingDate: Date;
        EndingDate: Date;
        DeprBookCode: Code[10];
        PrintDetails: Boolean;
        DateSelection: Option "FA Posting Date","Posting Date";
        i: Integer;
        Text006: Label 'before Starting Date,Net Change,at Ending Date';
        Text007: Label ' ,FA Class,FA SubClass,FA Location,Main Asset,Global Dimension 1,Global Dimension 2,FA Posting Group';
        "-------------": Integer;
        RespEmpl: Record Employee;
        ResEmp: Text[100];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Maintenance___AnalysisCaptionLbl: Label 'Maintenance - Analysis';
        Fixed_Asset__Serial_No__CaptionLbl: Label 'Registration No.';
        TotalCaptionLbl: Label 'Total';
        ResEmpCaptionLbl: Label 'Resposible Employee';
        TotalCaption_Control38Lbl: Label 'Total';

    local procedure MakeGroupTotalText()
    begin
        case GroupTotals of
            GroupTotals::"FA Class":
                GroupCodeName := "Fixed Asset".FieldCaption("FA Class Code");
            GroupTotals::"FA SubClass":
                GroupCodeName := "Fixed Asset".FieldCaption("FA Subclass Code");
            GroupTotals::"Main Asset":
                GroupCodeName := "Fixed Asset".FieldCaption("Main Asset/Component");
            GroupTotals::"Global Dimension 1":
                GroupCodeName := "Fixed Asset".FieldCaption("Global Dimension 1 Code");
            GroupTotals::"FA Location":
                GroupCodeName := "Fixed Asset".FieldCaption("FA Location Code");
            GroupTotals::"Global Dimension 2":
                GroupCodeName := "Fixed Asset".FieldCaption("Global Dimension 2 Code");
            GroupTotals::"FA Posting Group":
                GroupCodeName := "Fixed Asset".FieldCaption("FA Posting Group");
        end;
        if GroupCodeName <> '' then
            GroupCodeName := Text001 + ': ' + GroupCodeName;
    end;

    local procedure ValidateDates()
    begin
        if (EndingDate = 0D) or (StartingDate = 0D) then
            Error(Text002);

        if (EndingDate > 0D) and (StartingDate > EndingDate) then
            Error(Text003);
    end;

    local procedure MakeAmountHeadLine(i: Integer; PostingType: Code[10]; Period: Option "before Starting Date","Net Change","at Ending Date")
    begin
        if Period = Period::"before Starting Date" then
            if StartingDate < 00010101D then
                Error(
                  Text004, Period);
        if PostingType <> '' then
            HeadLineText[i] := StrSubstNo('%1 %2', PostingType, SelectStr(Period + 1, Text006))
        else
            HeadLineText[i] := StrSubstNo('%1', SelectStr(Period + 1, Text006));
    end;

    local procedure MakeGroupHeadLine()
    begin
        case GroupTotals of
            GroupTotals::"FA Class":
                GroupHeadLine := "Fixed Asset"."FA Class Code";
            GroupTotals::"FA SubClass":
                GroupHeadLine := "Fixed Asset"."FA Subclass Code";
            GroupTotals::"Main Asset":
                begin
                    GroupHeadLine := StrSubstNo('%1 %2', SelectStr(GroupTotals + 1, Text007), "Fixed Asset"."Component of Main Asset");
                    if "Fixed Asset"."Component of Main Asset" = '' then
                        GroupHeadLine := GroupHeadLine + '*****';
                end;
            GroupTotals::"Global Dimension 1":
                GroupHeadLine := "Fixed Asset"."Global Dimension 1 Code";
            GroupTotals::"FA Location":
                GroupHeadLine := "Fixed Asset"."FA Location Code";
            GroupTotals::"Global Dimension 2":
                GroupHeadLine := "Fixed Asset"."Global Dimension 2 Code";
            GroupTotals::"FA Posting Group":
                GroupHeadLine := "Fixed Asset"."FA Posting Group";
        end;
        if GroupHeadLine = '' then
            GroupHeadLine := '*****';
    end;

    local procedure CalculateAmount(MaintenanceCode: Code[10]; Period: Option "before Starting Date","Net Change","at Ending Date"): Decimal
    var
        EndingDate2: Date;
    begin
        EndingDate2 := EndingDate;
        if EndingDate2 = 0D then
            EndingDate2 := 99991231D;
        if DateSelection = DateSelection::"Posting Date" then
            case Period of
                Period::"before Starting Date":
                    MaintenanceLedgEntry.SetRange("Posting Date", 0D, StartingDate - 1);
                Period::"Net Change":
                    MaintenanceLedgEntry.SetRange("Posting Date", StartingDate, EndingDate2);
                Period::"at Ending Date":
                    MaintenanceLedgEntry.SetRange("Posting Date", 0D, EndingDate2);
            end;
        if DateSelection = DateSelection::"FA Posting Date" then
            case Period of
                Period::"before Starting Date":
                    MaintenanceLedgEntry.SetRange("FA Posting Date", 0D, StartingDate - 1);
                Period::"Net Change":
                    MaintenanceLedgEntry.SetRange("FA Posting Date", StartingDate, EndingDate2);
                Period::"at Ending Date":
                    MaintenanceLedgEntry.SetRange("FA Posting Date", 0D, EndingDate2);
            end;
        MaintenanceLedgEntry.SetRange("Maintenance Code");
        if MaintenanceCode <> '' then
            MaintenanceLedgEntry.SetRange("Maintenance Code", MaintenanceCode);
        MaintenanceLedgEntry.CalcSums(Amount);
        exit(MaintenanceLedgEntry.Amount);
    end;
}

