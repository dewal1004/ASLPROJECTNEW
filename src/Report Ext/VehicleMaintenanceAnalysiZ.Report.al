report 80028 "Vehicle Maintenance - AnalysiZ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/VehicleMaintenanceAnalysiZ.rdlc';
    Caption = 'Vehicle Maintenance - Analysis';

    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            DataItemTableView = SORTING("FA Class Code") WHERE("FA Class Code" = CONST('MOVE'));
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

            trigger OnAfterGetRecord()
            begin
                /*
                IF Inactive THEN
                  CurrReport.SKIP;
                IF NOT FADeprBook.GET("No.",DeprBookCode) THEN
                  CurrReport.SKIP;
                IF "FA Posting Group" <> FADeprBook."FA Posting Group" THEN
                  ERROR(Text005,FIELDCAPTION("FA Posting Group"),"No.");
                MaintenanceLedgEntry.SETRANGE("FA No.","No.");
                Amounts[1] := CalculateAmount(MaintenanceCode1,Period1);
                Amounts[2] := CalculateAmount(MaintenanceCode2,Period2);
                Amounts[3] := CalculateAmount(MaintenanceCode3,Period3);
                IF (Amounts[1] = 0) AND (Amounts[2] = 0) AND (Amounts[3] = 0) THEN
                  CurrReport.SKIP;
                 */  //#1

            end;

            trigger OnPreDataItem()
            begin
                /*
                CASE GroupTotals OF
                  GroupTotals::"FA Class":
                    SETCURRENTKEY("FA Class Code");
                  GroupTotals::"FA SubClass":
                    SETCURRENTKEY("FA Subclass Code");
                  GroupTotals::"Main Asset":
                    SETCURRENTKEY("Component of Main Asset");
                  GroupTotals::"Global Dimension 1":
                    SETCURRENTKEY("Global Dimension 1 Code");
                  GroupTotals::"FA Location":
                    SETCURRENTKEY("FA Location Code");
                  GroupTotals::"Global Dimension 2":
                    SETCURRENTKEY("Global Dimension 2 Code");
                  GroupTotals::"FA Posting Group":
                    SETCURRENTKEY("FA Posting Group");
                END;
                */  //#1

            end;
        }
        dataitem(fa; "Fixed Asset")
        {
            DataItemTableView = SORTING("FA Class Code") WHERE("FA Class Code" = CONST('MOVE'));
            column(T3_Control1000000017; T3)
            {
            }
            column(T2_Control1000000016; T2)
            {
            }
            column(T1_Control1000000015; T1)
            {
            }
            column(ResEmp_Control1000000018; ResEmp)
            {
            }
            column(SNO2; SNO2)
            {
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
                    /*SETCURRENTKEY("FA No.","Depreciation Book Code","FA Posting Date");
                    SETRANGE("FA Posting Date",StartingDate,EndingDate);
                     */  //#1

                end;
            }

            trigger OnAfterGetRecord()
            begin
                /*
                IF Inactive THEN
                  CurrReport.SKIP;
                IF NOT FADeprBook.GET("No.",DeprBookCode) THEN
                  CurrReport.SKIP;
                IF "FA Posting Group" <> FADeprBook."FA Posting Group" THEN
                  ERROR(Text005,FIELDCAPTION("FA Posting Group"),"No.");
                MaintenanceLedgEntry.SETRANGE("FA No.","No.");
                Amounts[1] := CalculateAmount(MaintenanceCode1,Period1);
                Amounts[2] := CalculateAmount(MaintenanceCode2,Period2);
                Amounts[3] := CalculateAmount(MaintenanceCode3,Period3);
                IF (Amounts[1] = 0) AND (Amounts[2] = 0) AND (Amounts[3] = 0) THEN
                  CurrReport.SKIP;
                  */ //#1

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
        /*
        DeprBook.GET(DeprBookCode);
        FAGenReport.SetFAPostingGroup("Fixed Asset",DeprBook.Code);
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
        */  //#1

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
        TotalCaption_Control1000000023Lbl: Label 'Total';

    local procedure MakeGroupTotalText()
    begin
        /*
        CASE GroupTotals OF
          GroupTotals::"FA Class":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Class Code");
          GroupTotals::"FA SubClass":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Subclass Code");
          GroupTotals::"Main Asset":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("Main Asset/Component");
          GroupTotals::"Global Dimension 1":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("Global Dimension 1 Code");
          GroupTotals::"FA Location":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Location Code");
          GroupTotals::"Global Dimension 2":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("Global Dimension 2 Code");
          GroupTotals::"FA Posting Group":
            GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Posting Group");
        END;
        IF GroupCodeName <> '' THEN
          GroupCodeName := Text001+ ': ' + GroupCodeName;
          */  //#1

    end;

    local procedure ValidateDates()
    begin
        /*
        IF (EndingDate = 0D) OR (StartingDate = 0D) THEN
          ERROR(Text002);
        
        IF (EndingDate > 0D) AND (StartingDate > EndingDate) THEN
          ERROR(Text003);
        */  //#1

    end;

    local procedure MakeAmountHeadLine(i: Integer; PostingType: Code[10]; Period: Option "before Starting Date","Net Change","at Ending Date")
    begin
        /*
        IF Period = Period::"before Starting Date" THEN
          IF StartingDate < 01010001D THEN
            ERROR(
              Text004,Period);
        IF PostingType <> '' THEN
          HeadLineText[i] := STRSUBSTNO('%1 %2',PostingType,SELECTSTR(Period + 1,Text006))
        ELSE
          HeadLineText[i] := STRSUBSTNO('%1',SELECTSTR(Period + 1,Text006));
         */  //#1

    end;

    local procedure MakeGroupHeadLine()
    begin
        /*
        WITH "Fixed Asset" DO BEGIN
          CASE GroupTotals OF
            GroupTotals::"FA Class":
              GroupHeadLine := "FA Class Code";
            GroupTotals::"FA SubClass":
              GroupHeadLine := "FA Subclass Code";
            GroupTotals::"Main Asset":
              BEGIN
                GroupHeadLine := STRSUBSTNO('%1 %2',SELECTSTR(GroupTotals + 1,Text007),"Component of Main Asset");
                IF "Component of Main Asset" = '' THEN
                  GroupHeadLine := GroupHeadLine + '*****';
              END;
            GroupTotals::"Global Dimension 1":
              GroupHeadLine := "Global Dimension 1 Code";
            GroupTotals::"FA Location":
              GroupHeadLine := "FA Location Code";
            GroupTotals::"Global Dimension 2":
              GroupHeadLine := "Global Dimension 2 Code";
            GroupTotals::"FA Posting Group":
              GroupHeadLine := "FA Posting Group";
          END;
        END;
        IF GroupHeadLine = '' THEN
          GroupHeadLine := '*****';
          */ //#1

    end;

    local procedure CalculateAmount(MaintenanceCode: Code[10]; Period: Option "before Starting Date","Net Change","at Ending Date"): Decimal
    var
        EndingDate2: Date;
    begin
        /*
        EndingDate2 := EndingDate;
        IF EndingDate2 = 0D THEN
          EndingDate2 := 31129999D;
        WITH MaintenanceLedgEntry DO BEGIN
          IF DateSelection = DateSelection::"Posting Date" THEN
            CASE Period OF
              Period::"before Starting Date":
                SETRANGE("Posting Date",0D,StartingDate - 1);
              Period::"Net Change":
                SETRANGE("Posting Date",StartingDate,EndingDate2);
              Period::"at Ending Date":
                SETRANGE("Posting Date",0D,EndingDate2);
            END;
          IF DateSelection = DateSelection::"FA Posting Date" THEN
            CASE Period OF
              Period::"before Starting Date":
                SETRANGE("FA Posting Date",0D,StartingDate - 1);
              Period::"Net Change":
                SETRANGE("FA Posting Date",StartingDate,EndingDate2);
              Period::"at Ending Date":
                SETRANGE("FA Posting Date",0D,EndingDate2);
            END;
          SETRANGE("Maintenance Code");
          IF MaintenanceCode <> '' THEN
            SETRANGE("Maintenance Code",MaintenanceCode);
          CALCSUMS(Amount);
          EXIT(Amount);
        END;
                */ //#1

    end;
}

