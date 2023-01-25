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
            DataItemTableView = SORTING("No.") WHERE(Blocked = CONST(false), Suspended = CONST(false));
            RequestFilterFields = "No.", "Posting Group", "Global Dimension 1 Code", "Global Dimension 2 Code";

            trigger OnAfterGetRecord()
            begin
                Window.Update(2, "No.");
                InfoCounter := InfoCounter + 1;
                Window.Update(3, InfoCounter);

                if not PayslipHeader.Get(PayrollPeriod."Period Code", "No.") then begin
                    /* Create the header record */
                    begin
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
                    end;

                    /*Create the payroll entry lines.
                     The entries are copied from the employee group entry lines.*/

                    /*Delimit the Employee group lines appropriately */
                    EmpGrpLines.Init;
                    EmpGrpLines.SetRange("E/D Code");
                    EmpGrpLines.SetRange("Employee Group");
                    EmpGrpLines."Employee Group" := "Employee Group";
                    EmpGrpLines."E/D Code" := '';
                    EmpGrpLines.SetRange("Employee Group", "Employee Group");
                    if not (EmpGrpLines.Count = 0) then begin
                        /*Lock the Payroll Lines Entry file */
                        PayslipLines.LockTable();
                        PayslipLines.SetRange("E/D Code");

                        /*Transfer the E/D lines from Employe Group lines to Payroll Lines */
                        EmpGrpLines.Find('>');
                        begin
                            PayslipLines."Payroll Period" := PayslipHeader."Payroll Period";
                            PayslipLines."Employee No" := PayslipHeader."Employee No";
                        end;
                        repeat /*WHILE (EmpGrpLinesRec."Employee Group" = "Employee Group") */
                        begin   //Set parameters
                            RecRate := 0;
                            RecQty := 0;
                            PayslipLines.Init;
                            EDCodes.Get(EmpGrpLines."E/D Code");
                            EdfileRec1 := EDCodes;
                        end;

                        /******  Begins Overtime & Other VAriables Calculation SGG  **********/
                        begin  //Set parameters
                            PaySetup.Reset;
                            PaySetup.Find('-');
                            TaxFreeED := PaySetup."Taxfree Pay ED";
                            if TaxFreeED <> '' then
                                SendLines(TaxFreeED, Employee."Annual Tax Freepay" / 12, 0, 0);
                            MonthlyDays := PaySetup."Monthly Working Days";
                            HrsInDay := PaySetup."Daily Working Hours";
                        end;

                        /*EdRec.RESET;
                         EdRec.SETRANGE(EdRec."Monthly Variable",TRUE);
                         IF EdRec.FIND('-') THEN
                         REPEAT
                           SendLines(EdRec."E/D Code",0,0,0);
                         UNTIL(EdRec.NEXT=0);
                         */

                        //Monthly Variables 
                        begin
                            VarRec.Reset;
                            VarRec.SetRange(VarRec."Payroll Period", PayslipLines."Payroll Period");
                            VarRec.SetRange(VarRec."Employee No", PayslipLines."Employee No");
                            if VarRec.Find('-') then
                                repeat
                                    SendLines(VarRec."E/D Code", VarRec.Amount, VarRec.Quantity, VarRec.Rate);
                                until (VarRec.Next = 0);
                        end;

                        /******  Overtime & Other VAriables Calculation Ends SGG  **********/
                        /*AAA Nov 2002*/
                        EDCodes.Reset;
                        EDCodes.SetRange(EDCodes."Payslip Print Column", EDCodes."Payslip Print Column"::"Total Earning");
                        if EDCodes.Find('-') then
                            TaxableED := EDCodes."E/D Code";

                        EDCodes.Reset;
                        EDCodes.SetRange(EDCodes."Payslip Group ID", EDCodes."Payslip Group ID"::"TAX DEDUCTED");
                        if EDCodes.Find('-') then TaxED := EDCodes."E/D Code";

                        //SendLines(TaxFreeED,0,0,0);
                        //SendLines(TaxED,0,0,0);
                        //SendLines(TaxFreeED,Employee."Annual Tax Freepay"/12,0,0);

                        PaySetup.Reset;
                        PaySetup.Find('-');
                        /*AAA Nov 2002*/

                        PayslipLines."E/D Code" := EmpGrpLines."E/D Code";

                        begin
                            PayslipLines."Payslip Group ID" := EDCodes."Payslip Group ID";
                            PayslipLines."Pos. In Payslip Grp." := EDCodes."Pos. In Payslip Grp.";
                            PayslipLines."Payslip appearance" := EDCodes."Payslip appearance";
                            PayslipLines.Units := EDCodes.Units;
                            PayslipLines.Rate := EDCodes.Rate;
                            PayslipLines."Overline Column" := EDCodes."Overline Column";
                            PayslipLines."Payslip Print Column" := EDCodes."Payslip Print Column";
                            PayslipLines."Underline Amount" := EDCodes."Underline Amount";
                        end;        /* Payslip Grp/Pos */
                        begin
                            PayslipLines."E/D Code" := EmpGrpLines."E/D Code";
                            PayslipLines.Units := EmpGrpLines.Units;
                            PayslipLines.Rate := EmpGrpLines.Rate;
                            PayslipLines.Quantity := EmpGrpLines.Quantity;
                            PayslipLines.Flag := EmpGrpLines.Flag;
                            PayslipLines.Amount := EmpGrpLines."Default Amount";
                            PayslipLines."Postg Group" := PG;
                        end;   /* Rate,Units,Amount,... */

                        if BookGrLinesRec.Get("Posting Group", PayslipLines."E/D Code")
                        then begin
                            begin
                                PayslipLines."Debit Account" := BookGrLinesRec."Debit Account No.";
                                PayslipLines."Credit Account" := BookGrLinesRec."Credit Account No.";
                                PayslipLines."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                                PayslipLines."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                                PayslipLines."Global Dimension 1 Code" := "Global Dimension 1 Code";
                                PayslipLines."Global Dimension 2 Code" := "Global Dimension 2 Code";
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
                                PayslipLines."Global Dimension 1 Code" := "Global Dimension 1 Code";
                            if BookGrLinesRec."Transfer Business Units" then
                                PayslipLines."Global Dimension 2 Code" := "Global Dimension 2 Code";

                            //AAA - Found Here Taxable ref allowed values to be inseted for taxable insertion and calculation
                            if (EmpGrpLines."Default Amount" <> 0) or (EDCodes."Monthly Variable") or (EdfileRec1."Taxable Ref") then begin
                                if not EDCodes."OverTime(Y/N)" then
                                    PayslipLines.Validate(PayslipLines."E/D Code");
                                /*BIN 1 & 2*/
                                //inserted To Calculate Prorated Payment begin Based on Employment Date
                                GetPayDays;

                                if (Employee."No of Days") <> 0 then PayDays := Employee."No of Days";

                                if (PayDays <> 0) and (EDCodes.Prorate) then begin
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
                                    if not (EDCodes."Absent Deduction") then
                                        PayslipLines.Amount := Round(PayDays / MonthlyDays * PayslipLines.Amount);
                                end;
                                if PayslipLines.Insert(true) then
                                    INSTD := true
                                else
                                    PayslipLines.Modify;
                            end;
                        end;
                        if PayslipLines."E/D Code" = PaySetup."Basic+Hous+Transp" then
                            TotalBasHosTrans := PayslipLines.Amount;
                        until (EmpGrpLines.Next = 0);
                        Employee."No of Days" := 0;
                        Employee.Modify;
                    end;

                    //Loan system START

                    //AAA PayLinesRec.LOCKTABLE(FALSE);    //AAA - Oct 2002
                    PayslipLines.SetRange("E/D Code");

                    LoanRec.SetCurrentKey(LoanRec."Staff No.", LoanRec."Start Period", LoanRec."Open(Y/N)", LoanRec."Suspended(Y/N)");
                    LoanRec.SetRange(LoanRec."Staff No.", Employee."No.");
                    LoanRec.SetFilter(LoanRec."Start Period", '<=%1', PayrollPeriod."Period Code");
                    LoanRec.SetRange(LoanRec."Open(Y/N)", true);
                    LoanRec.SetRange("Suspended(Y/N)", false);
                    if LoanRec.Find('-') then
                        repeat
                            LoanRec.CalcFields(LoanRec."Remaining Amount");
                            if LoanRec."Remaining Amount" > 0 then begin

                                PayslipLines.Init;
                                PayslipLines."Payroll Period" := PayslipHeader."Payroll Period";
                                PayslipLines."Employee No" := PayslipHeader."Employee No";
                                EDCodes.Get(LoanRec."Loan ED");
                                PayslipLines."E/D Code" := LoanRec."Loan ED";
                                PayslipLines."Payslip Text" := LoanRec.Description;
                                PayslipLines."Payslip Group ID" := EDCodes."Payslip Group ID";
                                PayslipLines."Pos. In Payslip Grp." := EDCodes."Pos. In Payslip Grp.";
                                PayslipLines."Payslip appearance" := EDCodes."Payslip appearance";
                                PayslipLines.Units := EDCodes.Units;
                                PayslipLines.Rate := EDCodes.Rate;
                                PayslipLines."Overline Column" := EDCodes."Overline Column";
                                PayslipLines."Payslip Print Column" := EDCodes."Payslip Print Column";
                                PayslipLines."Underline Amount" := EDCodes."Underline Amount";
                                PayslipLines.Quantity := EmpGrpLines.Quantity;
                                PayslipLines.Flag := EmpGrpLines.Flag;

                                if LoanRec."Monthly Repayment" > LoanRec."Remaining Amount" then
                                    PayslipLines.Amount := LoanRec."Remaining Amount" else
                                    PayslipLines.Amount := LoanRec."Monthly Repayment";
                                PayslipLines."Debit Acc. Type" := LoanRec."Counter Acct. Type";
                                PayslipLines."Credit Acc. Type" := LoanRec."Acct. Type";
                                PayslipLines."Postg Group" := PG;
                                //PayLinesRec."Debit Account"    := LoanRec."Counter Acct. No.";   //AAA- Nov 2002
                                if LoanRec."Acct. No." <> '' then
                                    PayslipLines."Credit Account" := LoanRec."Acct. No."
                                else
                                    PayslipLines."Credit Account" := '';
                                PayslipLines."Global Dimension 1 Code" := "Global Dimension 1 Code";
                                PayslipLines."Global Dimension 2 Code" := "Global Dimension 2 Code";
                                PayslipLines."Loan ID" := LoanRec."Loan ID";

                                PayslipLines.Insert(true);
                                PayslipLines."Loan ID" := LoanRec."Loan ID";
                                PayslipLines.Modify(true);
                                Commit;
                            end; /*END FOR CHECK ON REMAINING AMOUNT=0*/
                        until (LoanRec.Next = 0);
                    //Loan system FINISH

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
                    field("Period Code"; PayrollPeriod."Period Code")
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
        PayrollPeriod.Get(PayrollPeriod."Period Code");
        PayrollPeriod.SetRange("Period Code", PayrollPeriod."Period Code");
        EmpGrpLines.SetRange("Employee Group");
        EmpGrpLines.SetRange("E/D Code");
        PayslipLines.SetRange("Payroll Period");
        PayslipLines.SetRange("Employee No");
        PayslipLines.SetRange("E/D Code");
    end;

    var
        EdfileRec1: Record "Payroll-E/D Codes.";
        "day Employeed": Integer;
        PayrollPeriod: Record "Payroll-Periods.";
        PayslipHeader: Record "Payroll-Payslip Header.";
        PayslipLines: Record "Payroll-Payslip Lines.";
        EmpGrpLines: Record "Payroll-Employee Group Lines.";
        EDCodes: Record "Payroll-E/D Codes.";
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
        InfoCounter: Integer;
        Window: Dialog;
        LoanRec: Record "Loan.";
        RecRate: Decimal;
        RecQty: Decimal;
        PayMonth: Integer;
        Daysinmonth: Integer;
        monthdig: Integer;
        daydig: Integer;
        dayin: Date;
        PaySetup: Record "ASL Payroll Setup";
        TaxFreeED: Code[10];
        EmptDate: Date;
        DisengDate: Date;
        PayDays: Integer;
        TaxableED: Code[10];
        TaxED: Code[10];
        MonthlyDays: Integer;
        HrsInDay: Integer;
        VarRec: Record "Monthly Variables Lines.";
        GenPCode: Codeunit "General Purpose Codeunit";
        EDRec2: Record "Payroll-E/D Codes.";
        PG: Code[10];
        INSTD: Boolean;
        ServiceYear: Decimal;
        TotalBasHosTrans: Decimal;

    [Scope('OnPrem')]
    procedure partsalary(nodays: Integer; emplomonth: Integer) prodays: Integer
    begin
        if emplomonth = PayMonth then begin
            if StrLen(Format(nodays)) = 1 then Evaluate(daydig, ('0' + Format(nodays)));
            if StrLen(Format(emplomonth)) = 1 then Evaluate(monthdig, ('0' + Format(emplomonth)));

            Daysinmonth := Date2DMY(dayin, 1);

        end;
    end;

    [Scope('OnPrem')]
    procedure SendLines(EDToSend: Code[10]; EDAmount: Decimal; EDQty: Decimal; EDRate: Decimal)
    begin
        /*Use The Following Lines to send to Payslip Lines*/

        if PayslipLines.Get(PayrollPeriod."Period Code", Employee."No.", EDToSend) then begin
            PayslipLines."E/D Code" := EDToSend;
            if EDRec2.Get(EDToSend) then PayslipLines."Payslip Text" := EDRec2."Payslip Text";
            PayslipLines.Validate(PayslipLines.Amount, Round(EDAmount, 0.01));
            PayslipLines."Payroll Period" := PayslipHeader."Payroll Period";
            PayslipLines."Employee No" := PayslipHeader."Employee No";
            PayslipLines."Payslip Group ID" := EDCodes."Payslip Group ID";
            PayslipLines."Pos. In Payslip Grp." := EDCodes."Pos. In Payslip Grp.";
            PayslipLines."Payslip appearance" := EDCodes."Payslip appearance";
            PayslipLines.Units := EDCodes.Units;
            PayslipLines.Rate := EDRate;
            PayslipLines.Quantity := EDQty;
            PayslipLines."Postg Group" := PG;

            PayslipLines."Overline Column" := EDCodes."Overline Column";
            PayslipLines."Payslip Print Column" := EDRec2."Payslip Print Column";       //AAA
            PayslipLines."Underline Amount" := EDCodes."Underline Amount";
            PayslipLines.Flag := EmpGrpLines.Flag;
            PayslipLines."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
            PayslipLines."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";

            if BookGrLinesRec.Get(Employee."Posting Group", EDToSend) then begin
                PayslipLines."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                PayslipLines."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                PayslipLines."Debit Account" := BookGrLinesRec."Debit Account No.";
                PayslipLines."Credit Account" := BookGrLinesRec."Credit Account No.";
            end;
            PayslipLines.Modify;
        end
        else begin
            PayslipLines.Init;
            PayslipLines."Payroll Period" := PayrollPeriod."Period Code";
            PayslipLines."Employee No" := Employee."No.";
            PayslipLines."E/D Code" := EDToSend;
            PayslipLines.Amount := Round(EDAmount, 0.01);
            PayslipLines."Payslip Group ID" := EDCodes."Payslip Group ID";
            PayslipLines."Pos. In Payslip Grp." := EDCodes."Pos. In Payslip Grp.";
            PayslipLines."Payslip appearance" := EDCodes."Payslip appearance";
            PayslipLines.Units := EDCodes.Units;
            PayslipLines.Rate := EDCodes.Rate;
            PayslipLines."Overline Column" := EDCodes."Overline Column";
            PayslipLines."Payslip Print Column" := EDCodes."Payslip Print Column";
            PayslipLines."Underline Amount" := EDCodes."Underline Amount";
            PayslipLines.Quantity := EmpGrpLines.Quantity;
            PayslipLines.Flag := EmpGrpLines.Flag;
            PayslipLines."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
            PayslipLines."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
            PayslipLines."Postg Group" := PG;
            PayslipLines.Insert;
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

    [Scope('OnPrem')]
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

    [Scope('OnPrem')]
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

    [Scope('OnPrem')]
    procedure Seniority()
    begin
        //Set PayLines."Payslip Column" to 3

        ServiceYear := Round(WorkDate - Employee."Employment Date", 1, '<');
        if ServiceYear <> 0 then ServiceYear := Round(ServiceYear / 365.25, 1, '<');
        Message('Service Year Value %1 AND Base is %2', ServiceYear, TotalBasHosTrans);
        //Seniority System START
        PayslipLines.Init;
        PayslipLines."Payroll Period" := PayslipHeader."Payroll Period";
        PayslipLines."Employee No" := PayslipHeader."Employee No";
        if PaySetup.Find then
            EDCodes.Get(PaySetup.Seniority);
        PayslipLines."E/D Code" := EDCodes."E/D Code";
        PayslipLines."Payslip Text" := EDCodes."Payslip Text";
        PayslipLines."Payslip Group ID" := EDCodes."Payslip Group ID";
        PayslipLines."Pos. In Payslip Grp." := EDCodes."Pos. In Payslip Grp.";
        PayslipLines."Payslip appearance" := EDCodes."Payslip appearance";
        PayslipLines.Units := EDCodes.Units;
        PayslipLines.Rate := EDCodes.Rate;
        PayslipLines."Overline Column" := EDCodes."Overline Column";
        PayslipLines."Payslip Print Column" := EDCodes."Payslip Print Column";
        PayslipLines."Underline Amount" := EDCodes."Underline Amount";
        PayslipLines.Flag := EmpGrpLines.Flag;

        PayslipLines.Validate(PayslipLines.Amount, TotalBasHosTrans * ServiceYear / 100);
        PayslipLines."Postg Group" := PG;
        if BookGrLinesRec.Get(PG, PaySetup.Seniority) then begin
            PayslipLines."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
            PayslipLines."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
            PayslipLines."Debit Account" := BookGrLinesRec."Debit Account No.";
            PayslipLines."Credit Account" := BookGrLinesRec."Credit Account No.";
        end;
        PayslipLines."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
        PayslipLines."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
        PayslipLines.Insert(true);
        PayslipLines.Validate(PayslipLines."E/D Code");
        PayslipLines."Payslip Column" := 3;
        PayslipLines.Modify(true);
        Commit;
        /*END;*/ /*END FOR CHECK ON REMAINING AMOUNT=0*/
                 //Loan system FINISH

    end;
}



