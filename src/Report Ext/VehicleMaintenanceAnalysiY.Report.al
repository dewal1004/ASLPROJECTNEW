report 58028 "Vehicle Maintenance - AnalysiY"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VehicleMaintenanceAnalysiY.rdlc';
    Caption = 'Vehicle Maintenance - Analysis';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
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
            column(Amounts_2_; Amounts[2])
            {
                AutoFormatType = 1;
            }
            column(Amounts_1__Amounts_2_; Amounts[1] + Amounts[2])
            {
                AutoFormatType = 1;
            }
            column(Fixed_Asset__Serial_No__; "Serial No.")
            {
            }
            column(ResEmp; ResEmp)
            {
            }
            column(GroupAmounts_1_; GroupAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_2_; GroupAmounts[2])
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
            column(TotalAmounts_1__TotalAmounts_2_; TotalAmounts[1] + TotalAmounts[2])
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
        }
        dataitem(fa; "Fixed Asset")
        {
            dataitem("Maintenance Ledger Entry"; "Maintenance Ledger Entry")
            {
                DataItemLink = "FA No." = FIELD("No.");
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control2)
                {
                    ShowCaption = false;
                    field("Depreciation Code"; DeprBook.Code)
                    {
                        TableRelation = "Depreciation Book";
                    }
                    field(DateSelection; DateSelection)
                    {
                    }
                    field(StartingDate; StartingDate)
                    {
                    }
                    field(EndingDate; EndingDate)
                    {
                    }
                    field("AmountField 1"; MaintenanceCode1)
                    {
                    }
                    field("AmountField 2"; MaintenanceCode2)
                    {
                    }
                    field("AmountField 3"; MaintenanceCode3)
                    {
                    }
                    field(GroupTotals; GroupTotals)
                    {
                    }
                    field("Print For FIxed Assets"; PrintDetails)
                    {
                    }
                }
            }
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
        //DeprBook.GET(DeprBookCode);
        /*FAGenReport.SetFAPostingGroup("Fixed Asset",DeprBook.Code);
        IF DateSelection = DateSelection::"FA Posting Date" THEN
         FAGenReport.AppendFAPostingFilter("Fixed Asset",StartingDate,EndingDate);
        FAFilter := "Fixed Asset".GETFILTERS;
        IF DateSelection = DateSelection::"Posting Date" THEN
         FAGenReport.AppendPostingDateFilter(FAFilter,StartingDate,EndingDate);
        DeprBookText := STRSUBSTNO('%1%2 %3',DeprBook.TABLECAPTION,':',DeprBookCode);
        MakeGroupTotalText;
        ValidateDates;
        MakeAmountHeadLine(1,MaintenanceCode1,Period1);
        MakeAmountHeadLine(2,MaintenanceCode2,Period2);
        MakeAmountHeadLine(3,MaintenanceCode3,Period3);
        IF DateSelection = DateSelection::"Posting Date" THEN
          MaintenanceLedgEntry.SETCURRENTKEY(
            "FA No.","Depreciation Book Code","Maintenance Code","Posting Date")
        ELSE
          MaintenanceLedgEntry.SETCURRENTKEY(
            "FA No.","Depreciation Book Code","Maintenance Code","FA Posting Date");
        MaintenanceLedgEntry.SETRANGE("Depreciation Book Code",DeprBookCode);
        IF PrintDetails THEN BEGIN
          FANo := "Fixed Asset".FIELDCAPTION("No.");
          FADescription := "Fixed Asset".FIELDCAPTION(Description);
        END;
        */

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
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Fuel___Maintenance___AnalysisCaptionLbl: Label 'Fuel & Maintenance - Analysis';
        DetailsCaptionLbl: Label 'Details';
        TotalCaptionLbl: Label 'Total';

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
        with "Fixed Asset" do begin
            case GroupTotals of
                GroupTotals::"FA Class":
                    GroupHeadLine := "FA Class Code";
                GroupTotals::"FA SubClass":
                    GroupHeadLine := "FA Subclass Code";
                GroupTotals::"Main Asset":
                    begin
                        GroupHeadLine := StrSubstNo('%1 %2', SelectStr(GroupTotals + 1, Text007), "Component of Main Asset");
                        if "Component of Main Asset" = '' then
                            GroupHeadLine := GroupHeadLine + '*****';
                    end;
                GroupTotals::"Global Dimension 1":
                    GroupHeadLine := "Global Dimension 1 Code";
                GroupTotals::"FA Location":
                    GroupHeadLine := "FA Location Code";
                GroupTotals::"Global Dimension 2":
                    GroupHeadLine := "Global Dimension 2 Code";
                GroupTotals::"FA Posting Group":
                    GroupHeadLine := "FA Posting Group";
            end;
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
        with MaintenanceLedgEntry do begin
            if DateSelection = DateSelection::"Posting Date" then
                case Period of
                    Period::"before Starting Date":
                        SetRange("Posting Date", 0D, StartingDate - 1);
                    Period::"Net Change":
                        SetRange("Posting Date", StartingDate, EndingDate2);
                    Period::"at Ending Date":
                        SetRange("Posting Date", 0D, EndingDate2);
                end;
            if DateSelection = DateSelection::"FA Posting Date" then
                case Period of
                    Period::"before Starting Date":
                        SetRange("FA Posting Date", 0D, StartingDate - 1);
                    Period::"Net Change":
                        SetRange("FA Posting Date", StartingDate, EndingDate2);
                    Period::"at Ending Date":
                        SetRange("FA Posting Date", 0D, EndingDate2);
                end;
            SetRange("Maintenance Code");
            if MaintenanceCode <> '' then
                SetRange("Maintenance Code", MaintenanceCode);
            CalcSums(Amount);
            exit(Amount);
        end;
    end;
}

