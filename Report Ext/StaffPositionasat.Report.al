report 50179 "Staff Position as at"
{
    // Count
    // 1 : Beginning of period
    // 2 : End of Period
    // 3 : Employed in Period
    // 4 : Termination in Period
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/StaffPositionasat.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;


    dataset
    {
        dataitem(PPG; "Payroll-Posting Group Header.")
        {
            DataItemTableView = WHERE("Posting Group Code" = FILTER('E*'));
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(At___FORMAT_EndDate_; At + Format(EndDate))
            {
            }
            column(Subs; Subs)
            {
            }
            column(Adds; Adds)
            {
            }
            column(At___FORMAT_StartDate_; At + Format(StartDate))
            {
            }
            column(UPPERCASE_Description_; UpperCase(Description))
            {
            }
            column(PPG_StaffCount; StaffCount)
            {
            }
            column(TotStaff_2_; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4_; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3_; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_1_; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(StaffSum; StaffSum)
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_2__Control1000000052; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4__Control1000000053; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3__Control1000000054; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_1__Control1000000055; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Staff_PositionCaption; Staff_PositionCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Staff_CategoryCaption; Staff_CategoryCaptionLbl)
            {
            }
            column(ExpatriatesCaption; ExpatriatesCaptionLbl)
            {
            }
            column(ExpatriatesCaption_Control1000000026; ExpatriatesCaption_Control1000000026Lbl)
            {
            }
            column(PPG_Posting_Group_Code; "Posting Group Code")
            {
            }

            trigger OnAfterGetRecord()
            begin
                //PPG.SETRANGE(
                PPG.SetRange(PPG."Date Filter", 0D, StartDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[1] := PPG.StaffCount;
                PPG.SetRange(PPG."Date Filter", 0D, EndDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[2] := PPG.StaffCount;
                PPG.SetRange(PPG."Termination Date Filter", CalcDate('<+1D>', StartDate), EndDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[4] := PPG.StaffCount;
                PPG.SetRange(PPG."Termination Date Filter");
                PPG.SetRange(PPG."Date Filter", CalcDate('<+1D>', StartDate), EndDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[3] := PPG.StaffCount;

                StaffSum := StaffSum + PPG.StaffCount;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(TotStaff[1], TotStaff[2], TotStaff[3], TotStaff[4], TotStaff[5]);
            end;
        }
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING("Global Dimension 1 Code", "Emplymt. Contract Code", Blocked) WHERE("Global Dimension 1 Code" = CONST('FLST'), Status = FILTER(<> Terminated), Blocked = CONST(false), "Emplymt. Contract Code" = FILTER(<> 'TRAINEE' & <> 'INDUSTRIAL TRAINEE'));
            RequestFilterFields = "Global Dimension 1 Code", "Emplymt. Contract Code";
            column(Empl_COUNT; Empl.Count)
            {
            }
            column(TotStaff_2__Control1000000044; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4__Control1000000045; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3__Control1000000046; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_1__Control1000000047; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Employee__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(Employee__Emplymt__Contract_Code_; "Emplymt. Contract Code")
            {
            }
            column(Employee__Global_Dimension_1_Code__Control1000000014; "Global Dimension 1 Code")
            {
            }
            column(Employee__Emplymt__Contract_Code__Control1000000017; "Emplymt. Contract Code")
            {
            }
            column(Employee__Balance__LCY__; "Balance (LCY)")
            {
            }
            column(Empl_COUNT_Control1000000023; Empl.Count)
            {
            }
            column(Employee__Emplymt__Contract_Code__Control1000000000; "Emplymt. Contract Code")
            {
            }
            column(TotStaff_1__Control1000000028; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_2__Control1000000030; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3__Control1000000031; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4__Control1000000032; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Employee__Global_Dimension_1_Code__Control1000000007; "Global Dimension 1 Code")
            {
            }
            column(Empl_COUNT_Control1000000009; Empl.Count)
            {
            }
            column(TotStaff_2__Control1000000012; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4__Control1000000033; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3__Control1000000038; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_1__Control1000000039; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_2__Control1000000027; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4__Control1000000029; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3__Control1000000040; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_1__Control1000000041; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Empl_COUNT_Control1000000042; Empl.Count)
            {
            }
            column(TotStaff_2__Control1000000056; TotStaff[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_4__Control1000000057; TotStaff[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_3__Control1000000058; TotStaff[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotStaff_1__Control1000000059; TotStaff[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Empl_COUNT_Control1000000060; Empl.Count)
            {
            }
            column(Employee__Global_Dimension_1_Code__Control1000000014Caption; FieldCaption("Global Dimension 1 Code"))
            {
            }
            column(Employee__Emplymt__Contract_Code__Control1000000017Caption; FieldCaption("Emplymt. Contract Code"))
            {
            }
            column(Employee__Balance__LCY__Caption; FieldCaption("Balance (LCY)"))
            {
            }
            column(Shore_StaffCaption; Shore_StaffCaptionLbl)
            {
            }
            column(IT_TraineeCaption; IT_TraineeCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Employee_No_; "No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Emplymt. Contract Code");
                Empl.SetCurrentKey(Empl."Global Dimension 1 Code", Empl."Emplymt. Contract Code", Empl.Blocked);
                Empl.SetRange(Empl.Blocked, false);
                Empl.SetFilter(Empl.Status, '<>2'); //2:: Terminated
                CurrReport.CreateTotals(TotStaff[1], TotStaff[2], TotStaff[3], TotStaff[4], TotStaff[5]);

                //Section

                Empl.SetFilter(Empl."Global Dimension 1 Code", '<>FLST');
                Empl.SetRange(Empl."Emplymt. Contract Code");  //TotStaff:=Empl.COUNT;
                Empl.SetRange(Empl."Employment Date", 0D, StartDate);
                TotStaff[1] := Empl.Count;
                Empl.SetRange(Empl."Employment Date", 0D, EndDate);
                TotStaff[2] := Empl.Count;
                Empl.SetRange(Empl."Termination Date", CalcDate('<+1D>', StartDate), EndDate);
                TotStaff[4] := Empl.Count;
                Empl.SetRange(Empl."Termination Date");
                Empl.SetRange(Empl."Employment Date", CalcDate('<+1D>', StartDate), EndDate);
                TotStaff[3] := Empl.Count;
            end;
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
                    field("Start Date"; StartDate)
                    {
                    }
                    field("End Date"; EndDate)
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

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        Empl: Record Employee;
        TotStaff: array[5] of Decimal;
        StaffSum: Decimal;
        StartDate: Date;
        EndDate: Date;
        At: Label 'Staff Count as At ';
        Adds: Label 'Addition in Period';
        Subs: Label 'Subtraction in Period';
        Staff_PositionCaptionLbl: Label 'Staff Position';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Staff_CategoryCaptionLbl: Label 'Staff Category';
        ExpatriatesCaptionLbl: Label 'Expatriates';
        ExpatriatesCaption_Control1000000026Lbl: Label 'Expatriates';
        Shore_StaffCaptionLbl: Label 'Shore Staff';
        IT_TraineeCaptionLbl: Label 'IT/Trainee';
        TotalCaptionLbl: Label 'Total';
}