//>>>>>>>>>.
// if not PayHeadRec.Get(PayPeriodRec."Period Code", "No.") then begin
//                     /* Create the header record */
//                     PayHeadRec."Payroll Period" := PayPeriodRec."Period Code";
//                     PayHeadRec."Employee No" := "No.";
//                     begin
//                         PayHeadRec."Period Start" := PayPeriodRec."Start Date";
//                         PayHeadRec."Period End" := PayPeriodRec."End Date";
//                         PayHeadRec."Period Name" := PayPeriodRec.Name;
//                     end;

//                     begin
//                         PayHeadRec."Employee Name" := FullName;
//                         PayHeadRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
//                         PayHeadRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
//                         PayHeadRec."Customer Number" := Employee."SAM Number";
//                         PayHeadRec.Designation := Designation;
//                     end;
//                     PayHeadRec.Insert;
//                     PG := Employee."Posting Group";

//                     /*Create the payroll entry lines.
//                      The entries are copied from the employee group entry lines.*/

//                     /*Delimit the Employee group lines appropriately */
//                     EmpGrpLinesRec.Init;
//                     EmpGrpLinesRec.SetRange("E/D Code");
//                     EmpGrpLinesRec.SetRange("Employee Group");
//                     EmpGrpLinesRec."Employee Group" := "Employee Group";
//                     EmpGrpLinesRec."E/D Code" := '';
//                     EmpGrpLinesRec.SetRange("Employee Group", "Employee Group");
//                     if not (EmpGrpLinesRec.Count = 0) then begin
//                         /*Lock the Payroll Lines Entry file */
//                         PayLinesRec.LockTable();
//                         PayLinesRec.SetRange("E/D Code");

