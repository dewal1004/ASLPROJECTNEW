report 50155 "Vehicle Maintenance - Analysis"
{
    // The Result sort in Descending Order if Group total is Blank
    // fa.
    // StartingDate:=010103D;
    // EndingDate:=013103D;
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VehicleMaintenanceAnalysis.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    Caption = 'Vehicle Maintenance - Analysis';

    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            DataItemTableView = SORTING("FA Class Code") ORDER(Ascending) WHERE("FA Class Code" = CONST('MOVE'));
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
            column(GroupCodeName; GroupCodeName)
            {
            }
            column(Fixed_Asset__TABLECAPTION__________FAFilter; "Fixed Asset".TableCaption + ': ' + FAFilter)
            {
            }
            column(T1; T1)
            {
            }
            column(T2; T2)
            {
            }
            column(T3; T3)
            {
            }
            column(T5; T5)
            {
            }
            column(FADescription; FADescription)
            {
            }
            column(T4; T4)
            {
            }
            column(GroupHeadLine; GroupHeadLine)
            {
            }
            column(Starting_Date; StartingDate)
            {
            }
            column(Ending_Date; EndingDate)
            {
            }
            column(SNO; SNO)
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }
            column(Amounts_1_; Amounts[1])
            {
                AutoFormatType = 1;
            }
            column(Amounts_2__Amounts_1_; Amounts[2] - Amounts[1])
            {
                AutoFormatType = 1;
            }
            column(Amounts_2_; Amounts[2])
            {
                AutoFormatType = 1;
            }
            column(Fixed_Asset__Serial_No__; "Serial No.")
            {
            }
            column(ResEmp; ResEmp)
            {
            }
            column(Fixed_Asset__Maintenance_Amt_; "Maintenance Amt")
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_1_; GroupAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(Groupg_Amounts_2_; GroupAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_1__GroupAmounts_2_; GroupAmounts[1] + GroupAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(Text000__________GroupHeadLine; Text000 + ': ' + GroupHeadLine)
            {
            }
            column(TotalAmounts_1_; TotalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_2_; TotalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_1__TotalAmounts_2_; -TotalAmounts[1] + TotalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Fuel___Maintenance___AnalysisCaption; Fuel___Maintenance___AnalysisCaptionLbl)
            {
            }
            column(DetailsCaption; DetailsCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
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
                if (Amounts[1] = 0) and (Amounts[2] = 0) and (Amounts[3] = 0) then
                    CurrReport.Skip;


                "Maintenance Amt" := Amounts[2];
                Modify;
                Commit;
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
                /*GroupTotals::" ":
                  SETCURRENTKEY("Maintenance Amt");*/
                end;

            end;
        }
        dataitem(fa; "Fixed Asset")
        {
            DataItemTableView = SORTING("Maintenance Amt") ORDER(Descending) WHERE("FA Class Code" = CONST('MOVE'));
            column(T3_Control1000000017; T3)
            {
            }
            column(T2_Control1000000016; T2)
            {
            }
            column(T1_Control1000000015; T1)
            {
            }
            column(Amounts_2__Control1000000025; Amounts[2])
            {
                AutoFormatType = 1;
            }
            column(Amounts_2__Amounts_1__Control1000000026; Amounts[2] - Amounts[1])
            {
                AutoFormatType = 1;
            }
            column(Amounts_1__Control1000000027; Amounts[1])
            {
                AutoFormatType = 1;
            }
            column(fa__Serial_No__; "Serial No.")
            {
            }
            column(fa_Description; Description)
            {
            }
            column(ResEmp_Control1000000030; ResEmp)
            {
            }
            column(SNO_Control1000000031; SNO)
            {
            }
            column(ResEmp_Control1000000018; ResEmp)
            {
            }
            column(SNO2; SNO2)
            {
            }
            column(GroupAmounts_1__GroupAmounts_2__Control1000000039; GroupAmounts[1] + GroupAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_2__Control1000000040; GroupAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_1__Control1000000041; GroupAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(Text000__________GroupHeadLine_Control1000000042; Text000 + ': ' + GroupHeadLine)
            {
            }
            column(TotalAmounts_1__Control1000000035; TotalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_2__Control1000000036; TotalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_1__TotalAmounts_2__Control1000000037; -TotalAmounts[1] + TotalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(Document_No_Caption; Document_No_CaptionLbl)
            {
            }
            column(Maintenance_Ledger_Entry_DescriptionCaption; "Maintenance Ledger Entry".FieldCaption(Description))
            {
            }
            column(Maintenance_Ledger_Entry__FA_Posting_Date_Caption; Maintenance_Ledger_Entry__FA_Posting_Date_CaptionLbl)
            {
            }
            column(TotalCaption_Control1000000038; TotalCaption_Control1000000038Lbl)
            {
            }
            column(fa_No_; "No.")
            {
            }
            dataitem("Maintenance Ledger Entry"; "Maintenance Ledger Entry")
            {
                DataItemLink = "FA No." = FIELD("No.");
                RequestFilterFields = "Posting Date";
                column(MAAmt; MAAmt)
                {
                }
                column(FUAmt; FUAmt)
                {
                }
                column(Maintenance_Ledger_Entry_Amount; Amount)
                {
                }
                column(Maintenance_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Maintenance_Ledger_Entry_Description; Description)
                {
                }
                column(Maintenance_Ledger_Entry__FA_Posting_Date_; "FA Posting Date")
                {
                }
                column(FUAmtTot; FUAmtTot)
                {
                }
                column(MAAmtTot; MAAmtTot)
                {
                }
                column(Maintenance_Ledger_Entry_Amount_Control1000000022; Amount)
                {
                }
                column(TotalCaption_Control1000000023; TotalCaption_Control1000000023Lbl)
                {
                }
                column(Maintenance_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Maintenance_Ledger_Entry_FA_No_; "FA No.")
                {
                }

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Date");
                    SetRange("FA Posting Date", StartingDate, EndingDate);
                end;
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
                if (Amounts[1] = 0) and (Amounts[2] = 0) and (Amounts[3] = 0) then
                    CurrReport.Skip;
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
                    GroupTotals::" ":
                        SetCurrentKey("Maintenance Amt");
                end;
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
        GroupAmounts: array[3] of Decimal;
        TotalAmounts: array[3] of Decimal;
        HeadLineText: array[3] of Text[50];
        Amounts: array[3] of Decimal;
        MaintenanceCode1: Code[10];
        MaintenanceCode2: Code[10];
        MaintenanceCode3: Code[10];
        Period1: Option "before Starting Date","Net Change","at Ending Date";
        Period2: Option "before Starting Date","Net Change","at Ending Date";
        Period3: Option "before Starting Date","Net Change","at Ending Date";
        StartingDate: Date;
        EndingDate: Date;
        DeprBookCode: Code[10];
        PrintDetails: Boolean;
        DateSelection: Option "FA Posting Date","Posting Date";
        i: Integer;
        Text006: Label 'before Starting Date,Net Change,at Ending Date';
        Text007: Label ' ,FA Class,FA SubClass,FA Location,Main Asset,Global Dimension 1,Global Dimension 2,FA Posting Group';
        T1: Label 'Fuel';
        T2: Label 'Maintenance';
        T3: Label 'Total';
        "---": Integer;
        RespEmpl: Record Employee;
        ResEmp: Text[100];
        SNO: Integer;
        T4: Label 'Responsible Person';
        T5: Label 'SNo.';
        T6: Label 'Registration No.';
        SNO2: Integer;
        FUAmt: Decimal;
        MAAmt: Decimal;
        FUAmtTot: Decimal;
        MAAmtTot: Decimal;
        PrintDetailsME: Boolean;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Fuel___Maintenance___AnalysisCaptionLbl: Label 'Fuel & Maintenance - Analysis';
        DetailsCaptionLbl: Label 'Details';
        TotalCaptionLbl: Label 'Total';
        Document_No_CaptionLbl: Label 'Document No.';
        Maintenance_Ledger_Entry__FA_Posting_Date_CaptionLbl: Label 'Posting Date';
        TotalCaption_Control1000000038Lbl: Label 'Total';
        TotalCaption_Control1000000023Lbl: Label 'Total';

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

