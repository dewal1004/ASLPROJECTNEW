report 50054 "ASL Create New payslips - New"
{
    // This function transfers data from the Employee group to Payroll Entry for
    // the specified employees, if the Payroll entries for these Employees in the
    // specified period do not exist.
    // If the Payroll entry exists then the lines are not copied.

    ProcessingOnly = true;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Employee; Employee)
        {
            // DataItemTableView = SORTING("No.") WHERE(Blocked = CONST(false), Suspended = CONST(false));
            DataItemTableView = SORTING("No.") WHERE(Blocked = CONST(false), Suspended = CONST(false), "No." = const('E000004'));
            RequestFilterFields = "No.", "Posting Group", "Global Dimension 1 Code", "Global Dimension 2 Code";

            trigger OnAfterGetRecord()
            begin
                Message(Employee."No.");
                Window.Update(2, "No.");
                InfoCounter := InfoCounter + 1;
                Window.Update(3, InfoCounter);

                if not PayslipHeader.Get(PayrollPeriod."Period Code", "No.") then begin
                    /* Create the header record */
                    PayslipHeader."Payroll Period" := PayrollPeriod."Period Code";
                    PayslipHeader."Employee No" := "No.";
                    PayslipHeader."Period Start" := PayrollPeriod."Start Date";
                    PayslipHeader."Period End" := PayrollPeriod."End Date";
                    PayslipHeader."Period Name" := PayrollPeriod.Name;
                    PayslipHeader."Employee Name" := FullName;
                    PayslipHeader."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
                    PayslipHeader."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
                    PayslipHeader."Customer Number" := Employee."SAM Number";
                    PayslipHeader.Designation := Designation;
                    PayslipHeader.Insert;
                    PG := Employee."Posting Group";

                    /*Create the payroll entry lines.
                     The entries are copied from the employee group entry lines.*/

                    /*Delimit the Employee group lines appropriately */
                    EmpGroupLines.Init;
                    EmpGroupLines.SetRange("E/D Code");
                    EmpGroupLines.SetRange("Employee Group");
                    EmpGroupLines."Employee Group" := "Employee Group";
                    EmpGroupLines."E/D Code" := '';
                    EmpGroupLines.SetRange("Employee Group", "Employee Group");
                    if not (EmpGroupLines.Count = 0) then begin
                        /*Lock the Payroll Lines Entry file */
                        PayLinesRec.LockTable();
                        PayLinesRec.SetRange("E/D Code");

                        /*Transfer the E/D lines from Employe Group lines to Payroll Lines */
                        EmpGroupLines.Find('>');
                        begin
                            PayLinesRec."Payroll Period" := PayslipHeader."Payroll Period";
                            PayLinesRec."Employee No" := PayslipHeader."Employee No";
                        end;
                        repeat /*WHILE (EmpGrpLinesRec."Employee Group" = "Employee Group") */
                            RecRate := 0;
                            RecQty := 0;
                            PayLinesRec.Init;
                            EDFileRec.Get(EmpGroupLines."E/D Code");
                            EdfileRec1 := EDFileRec;

                            /******  Begins Overtime & Other VAriables Calculation SGG  **********/
                            PaySetup.Reset;
                            PaySetup.Find('-');
                            TaxFreeED := PaySetup."Taxfree Pay ED";
                            if TaxFreeED <> '' then
                                SendLines(TaxFreeED, Employee."Annual Tax Freepay" / 12, 0, 0);
                            MonthlyDays := PaySetup."Monthly Working Days";
                            HrsInDay := PaySetup."Daily Working Hours";

                            /*
                             EdRec.RESET;
                             EdRec.SETRANGE(EdRec."Monthly Variable",TRUE);
                             IF EdRec.FIND('-') THEN
                             REPEAT
                               SendLines(EdRec."E/D Code",0,0,0);
                             UNTIL(EdRec.NEXT=0);
                            */

                            VarRec.Reset;
                            VarRec.SetRange(VarRec."Payroll Period", PayLinesRec."Payroll Period");
                            VarRec.SetRange(VarRec."Employee No", PayLinesRec."Employee No");
                            if VarRec.Find('-') then
                                repeat
                                    SendLines(VarRec."E/D Code", VarRec.Amount, VarRec.Quantity, VarRec.Rate);
                                until (VarRec.Next = 0);

                            /******  Overtime & Other VAriables Calculation Ends SGG  **********/
                            /*AAA Nov 2002*/
                            EDFileRec.Reset;
                            EDFileRec.SetRange(EDFileRec."Payslip Print Column", EDFileRec."Payslip Print Column"::"Total Earning");
                            if EDFileRec.Find('-') then
                                TaxableED := EDFileRec."E/D Code";

                            EDFileRec.Reset;
                            EDFileRec.SetRange(EDFileRec."Payslip Group ID", EDFileRec."Payslip Group ID"::"TAX DEDUCTED");
                            if EDFileRec.Find('-') then TaxED := EDFileRec."E/D Code";

                            //SendLines(TaxFreeED,0,0,0);
                            //SendLines(TaxED,0,0,0);
                            //SendLines(TaxFreeED,Employee."Annual Tax Freepay"/12,0,0);

                            PaySetup.Reset;
                            PaySetup.Find('-');
                            /*AAA Nov 2002*/

                            PayLinesRec."E/D Code" := EmpGroupLines."E/D Code";

                            begin
                                PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
                                PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
                                PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
                                PayLinesRec.Units := EDFileRec.Units;
                                PayLinesRec.Rate := EDFileRec.Rate;
                                PayLinesRec."Overline Column" := EDFileRec."Overline Column";
                                PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
                                PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
                            end;        /* Payslip Grp/Pos */
                            begin
                                PayLinesRec."E/D Code" := EmpGroupLines."E/D Code";
                                PayLinesRec.Units := EmpGroupLines.Units;
                                PayLinesRec.Rate := EmpGroupLines.Rate;
                                PayLinesRec.Quantity := EmpGroupLines.Quantity;
                                PayLinesRec.Flag := EmpGroupLines.Flag;
                                PayLinesRec.Amount := EmpGroupLines."Default Amount";
                                PayLinesRec."Postg Group" := PG;
                            end;   /* Rate,Units,Amount,... */

                            if BookGrLinesRec.Get("Posting Group", PayLinesRec."E/D Code")
                            then begin
                                begin
                                    PayLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
                                    PayLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
                                    PayLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                                    PayLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                                    PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
                                    PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";
                                end; /* Debit/Credit accounts*/
                                     //AAA
                                     /*No Dept/Proj from Booking Gr.

                                      IF NOT BookGrLinesRec."Transfer Department" THEN
                                        PayLinesRec."Department Code" := ''
                                      ELSE
                                      IF PayLinesRec."Department Code" = '' THEN
                                        PayLinesRec."Department Code" := Department;

                                      IF NOT BookGrLinesRec."Transfer Project" THEN
                                        PayLinesRec."Project Code" := ''
                                      ELSE
                                      IF PayLinesRec."Project Code" = '' THEN
                                        PayLinesRec."Project Code" := Project;

                                      IF BookGrLinesRec."Debit Acc. Type" = 1 THEN
                                        IF "Customer Number" <> '' THEN
                                          PayLinesRec."Debit Account" := "Customer Number" ;

                                      IF BookGrLinesRec."Credit Acc. Type" = 1 THEN
                                        IF "Customer Number" <> '' THEN
                                          PayLinesRec."Credit Account" := "Customer Number" ;
                                       */
                                if BookGrLinesRec."Transfer Department" then
                                    PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
                                if BookGrLinesRec."Transfer Business Units" then
                                    PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";

                                //AAA - Found Here Taxable ref allowed values to be inseted for taxable insertion and calculation
                                if (EmpGroupLines."Default Amount" <> 0) or (EDFileRec."Monthly Variable") or (EdfileRec1."Taxable Ref") then begin
                                    if not EDFileRec."OverTime(Y/N)" then
                                        PayLinesRec.Validate(PayLinesRec."E/D Code");
                                    /*BIN 1 & 2*/
                                    //inserted To Calculate Prorated Payment begin Based on Employment Date
                                    GetPayDays;

                                    if (Employee."No of Days") <> 0 then PayDays := Employee."No of Days";

                                    if (PayDays <> 0) and (EDFileRec.Prorate) then begin
                                        if PayDays > MonthlyDays then begin
                                            if (Date2DMY(Employee."Employment Date", 2) + 1) = Date2DMY(PayrollPeriod."Start Date", 2) then
                                                "day Employeed" := DMY2Date(1, (Date2DMY(PayrollPeriod."Start Date", 2))) - Employee."Employment Date";

                                            if PayDays > (MonthlyDays + "day Employeed") then
                                                if not Confirm(
                                   'Excess of Payment Days Specified for staff is More Than Carried Forward day(s)\\ Continue Calculation')
                                                  then
                                                    CurrReport.Skip;
                                        end;
                                        // and (EDFileRec."Control Type" = EDFileRec."Control Type"::Basic)
                                        if not (EDFileRec."Absent Deduction") then
                                            PayLinesRec.Amount := Round(PayDays / MonthlyDays * PayLinesRec.Amount);
                                    end;
                                    if PayLinesRec.Insert(true) then
                                        INSTD := true
                                    else
                                        PayLinesRec.Modify;
                                end;
                            end;
                            if PayLinesRec."E/D Code" = PaySetup."Basic+Hous+Transp" then
                                TotalBasHosTrans := PayLinesRec.Amount;
                        until (EmpGroupLines.Next = 0);
                        Employee."No of Days" := 0;
                        Employee.Modify;
                    end;

                    CalculateLoan();  //Loan system


                    Commit;
                end;
                if PaySetup.Seniority <> '' then Seniority;

            end;

            trigger OnPostDataItem()
            begin
                /* EdRec.RESET;
                 EdRec.SETRANGE(EdRec."Monthly Variable",TRUE);
                 IF EdRec.FIND('-') THEN
                   REPEAT
                     IF EdRec."E/D Code"<>'' THEN SendLines(EdRec."E/D Code",0,0,0);
                   UNTIL(EdRec.NEXT=0);*/

            end;

            trigger OnPreDataItem()
            begin
                if PayrollPeriod.Get(PayrollPeriod."Period Code") then
                    PayrollPeriod.TestField(PayrollPeriod.Closed, false);
                Window.Open('Total Employees Selected : #1##########\' +
                             'Current Employee Number  : #2##########\' +
                             'Counter                  : #3##########');
                Window.Update(1, Count);
                InfoCounter := 0;
                PayslipHeaderReset(PayrollPeriod."Period Code", 'E000004');
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(content)
            {
                group(Control2)
                {
                    ShowCaption = false;
                    field("Period Code"; PayrollPeriod."Period Code")
                    {
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            PayrollPeriod.Get('2022-11');
        end;

    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        PayrollPeriod.Get(PayrollPeriod."Period Code");
        PayrollPeriod.SetRange("Period Code", PayrollPeriod."Period Code");
        EmpGroupLines.SetRange("Employee Group");
        EmpGroupLines.SetRange("E/D Code");
        PayLinesRec.SetRange("Payroll Period");
        PayLinesRec.SetRange("Employee No");
        PayLinesRec.SetRange("E/D Code");
    end;

    var
        EdfileRec1: Record "Payroll-E/D Codes.";
        "day Employeed": Integer;
        PayrollPeriod: Record "Payroll-Periods.";
        PayslipHeader: Record "Payroll-Payslip Header.";
        PayLinesRec: Record "Payroll-Payslip Lines.";
        EmpGroupLines: Record "Payroll-Employee Group Lines.";
        EDFileRec: Record "Payroll-E/D Codes.";
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
        InfoCounter: Integer;
        Window: Dialog;
        LoanRec: Record "Loan.";
        EdgropRec: Record "Payroll-Employee Group Lines.";
        EdRec: Record "Payroll-E/D Codes.";
        RecRate: Decimal;
        RecQty: Decimal;
        emploMonth: Integer;
        PayMonth: Integer;
        emploday: Integer;
        emplodaywk: Integer;
        totaldays: Integer;
        Daysinmonth: Integer;
        "1stdayofmonth": Code[10];
        monthdig: Integer;
        daydig: Integer;
        dayin: Date;
        ok: Boolean;
        employr: Integer;
        "Absent Register": Record "Employee Absence";
        "Total Days": Decimal;
        Periodbegin: Date;
        PeriodEnd: Date;
        AbsentDeduct: Decimal;
        EmployeeGroupLinerec: Record "Payroll-Employee Group Lines.";
        PaySetup: Record "ASL Payroll Setup";
        TaxFreeED: Code[10];
        TaxFreeAmount: Decimal;
        EmptDate: Date;
        DisengDate: Date;
        PayDays: Integer;
        PBonusED: Code[10];
        PBonusAmount: Decimal;
        TaxableED: Code[10];
        TaxFreeYTD: Decimal;
        TaxableYTD: Decimal;
        TaxYTD: Decimal;
        AmountToTax: Decimal;
        TaxED: Code[10];
        NewTax: Decimal;
        PayLines2: Record "Payroll-Payslip Lines." temporary;
        MonthlyDays: Integer;
        HrsInDay: Integer;
        VarRec: Record "Monthly Variables Lines.";
        GenPCode: Codeunit "General Purpose Codeunit";
        EDRec2: Record "Payroll-E/D Codes.";
        "---": Integer;
        PG: Code[10];
        INSTD: Boolean;
        ServiceYear: Decimal;
        TotalBasHosTrans: Decimal;

    //[Scope('OnPrem')]
    procedure partsalary(nodays: Integer; emplomonth: Integer) prodays: Integer
    begin
        if emplomonth = PayMonth then begin
            if StrLen(Format(nodays)) = 1 then Evaluate(daydig, ('0' + Format(nodays)));
            if StrLen(Format(emplomonth)) = 1 then Evaluate(monthdig, ('0' + Format(emplomonth)));

            Daysinmonth := Date2DMY(dayin, 1);

        end;
    end;

    procedure ShowPayslipLnValue(PaySlipLn: Record "Payroll-Payslip Lines."; Modifycount: integer)
    begin
        case PayslipLn."E/D Code" of
            '4000', '5800', '6400':
                message('%1: %2 Modify %3', PayslipLn."E/D Code", PayslipLn.Amount, Modifycount)  //Show current value
        end;
    end;

    procedure PayslipHeaderReset(pPeriodCode: code[20]; pEmployeeNo: Code[20])
    var
        PayRollPaySlipHeader: Record "Payroll-Payslip Header.";
    begin
        if PayRollPaySlipHeader.Get(pPeriodCode, pEmployeeNo) then
            PayRollPaySlipHeader.Delete();
    end;

    procedure WindowUpdate(pEmployee: Record Employee)
    begin
        Window.Update(2, pEmployee."No.");
        InfoCounter := InfoCounter + 1;
        Window.Update(3, InfoCounter);
    end;

    procedure CalculateLoans()
    begin
        //Loan system START    //AAA - Oct 2002
        PayLinesRec.SetRange("E/D Code");

        LoanRec.SetCurrentKey(LoanRec."Staff No.", LoanRec."Start Period", LoanRec."Open(Y/N)", LoanRec."Suspended(Y/N)");
        LoanRec.SetRange(LoanRec."Staff No.", Employee."No.");
        LoanRec.SetFilter(LoanRec."Start Period", '<=%1', PayrollPeriod."Period Code");
        LoanRec.SetRange(LoanRec."Open(Y/N)", true);
        LoanRec.SetRange("Suspended(Y/N)", false);
        if LoanRec.Find('-') then
            repeat
                LoanRec.CalcFields(LoanRec."Remaining Amount");
                if LoanRec."Remaining Amount" > 0 then begin

                    PayLinesRec.Init;
                    PayLinesRec."Payroll Period" := PayslipHeader."Payroll Period";
                    PayLinesRec."Employee No" := PayslipHeader."Employee No";
                    EDFileRec.Get(LoanRec."Loan ED");
                    PayLinesRec."E/D Code" := LoanRec."Loan ED";
                    PayLinesRec."Payslip Text" := LoanRec.Description;
                    PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
                    PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
                    PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
                    PayLinesRec.Units := EDFileRec.Units;
                    PayLinesRec.Rate := EDFileRec.Rate;
                    PayLinesRec."Overline Column" := EDFileRec."Overline Column";
                    PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
                    PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
                    PayLinesRec.Quantity := EmpGroupLines.Quantity;
                    PayLinesRec.Flag := EmpGroupLines.Flag;

                    if LoanRec."Monthly Repayment" > LoanRec."Remaining Amount" then
                        PayLinesRec.Amount := LoanRec."Remaining Amount" else
                        PayLinesRec.Amount := LoanRec."Monthly Repayment";
                    PayLinesRec."Debit Acc. Type" := LoanRec."Counter Acct. Type";
                    PayLinesRec."Credit Acc. Type" := LoanRec."Acct. Type";
                    PayLinesRec."Postg Group" := PG;
                    //PayLinesRec."Debit Account"    := LoanRec."Counter Acct. No.";   //AAA- Nov 2002
                    if LoanRec."Acct. No." <> '' then
                        PayLinesRec."Credit Account" := LoanRec."Acct. No."
                    else
                        PayLinesRec."Credit Account" := '';
                    PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
                    PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";
                    PayLinesRec."Loan ID" := LoanRec."Loan ID";

                    PayLinesRec.Insert(true);
                    PayLinesRec."Loan ID" := LoanRec."Loan ID";
                    PayLinesRec.Modify(true);
                    Commit;
                end; /*END FOR CHECK ON REMAINING AMOUNT=0*/
            until (LoanRec.Next = 0);
        //Loan system FINISH
    end;

    //[Scope('OnPrem')]
    procedure SendLines(EDToSend: Code[10]; EDAmount: Decimal; EDQty: Decimal; EDRate: Decimal)
    begin
        /*Use The Following Lines to send to Payslip Lines*/

        if PayLinesRec.Get(PayrollPeriod."Period Code", Employee."No.", EDToSend) then begin
            PayLinesRec."E/D Code" := EDToSend;
            if EDRec2.Get(EDToSend) then PayLinesRec."Payslip Text" := EDRec2."Payslip Text";
            PayLinesRec.Validate(PayLinesRec.Amount, Round(EDAmount, 0.01));
            PayLinesRec."Payroll Period" := PayslipHeader."Payroll Period";
            PayLinesRec."Employee No" := PayslipHeader."Employee No";
            PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
            PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
            PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
            PayLinesRec.Units := EDFileRec.Units;
            PayLinesRec.Rate := EDRate;
            PayLinesRec.Quantity := EDQty;
            PayLinesRec."Postg Group" := PG;

            PayLinesRec."Overline Column" := EDFileRec."Overline Column";
            PayLinesRec."Payslip Print Column" := EDRec2."Payslip Print Column";       //AAA
            PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
            PayLinesRec.Flag := EmpGroupLines.Flag;
            PayLinesRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
            PayLinesRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";

            if BookGrLinesRec.Get(Employee."Posting Group", EDToSend) then begin
                PayLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                PayLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                PayLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
                PayLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
            end;
            PayLinesRec.Modify;
        end
        else begin
            PayLinesRec.Init;
            PayLinesRec."Payroll Period" := PayrollPeriod."Period Code";
            PayLinesRec."Employee No" := Employee."No.";
            PayLinesRec."E/D Code" := EDToSend;
            PayLinesRec.Amount := Round(EDAmount, 0.01);
            PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
            PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
            PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
            PayLinesRec.Units := EDFileRec.Units;
            PayLinesRec.Rate := EDFileRec.Rate;
            PayLinesRec."Overline Column" := EDFileRec."Overline Column";
            PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
            PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
            PayLinesRec.Quantity := EmpGroupLines.Quantity;
            PayLinesRec.Flag := EmpGroupLines.Flag;
            PayLinesRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
            PayLinesRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
            PayLinesRec."Postg Group" := PG;
            PayLinesRec.Insert;
        end;


        /*{Use The Following Lines to send to Employee Group Lines}
        
        IF EdgropRec.GET(EmpGrpLinesRec."Employee Group",EDToSend) THEN
          BEGIN
            EdgropRec."Default Amount" := ROUND(EDAmount,0.01);
            EdgropRec.MODIFY;
          END
        ELSE
          BEGIN
            EdgropRec.INIT;
            EdgropRec."Employee Group" := EmpGrpLinesRec."Employee Group";
            EdgropRec."E/D Code"       := EDToSend;
            EdgropRec."Employee Name"  := EmpGrpLinesRec."Employee Group";
            EdgropRec."Default Amount" := ROUND(EDAmount,0.01);
            EdgropRec.INSERT
          END;*///Nitin

    end;

    //[Scope('OnPrem')]
    procedure GetPayDays(): Integer
    begin
        PayrollPeriod.Get(PayslipHeader."Payroll Period");
        EmptDate := Employee."Employment Date";
        DisengDate := Employee."Termination Date";

        if (EmptDate = 0D) then begin
            Message('Employee No %1 must have an Employment Date', Employee."No.");
            CurrReport.Skip;
        end;

        PayDays := 0;
        if (EmptDate > PayrollPeriod."Start Date") and (EmptDate < PayrollPeriod."End Date") then begin
            if (DisengDate <> 0D) then begin
                if (DisengDate > PayrollPeriod."Start Date") and (DisengDate < PayrollPeriod."End Date") then
                    PayDays := GenPCode.GetNoOfDays(EmptDate, DisengDate)
            end
            else begin
                PayDays := GenPCode.GetNoOfDays(PayrollPeriod."Start Date", EmptDate);
            end;
        end
        else
            if (DisengDate > PayrollPeriod."Start Date") and (DisengDate < PayrollPeriod."End Date") then
                PayDays := GenPCode.GetNoOfDays(PayrollPeriod."Start Date", DisengDate);

        //MESSAGE(FORMAT(PayDays));
        //error(FORMAT(PayDays));
    end;

    //[Scope('OnPrem')]
    procedure BIN()
    begin

        /*BIN 1
                  IF PayLinesRec."Payslip Group ID" = PayLinesRec."Payslip Group ID"::"TAXABLE PAY" THEN
                  BEGIN
                    TaxableYTD := PayLinesRec.EDAmountToDate(Employee."No.",PayLinesRec."Payroll Period",TaxableED);
                    TaxYTD     := PayLinesRec.EDAmountToDate(Employee."No.",PayLinesRec."Payroll Period",TaxED);
        //            MESSAGE(FORMAT(TaxableYTD));
        
                    TaxFreeYTD := PayLinesRec.EDAmountToDate(Employee."No.",PayLinesRec."Payroll Period",TaxFreeED);
                    TaxFreeYTD := TaxFreeYTD + Employee."Annual Tax Freepay"/12;
                    AmountToTax := TaxableYTD - TaxFreeYTD;
                    SendLines(TaxableED,AmountToTax,0,0);
                    SendLines(TaxED,0,0,0);
                    MESSAGE(' Taxable:' + FORMAT(TaxableYTD)+' TaxFreeYTD:' + FORMAT(TaxfreeYTD)+'\\'+
                            ' TaxYTD:' + FORMAT(TaxYTD)+' AmountToTax:' + FORMAT(AmountToTax));
                  END;
        
        BIN 2
                  BEGIN
                    PayLines2.RESET;
                    PayLines2.SETRANGE(PayLines2."Employee No",PayLinesRec."Employee No");
                    PayLines2.SETRANGE(PayLines2."Payroll Period",PayLinesRec."Payroll Period");
                    MESSAGE(FORMAT(PayLines2.COUNT));
                    MESSAGE(PayLinesRec."Payroll Period"); //error('1');
        //            PayLines2.SETRANGE(PayLines2."Payslip Group ID",PayLines2."Payslip Group ID"::"Tax Deducted");
                    PayLines2.FIND('-');
                    NewTax := PayLines2.Amount;
                    SendLines(TaxED,NewTax-TaxYTD,0,0);
                  END;
        
        
        */

    end;

    //[Scope('OnPrem')]
    procedure Seniority()
    begin
        //Set PayLines."Payslip Column" to 3

        ServiceYear := Round(WorkDate - Employee."Employment Date", 1, '<');
        if ServiceYear <> 0 then ServiceYear := Round(ServiceYear / 365.25, 1, '<');
        Message('Service Year Value %1 AND Base is %2', ServiceYear, TotalBasHosTrans);
        //Seniority System START
        PayLinesRec.Init;
        PayLinesRec."Payroll Period" := PayslipHeader."Payroll Period";
        PayLinesRec."Employee No" := PayslipHeader."Employee No";
        if PaySetup.Find then
            EDFileRec.Get(PaySetup.Seniority);
        PayLinesRec."E/D Code" := EDFileRec."E/D Code";
        PayLinesRec."Payslip Text" := EDFileRec."Payslip Text";
        PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
        PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
        PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
        PayLinesRec.Units := EDFileRec.Units;
        PayLinesRec.Rate := EDFileRec.Rate;
        PayLinesRec."Overline Column" := EDFileRec."Overline Column";
        PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
        PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
        PayLinesRec.Flag := EmpGroupLines.Flag;

        PayLinesRec.Validate(PayLinesRec.Amount, TotalBasHosTrans * ServiceYear / 100);
        PayLinesRec."Postg Group" := PG;
        if BookGrLinesRec.Get(PG, PaySetup.Seniority) then begin
            PayLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
            PayLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
            PayLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
            PayLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
        end;
        PayLinesRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
        PayLinesRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
        PayLinesRec.Insert(true);
        PayLinesRec.Validate(PayLinesRec."E/D Code");
        PayLinesRec."Payslip Column" := 3;
        PayLinesRec.Modify(true);
        Commit;
        /*END;*/ /*END FOR CHECK ON REMAINING AMOUNT=0*/
                 //Loan system FINISH

    end;
}