//                         /*Transfer the E/D lines from Employe Group lines to Payroll Lines */
//                         EmpGrpLinesRec.Find('>');
//                         begin
//                             PayLinesRec."Payroll Period" := PayHeadRec."Payroll Period";
//                             PayLinesRec."Employee No" := PayHeadRec."Employee No";
//                         end;
//                         repeat /*WHILE (EmpGrpLinesRec."Employee Group" = "Employee Group") */
//                             RecRate := 0;
//                             RecQty := 0;
//                             PayLinesRec.Init;
//                             EDFileRec.Get(EmpGrpLinesRec."E/D Code");
//                             EdfileRec1 := EDFileRec;

//                             /******  Begins Overtime & Other VAriables Calculation SGG  **********/
//                             PaySetup.Reset;
//                             PaySetup.Find('-');
//                             TaxFreeED := PaySetup."Taxfree Pay ED";
//                             if TaxFreeED <> '' then
//                                 SendLines(TaxFreeED, Employee."Annual Tax Freepay" / 12, 0, 0);
//                             MonthlyDays := PaySetup."Monthly Working Days";
//                             HrsInDay := PaySetup."Daily Working Hours";

//                             /*
//                              EdRec.RESET;
//                              EdRec.SETRANGE(EdRec."Monthly Variable",TRUE);
//                              IF EdRec.FIND('-') THEN
//                              REPEAT
//                                SendLines(EdRec."E/D Code",0,0,0);
//                              UNTIL(EdRec.NEXT=0);
//                             */

