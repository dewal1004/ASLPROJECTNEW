report 50158 "Gen Employee Lost Day Monthly"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/GenEmployeeLostDayMonthly.rdlc';

    dataset
    {
        dataitem(Employee; Employee)
        {
            RequestFilterFields = "No.", "Global Dimension 1 Code", "Global Dimension 2 Code", Blocked;
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
            column(Employee__No__; "No.")
            {
            }
            column(FullName; FullName)
            {
            }
            column(Employee__Deductible_Absence_; "Deductible Absence")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Employee__Deducted_Absence_; "Deducted Absence")
            {
                DecimalPlaces = 0 : 0;
            }
            column(TobeDed; TobeDed)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Employee_Lost_DaysCaption; Employee_Lost_DaysCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FieldCaption("No."))
            {
            }
            column(FullNameCaption; FullNameCaptionLbl)
            {
            }
            column(Employee__Deductible_Absence_Caption; FieldCaption("Deductible Absence"))
            {
            }
            column(Employee__Deducted_Absence_Caption; FieldCaption("Deducted Absence"))
            {
            }
            column(TobeDedCaption; TobeDedCaptionLbl)
            {
            }
            column(PeriodTabPeriodCode; PeriodTab."Period Code")
            {
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Pay Period"; PeriodTab."Period Code")
                    {
                        ApplicationArea = All;
                    }
                    field("Update Monthly Variable"; UpMntVar)
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
        TobeDed: Decimal;
        DueDed: Decimal;
        DaysInMnt: Integer;
        PeriodTab: Record "Payroll-Periods.";
        PayMnthlyVar: Record "Monthly Variables Lines.";
        PayMnthlyVarHd: Record "Monthly Variables Header.";
        PrdCd: Code[10];
        DatFiltr: Date;
        UpMntVar: Boolean;
        Employee_Lost_DaysCaptionLbl: Label 'Employee Lost Days';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        FullNameCaptionLbl: Label 'Name';
        TobeDedCaptionLbl: Label 'To be deducted';
        "Pay Period": Integer;
}

