report 50050 "Create Payroll Period"
{
    ProcessingOnly = true;

    dataset
    {
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
                    field("Start Date"; FiscalYearStartDate)
                    {
                        ApplicationArea = All;
                    }
                    field(NoOfPeriods; NoOfPeriods)
                    {
                        ApplicationArea = All;
                    }
                    field(PeriodLength; PeriodLength)
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

    trigger OnInitReport()
    begin
        PeriodCode := 'p1';
    end;

    trigger OnPreReport()
    begin
        PayPeriod."Start Date" := FiscalYearStartDate;
        PayPeriod.TestField("Start Date");

        if PayPeriod.Find('-') then begin
            FirstPeriodStartDate := PayPeriod."Start Date";
            // FirstPeriodLocked := PayPeriod."Date Locked";
            /* IF (FiscalYearStartDate < FirstPeriodStartDate) AND FirstPeriodLocked THEN
               IF NOT
                  CONFIRM(
                    'The new fiscal year begins before an existing fiscal year, so the new year will be closed automatically.\\' +
                    'Do you want to create and close the fiscal year?')
               THEN
                 EXIT;
             IF PayPeriod.FIND('+') THEN
               LastPeriodStartDate := PayPeriod."Start Date";
           END;
            ELSE
             IF NOT
                CONFIRM(
                  'Once you create the new fiscal year you cannot change its Start Date.\\' +
                  'Do you want to create the fiscal year?')
             THEN
               EXIT;
            */

            for i := 1 to NoOfPeriods + 1 do begin
                if (FiscalYearStartDate <= FirstPeriodStartDate) and (i = NoOfPeriods + 1) then
                    exit;

                if (FirstPeriodStartDate <> 0D) then
                    if (FiscalYearStartDate >= FirstPeriodStartDate) and (FiscalYearStartDate < LastPeriodStartDate) then
                        Error('It is only possible to create new fiscal years before or after the existing ones.');
                PayPeriod.Init;
                dd := Date2DMY(FiscalYearStartDate, 1);
                mm := Date2DMY(FiscalYearStartDate, 2);
                yy := Date2DMY(FiscalYearStartDate, 3);
                if StrPos(PeriodLength, 'D') <> 0 then
                    ww := dd
                else
                    ww := Date2DWY(FiscalYearStartDate, 2);
                if StrPos(PeriodLength, 'M') <> 0 then
                    ww := 0;
                if mm <= 9 then
                    PayPeriod."Period Code" := Format(yy) + '-0' + Format(mm)
                else
                    PayPeriod."Period Code" := Format(yy) + '-' + Format(mm);
                if (ww > 0) and (ww <= 9) then
                    PayPeriod."Period Code" := PayPeriod."Period Code" + '-0' + Format(ww)
                else
                    if ww > 9 then
                        PayPeriod."Period Code" := PayPeriod."Period Code" + '-' + Format(ww);
                PayPeriod."Start Date" := FiscalYearStartDate;
                PayPeriod."End Date" := CalcDate(PeriodLength, PayPeriod."Start Date") - 1;
                PayPeriod.Validate("Start Date");
                if not PayPeriod.Find('=') then
                    PayPeriod.Insert;
                FiscalYearStartDate := CalcDate(PeriodLength, FiscalYearStartDate);
            end;
        end;

    end;

    var
        PayPeriod: Record "Payroll-Periods.";
        NoOfPeriods: Integer;
        PeriodLength: Code[20];
        FiscalYearStartDate: Date;
        FirstPeriodStartDate: Date;
        LastPeriodStartDate: Date;
        FirstPeriodLocked: Boolean;
        i: Integer;
        PeriodCode: Code[10];
        PayPeriod2: Record "Payroll-Periods.";
        dd: Integer;
        mm: Integer;
        yy: Integer;
        ww: Integer;
}