//                             VarRec.Reset;
//                             VarRec.SetRange(VarRec."Payroll Period", PayLinesRec."Payroll Period");
//                             VarRec.SetRange(VarRec."Employee No", PayLinesRec."Employee No");
//                             if VarRec.Find('-') then
//                                 repeat
//                                     SendLines(VarRec."E/D Code", VarRec.Amount, VarRec.Quantity, VarRec.Rate);
//                                 until (VarRec.Next = 0);

//                             /******  Overtime & Other VAriables Calculation Ends SGG  **********/
//                             /*AAA Nov 2002*/
//                             EDFileRec.Reset;
//                             EDFileRec.SetRange(EDFileRec."Payslip Print Column", EDFileRec."Payslip Print Column"::"Total Earning");
//                             if EDFileRec.Find('-') then
//                                 TaxableED := EDFileRec."E/D Code";

//                             EDFileRec.Reset;
//                             EDFileRec.SetRange(EDFileRec."Payslip Group ID", EDFileRec."Payslip Group ID"::"TAX DEDUCTED");
//                             if EDFileRec.Find('-') then TaxED := EDFileRec."E/D Code";

//                             //SendLines(TaxFreeED,0,0,0);
//                             //SendLines(TaxED,0,0,0);
//                             //SendLines(TaxFreeED,Employee."Annual Tax Freepay"/12,0,0);

