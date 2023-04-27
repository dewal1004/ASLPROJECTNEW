report 50180 "Staff Position as at by PG"
{
    // Count
    // 1 : Beginning of period
    // 2 : End of Period
    // 3 : Employed in Period
    // 4 : Termination in Period
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/StaffPositionasatbyPG.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem(PPG; "Payroll-Posting Group Header.")
        {
            //The property 'DataItemTableView' shouldn't have an empty value.
            //DataItemTableView = '';
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
            column(Posting_GroupCaption; Posting_GroupCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(PPG_Posting_Group_Code; "Posting Group Code")
            {
            }

            trigger OnAfterGetRecord()
            begin

                PPG.SetRange(PPG."Date Filter", StartDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[1] := PPG.StaffCount;
                PPG.SetRange(PPG."Date Filter", EndDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[2] := PPG.StaffCount;
                PPG.SetRange(PPG."Termination Date Filter", CalcDate('+1D', StartDate), EndDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[4] := PPG.StaffCount;
                PPG.SetRange(PPG."Termination Date Filter");
                PPG.SetRange(PPG."Date Filter", CalcDate('+1D', StartDate), EndDate);
                PPG.CalcFields(PPG.StaffCount);
                TotStaff[3] := PPG.StaffCount;

                StaffSum := StaffSum + PPG.StaffCount;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(TotStaff[1], TotStaff[2], TotStaff[3], TotStaff[4], TotStaff[5]);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control3)
                {
                    ShowCaption = false;
                    field("Start Date"; StartDate)
                    {
                        ApplicationArea = All;
                    }
                    field("End Date"; EndDate)
                    {
                        ApplicationArea = All;
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
        Posting_GroupCaptionLbl: Label 'Posting Group';
        TotalCaptionLbl: Label 'Total';
}

