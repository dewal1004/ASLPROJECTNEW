tableextension 50222 "tableextension50222" extends "Acc. Sched. KPI Web Srv. Setup"
{
    //Unsupported feature: Code Modification on "GetPeriodLength(PROCEDURE 7)".

    //procedure GetPeriodLength();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case Period of
      Period::"Fiscal Year - Last Locked Period":
        GetFiscalYear(GetLastClosedAccDate,StartDate,EndDate);
    #4..48
        begin
          GetFiscalYear(WorkDate,StartDate,EndDate);
          StartDate := CalcDate('<-3Y>',StartDate);
          AccountingPeriod.SetRange("New Fiscal Year",true);
          if AccountingPeriod.FindFirst then // Get oldest accounting year
            if AccountingPeriod."Starting Date" > StartDate then
    #55..77

    if NoOfLines = 0 then
      NoOfLines := 1;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..51

    #52..80
    */
    //end;

    //Unsupported feature: Code Modification on "GetFiscalYear(PROCEDURE 13)".

    //procedure GetFiscalYear();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    StartDate := Date;
    AccountingPeriod.SetFilter("Starting Date",'<=%1',Date);
    AccountingPeriod.SetRange("New Fiscal Year",true);
    if AccountingPeriod.FindLast then
      StartDate := AccountingPeriod."Starting Date";
    AccountingPeriod.SetRange("Starting Date");
    if AccountingPeriod.Find('>') then
      EndDate := AccountingPeriod."Starting Date" - 1
    else
      EndDate := CalcDate('<1Y-1D>',StartDate);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    AccountingPeriod.SetFilter("Starting Date",'<=%1',Date);
    AccountingPeriod.SetRange("New Fiscal Year",true);
    AccountingPeriod.FindLast;
    StartDate := AccountingPeriod."Starting Date";
    #6..9
      EndDate := CalcDate('<CY>',StartDate);
    */
    //end;
}