//                             PaySetup.Reset;
//                             PaySetup.Find('-');
//                             /*AAA Nov 2002*/

//                             PayLinesRec."E/D Code" := EmpGrpLinesRec."E/D Code";

//                             begin
//                                 PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
//                                 PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
//                                 PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
//                                 PayLinesRec.Units := EDFileRec.Units;
//                                 PayLinesRec.Rate := EDFileRec.Rate;
//                                 PayLinesRec."Overline Column" := EDFileRec."Overline Column";
//                                 PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
//                                 PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
//                             end;        /* Payslip Grp/Pos */
//                             begin
//                                 PayLinesRec."E/D Code" := EmpGrpLinesRec."E/D Code";
//                                 PayLinesRec.Units := EmpGrpLinesRec.Units;
//                                 PayLinesRec.Rate := EmpGrpLinesRec.Rate;
//                                 PayLinesRec.Quantity := EmpGrpLinesRec.Quantity;
//                                 PayLinesRec.Flag := EmpGrpLinesRec.Flag;
//                                 PayLinesRec.Amount := EmpGrpLinesRec."Default Amount";
//                                 PayLinesRec."Postg Group" := PG;
//                             end;   /* Rate,Units,Amount,... */

//                             if BookGrLinesRec.Get("Posting Group", PayLinesRec."E/D Code")
//                             then begin
//                                 begin
//                                     PayLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
//                                     PayLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
//                                     PayLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
//                                     PayLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
//                                     PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
//                                     PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";
//                                 end; /* Debit/Credit accounts*/
//                                      //AAA
//                                      /*No Dept/Proj from Booking Gr.

