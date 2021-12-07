report 90054 "ASL Create New payslips - NewX"
{
    // //
    // {This function transfers data from the Employee group to Payroll Entry for
    // the specified employees, if the Payroll entries for these Employees in the
    // specified period do not exist.

    ProcessingOnly = true;

    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING ("No.");
            RequestFilterFields = "No.", "Global Dimension 1 Code", "Global Dimension 2 Code";

            trigger OnAfterGetRecord()
            begin
                if Employee.Blocked then CurrReport.Skip;
                Window.Update(2, "No.");
                InfoCounter := InfoCounter + 1;
                Window.Update(3, InfoCounter);

                if not PayHeadRec.Get(PayPeriodRec."Period Code", "No.") then begin
                    /* Create the header record */
                    PayHeadRec."Payroll Period" := PayPeriodRec."Period Code";
                    PayHeadRec."Employee No" := "No.";
                    begin
                        PayHeadRec."Period Start" := PayPeriodRec."Start Date";
                        PayHeadRec."Period End" := PayPeriodRec."End Date";
                        PayHeadRec."Period Name" := PayPeriodRec.Name;
                    end;

                    begin
                        PayHeadRec."Employee Name" := FullName;
                        PayHeadRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
                        PayHeadRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
                        PayHeadRec."Customer Number" := Employee."SAM Number";
                        PayHeadRec.Designation := Designation;
                    end;
                    PayHeadRec.Insert;

                    /*Create the payroll entry lines.
                     The entries are copied from the employee group entry lines.*/

                    /*Delimit the Employee group lines appropriately */
                    EmpGrpLinesRec.Init;
                    EmpGrpLinesRec.SetRange("E/D Code");
                    EmpGrpLinesRec.SetRange("Employee Group");
                    EmpGrpLinesRec."Employee Group" := "Employee Group";
                    EmpGrpLinesRec."E/D Code" := '';
                    EmpGrpLinesRec.SetRange("Employee Group", "Employee Group");
                    if not (EmpGrpLinesRec.Count = 0) then begin
                        /*Lock the Payroll Lines Entry file */
                        PayLinesRec.LockTable(false);
                        PayLinesRec.SetRange("E/D Code");

                        /*Transfer the E/D lines from Employe Group lines to Payroll Lines */
                        EmpGrpLinesRec.Find('>');
                        begin
                            PayLinesRec."Payroll Period" := PayHeadRec."Payroll Period";
                            PayLinesRec."Employee No" := PayHeadRec."Employee No";
                        end;
                        repeat /*WHILE (EmpGrpLinesRec."Employee Group" = "Employee Group") */
                            RecRate := 0;
                            RecQty := 0;
                            PayLinesRec.Init;
                            EDFileRec.Get(EmpGrpLinesRec."E/D Code");

                            /******  Begins Overtime & Other VAriables Calculation SGG  **********/
                            PaySetup.Reset;
                            PaySetup.Find('-');
                            TaxFreeED := PaySetup."Taxfree Pay ED";
                            SendLines(TaxFreeED, Employee."Annual Tax Freepay" / 12, 0, 0);
                            MonthlyDays := PaySetup."Monthly Working Days";
                            HrsInDay := PaySetup."Daily Working Hours";

                            VarRec.Reset;
                            VarRec.SetRange(VarRec."Payroll Period", PayLinesRec."Payroll Period");
                            VarRec.SetRange(VarRec."Employee No", PayLinesRec."Employee No");
                            if VarRec.Find('-') then
                                repeat
                                    SendLines(VarRec."E/D Code", VarRec.Amount, VarRec.Quantity, VarRec.Rate);
                                until (VarRec.Next = 0);
                            /******  Overtime & Other VAriables Calculation Ends SGG  **********/

                            /* AAA 02 */

                            PayLinesRec."E/D Code" := EmpGrpLinesRec."E/D Code";
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
                                PayLinesRec."E/D Code" := EmpGrpLinesRec."E/D Code";
                                PayLinesRec.Units := EmpGrpLinesRec.Units;
                                PayLinesRec.Rate := EmpGrpLinesRec.Rate;
                                PayLinesRec.Quantity := EmpGrpLinesRec.Quantity;
                                PayLinesRec.Flag := EmpGrpLinesRec.Flag;
                                PayLinesRec.Amount := EmpGrpLinesRec."Default Amount";
                            end;   /* Rate,Units,Amount,... */

                            if BookGrLinesRec.Get("Posting Group", PayLinesRec."E/D Code")
                            then begin
                                begin
                                    PayLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
                                    PayLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
                                    PayLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                                    PayLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                                    //PayLinesRec."Region Code";:= Employee."Region Code";;
                                    PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
                                    PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";
                                end; /* Debit/Credit accounts*/

                                /*AAA 03 No Dept/Proj from Booking Gr. */

                                if BookGrLinesRec."Transfer Department" then
                                    PayLinesRec."Global Dimension 1 Code" := "Global Dimension 1 Code";
                                if BookGrLinesRec."Transfer Business Units" then
                                    PayLinesRec."Global Dimension 2 Code" := "Global Dimension 2 Code";

                                if (EmpGrpLinesRec."Default Amount" <> 0) or (EDFileRec."Monthly Variable") then begin
                                    if not EDFileRec."OverTime(Y/N)" then PayLinesRec.Validate(PayLinesRec."E/D Code");
                                    /* AAA 04 */
                                    /* AAA 05 */

                                    //inserted To Calculate Prorated Payment begin Based on Employment Date
                                    GetPayDays;

                                    if (Employee."No of Days") <> 0 then PayDays := Employee."No of Days";
                                    if (PayDays <> 0) and (EDFileRec.Prorate) then begin
                                        if PayDays > MonthlyDays then begin
                                            if (Date2DMY(Employee."Employment Date", 2) + 1) = Date2DMY(PayPeriodRec."Start Date", 2) then
                                                "day Employeed" := DMY2Date(1, (Date2DMY(PayPeriodRec."Start Date", 2))) - Employee."Employment Date";
                                            if PayDays > (MonthlyDays + "day Employeed") then
                                                if not Confirm('Excess of Payment Days Specified for staff is More Than Carried Forward day(s)\\ Continue Calculation')
                                                  then
                                                    CurrReport.Skip;
                                        end;
                                        // and (EDFileRec."Control Type" = EDFileRec."Control Type"::Basic)
                                        if not (EDFileRec."Absent Deduction") then
                                            PayLinesRec.Amount := Round(PayDays / MonthlyDays * PayLinesRec.Amount);
                                    end;
                                    if PayLinesRec.Insert(true) then;
                                end;
                            end;
                        until (EmpGrpLinesRec.Next = 0);
                        Employee."No of Days" := 0;
                        Employee.Modify;
                    end;

                    //Loan system START

                    PayLinesRec.LockTable(false);
                    PayLinesRec.SetRange("E/D Code");

                    LoanRec.SetCurrentKey(LoanRec."Staff No.", LoanRec."Start Period", LoanRec."Open(Y/N)", LoanRec."Suspended(Y/N)");
                    LoanRec.SetRange(LoanRec."Staff No.", Employee."No.");
                    LoanRec.SetFilter(LoanRec."Start Period", '<=%1', PayPeriodRec."Period Code");
                    LoanRec.SetRange(LoanRec."Open(Y/N)", true);
                    LoanRec.SetRange("Suspended(Y/N)", false);
                    if LoanRec.Find('-') then
                        repeat
                            LoanRec.CalcFields(LoanRec."Remaining Amount");
                            if LoanRec."Remaining Amount" > 0 then begin

                                PayLinesRec.Init;
                                PayLinesRec."Payroll Period" := PayHeadRec."Payroll Period";
                                PayLinesRec."Employee No" := PayHeadRec."Employee No";
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
                                PayLinesRec.Quantity := EmpGrpLinesRec.Quantity;
                                PayLinesRec.Flag := EmpGrpLinesRec.Flag;

                                if LoanRec."Monthly Repayment" > LoanRec."Remaining Amount" then
                                    PayLinesRec.Amount := LoanRec."Remaining Amount" else
                                    PayLinesRec.Amount := LoanRec."Monthly Repayment";
                                PayLinesRec."Debit Acc. Type" := LoanRec."Counter Acct. Type";
                                PayLinesRec."Credit Acc. Type" := LoanRec."Acct. Type";
                                PayLinesRec."Debit Account" := LoanRec."Counter Acct. No.";

                                if LoanRec."Acct. No." <> '' then
                                    PayLinesRec."Credit Account" := LoanRec."Acct. No."
                                else
                                    PayLinesRec."Credit Account" := '';
                                //     PayLinesRec.Region    := Employee."Business Unit";
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

                    Commit;
                end;

            end;

            trigger OnPostDataItem()
            begin
                /* EdRec.RESET;
                   EdRec.SETRANGE(EdRec."Monthly Variable",TRUE);
                   IF EdRec.FIND('-') THEN
                     REPEAT
                       IF EdRec."E/D Code"<>'' THEN SendLines(EdRec."E/D Code",0,0,0);
                     UNTIL(EdRec.NEXT=0);
             */

            end;

            trigger OnPreDataItem()
            begin
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
        PayPeriodRec.Get(PayPeriodRec."Period Code");
        PayPeriodRec.SetRange("Period Code", PayPeriodRec."Period Code");
        EmpGrpLinesRec.SetRange("Employee Group");
        EmpGrpLinesRec.SetRange("E/D Code");
        PayLinesRec.SetRange("Payroll Period");
        PayLinesRec.SetRange("Employee No");
        PayLinesRec.SetRange("E/D Code");
    end;

    var
        "day Employeed": Integer;
        PayPeriodRec: Record "Payroll-Periods.";
        PayHeadRec: Record "Payroll-Payslip Header.";
        PayLinesRec: Record "Payroll-Payslip Lines.";
        EmpGrpLinesRec: Record "Payroll-Employee Group Lines.";
        EDFileRec: Record "Payroll ED Codes.";
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
        InfoCounter: Integer;
        Window: Dialog;
        LoanRec: Record "Loan.";
        EdgropRec: Record "Payroll-Employee Group Lines.";
        EdRec: Record "Payroll ED Codes.";
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
        PaySetup: Record "Asl Payroll Setup";
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
        EDRec2: Record "Payroll ED Codes.";

    [Scope('Internal')]
    procedure partsalary(nodays: Integer; emplomonth: Integer) prodays: Integer
    begin
        if emplomonth = PayMonth then begin
            if StrLen(Format(nodays)) = 1 then Evaluate(daydig, ('0' + Format(nodays)));
            if StrLen(Format(emplomonth)) = 1 then Evaluate(monthdig, ('0' + Format(emplomonth)));

            Daysinmonth := Date2DMY(dayin, 1);

        end;
    end;

    [Scope('Internal')]
    procedure SendLines(EDToSend: Code[10]; EDAmount: Decimal; EDQty: Decimal; EDRate: Decimal)
    begin
        /*Use The Following Lines to send to Payslip Lines*/

        if PayLinesRec.Get(PayPeriodRec."Period Code", Employee."No.", EDToSend) then begin
            PayLinesRec."E/D Code" := EDToSend;
            if EDRec2.Get(EDToSend) then PayLinesRec."Payslip Text" := EDRec2."Payslip Text";
            PayLinesRec.Validate(PayLinesRec.Amount, Round(EDAmount, 0.01));
            PayLinesRec."Payroll Period" := PayHeadRec."Payroll Period";
            PayLinesRec."Employee No" := PayHeadRec."Employee No";
            PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
            PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
            PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
            PayLinesRec.Units := EDFileRec.Units;
            PayLinesRec.Rate := EDRate;
            PayLinesRec.Quantity := EDQty;

            PayLinesRec."Overline Column" := EDFileRec."Overline Column";
            PayLinesRec."Payslip Print Column" := EDFileRec."Payslip Print Column";
            PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
            PayLinesRec.Flag := EmpGrpLinesRec.Flag;
            PayLinesRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
            PayLinesRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
            PayLinesRec.Modify;
        end
        else begin
            PayLinesRec.Init;
            PayLinesRec."Payroll Period" := PayPeriodRec."Period Code";
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
            PayLinesRec.Quantity := EmpGrpLinesRec.Quantity;
            PayLinesRec.Flag := EmpGrpLinesRec.Flag;
            PayLinesRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
            PayLinesRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
            PayLinesRec.Insert;
        end;


        /*
        {Use The Following Lines to send to Employee Group Lines}
        
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
          END;
        */

    end;

    [Scope('Internal')]
    procedure GetPayDays(): Integer
    begin
        /*PayPeriodRec.GET(PayHeadRec."Payroll Period");
        EmptDate := Employee."Employment Date";
        DisengDate := Employee."Termination Date";
        IF (EmptDate=0D) THEN
          BEGIN
           MESSAGE('Employee No %1 must have an Employment Date',Employee."No.");
           CurrReport.SKIP;
          END;
        
        PayDays := 0;
        IF (EmptDate > PayPeriodRec."Start Date") AND (EmptDate < PayPeriodRec."End Date")THEN
          BEGIN
           IF (DisengDate<>0D) THEN
             BEGIN
               IF (DisengDate > PayPeriodRec."Start Date") AND (DisengDate < PayPeriodRec."End Date") THEN
                 PayDays := GenPCode.GetNoOfDays(EmptDate,DisengDate)
             END
           ELSE
             BEGIN
               PayDays := GenPCode.GetNoOfDays(PayPeriodRec."Start Date",EmptDate);
             END;
            END
        ELSE
          IF (DisengDate > PayPeriodRec."Start Date") AND (DisengDate < PayPeriodRec."End Date") THEN
            PayDays := GenPCode.GetNoOfDays(PayPeriodRec."Start Date",DisengDate);*/ // u

        //MESSAGE(FORMAT(PayDays));
        //error(FORMAT(PayDays));

    end;

    [Scope('Internal')]
    procedure BIN()
    begin
        /* AAA 01
         EdRec.RESET;
         EdRec.SETRANGE(EdRec."Monthly Variable",TRUE);
         IF EdRec.FIND('-') THEN
         REPEAT
           SendLines(EdRec."E/D Code",0,0,);
         UNTIL(EdRec.NEXT=0);
        */
        /* AAA 02
         EDFileRec.RESET;
         EDFileRec.SETRANGE(EDFileRec."Payslip Print Column",EDFileRec."Payslip Print Column"::"Total Earning");
         IF EDFileRec.FIND('-') THEN
         TaxableED := EDFileRec."E/D Code";

         EDFileRec.RESET;
         EDFileRec.SETRANGE(EDFileRec."Payslip Group ID",EDFileRec."Payslip Group ID"::"TAX DEDUCTED");
         IF EDFileRec.FIND('-') THEN TaxED := EDFileRec."E/D Code";

         //SendLines(TaxFreeED,0,0,0);
         //SendLines(TaxED,0,0,0);
         //SendLines(TaxFreeED,Employee."Annual Tax Freepay"/12,0,0);

         PaySetup.RESET;
         PaySetup.FIND('-');
        */

        /*AAA 03 No Dept/Proj from Booking Gr.

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

        /* AAA 04
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
*/

        /* AAA 05
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
           END;  */

    end;
}