//                                       IF NOT BookGrLinesRec."Transfer Department" THEN
//                                         PayLinesRec."Department Code" := ''
//                                       ELSE
//                                       IF PayLinesRec."Department Code" = '' THEN
//                                         PayLinesRec."Department Code" := Department;

//                                       IF NOT BookGrLinesRec."Transfer Project" THEN
//                                         PayLinesRec."Project Code" := ''
//                                       ELSE
//                                       IF PayLinesRec."Project Code" = '' THEN
//                                         PayLinesRec."Project Code" := Project;

//                                       IF BookGrLinesRec."Debit Acc. Type" = 1 THEN
//                                         IF "Customer Number" <> '' THEN
//                                           PayLinesRec."Debit Account" := "Customer Number" ;

//                                       IF BookGrLinesRec."Credit Acc. Type" = 1 THEN
//                                         IF "Customer Number" <> '' THEN
//                                           PayLinesRec."Credit Account" := "Customer Number" ;
//                                        */
//                                 if BookGrLinesRec."Transfer Department" then
//                                     PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
//                                 if BookGrLinesRec."Transfer Business Units" then
//                                     PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";

//                                 //AAA - Found Here Taxable ref allowed values to be inseted for taxable insertion and calculation
//                                 if (EmpGrpLinesRec."Default Amount" <> 0) or (EDFileRec."Monthly Variable") or (EdfileRec1."Taxable Ref") then begin
//                                     if not EDFileRec."OverTime(Y/N)" then
//                                         PayLinesRec.Validate(PayLinesRec."E/D Code");
//                                     /*BIN 1 & 2*/
//                                     //inserted To Calculate Prorated Payment begin Based on Employment Date
//                                     GetPayDays;

//                                     if (Employee."No of Days") <> 0 then PayDays := Employee."No of Days";

//                                     if (PayDays <> 0) and (EDFileRec.Prorate) then begin
//                                         if PayDays > MonthlyDays then begin
//                                             if (Date2DMY(Employee."Employment Date", 2) + 1) = Date2DMY(PayPeriodRec."Start Date", 2) then
//                                                 "day Employeed" := DMY2Date(1, (Date2DMY(PayPeriodRec."Start Date", 2))) - Employee."Employment Date";

//                                             if PayDays > (MonthlyDays + "day Employeed") then
//                                                 if not Confirm(
//                                    'Excess of Payment Days Specified for staff is More Than Carried Forward day(s)\\ Continue Calculation')
//                                                   then
//                                                     CurrReport.Skip;
//                                         end;
//                                         // and (EDFileRec."Control Type" = EDFileRec."Control Type"::Basic)
//                                         if not (EDFileRec."Absent Deduction") then
//                                             PayLinesRec.Amount := Round(PayDays / MonthlyDays * PayLinesRec.Amount);
//                                     end;
//                                     if PayLinesRec.Insert(true) then
//                                         INSTD := true
//                                     else
//                                         PayLinesRec.Modify;
//                                 end;
//                             end;
//                             if PayLinesRec."E/D Code" = PaySetup."Basic+Hous+Transp" then
//                                 TotalBasHosTrans := PayLinesRec.Amount;
//                         until (EmpGrpLinesRec.Next = 0);
//                         Employee."No of Days" := 0;
//                         Employee.Modify;
//                     end;

//                     //Loan system START

//                     //AAA PayLinesRec.LOCKTABLE(FALSE);    //AAA - Oct 2002
//                     PayLinesRec.SetRange("E/D Code");

//                     LoanRec.SetCurrentKey(LoanRec."Staff No.", LoanRec."Start Period", LoanRec."Open(Y/N)", LoanRec."Suspended(Y/N)");
//                     LoanRec.SetRange(LoanRec."Staff No.", Employee."No.");
//                     LoanRec.SetFilter(LoanRec."Start Period", '<=%1', PayPeriodRec."Period Code");
//                     LoanRec.SetRange(LoanRec."Open(Y/N)", true);
//                     LoanRec.SetRange("Suspended(Y/N)", false);
//                     if LoanRec.Find('-') then
//                         repeat
//                             LoanRec.CalcFields(LoanRec."Remaining Amount");
//                             if LoanRec."Remaining Amount" > 0 then begin

//                                 PayLinesRec.Init;
//                                 PayLinesRec."Payroll Period" := PayHeadRec."Payroll Period";
//                                 PayLinesRec."Employee No" := PayHeadRec."Employee No";
//                                 EDFileRec.Get(LoanRec."Loan ED");
//                                 PayLinesRec."E/D Code" := LoanRec."Loan ED";
//                                 PayLinesRec."Payslip Text" := LoanRec.Description;
//                                 PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
//                                 PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
//                                 PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
//                                 PayLinesRec.Units := EDFileRec.Units;
//                                 PayLinesRec.Rate := EDFileRec.Rate;
//                                 PayLinesRec."Overline Column" := EDFileRec."Overline Column";
//                                 PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
//                                 PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
//                                 PayLinesRec.Quantity := EmpGrpLinesRec.Quantity;
//                                 PayLinesRec.Flag := EmpGrpLinesRec.Flag;

//                                 if LoanRec."Monthly Repayment" > LoanRec."Remaining Amount" then
//                                     PayLinesRec.Amount := LoanRec."Remaining Amount" else
//                                     PayLinesRec.Amount := LoanRec."Monthly Repayment";
//                                 PayLinesRec."Debit Acc. Type" := LoanRec."Counter Acct. Type";
//                                 PayLinesRec."Credit Acc. Type" := LoanRec."Acct. Type";
//                                 PayLinesRec."Postg Group" := PG;
//                                 //PayLinesRec."Debit Account"    := LoanRec."Counter Acct. No.";   //AAA- Nov 2002
//                                 if LoanRec."Acct. No." <> '' then
//                                     PayLinesRec."Credit Account" := LoanRec."Acct. No."
//                                 else
//                                     PayLinesRec."Credit Account" := '';
//                                 PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
//                                 PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";
//                                 PayLinesRec."Loan ID" := LoanRec."Loan ID";

//                                 PayLinesRec.Insert(true);
//                                 PayLinesRec."Loan ID" := LoanRec."Loan ID";
//                                 PayLinesRec.Modify(true);
//                                 Commit;
//                             end; /*END FOR CHECK ON REMAINING AMOUNT=0*/
//                         until (LoanRec.Next = 0);
//                     //Loan system FINISH

//                     Commit;
//                 end;