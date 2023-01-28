            DataItemTableView = SORTING("No.") WHERE(Blocked = CONST(false), Suspended = CONST(false), "No." = const('E000004'));

trigger OnOpenPage()
        begin
            PayrollPeriod.Get('2022-11');
        end;

        procedure ShowPayslipLnValue(PaySlipLn: Record "Payroll-Payslip Lines."; Modifycount: integer)
    begin
        case PayslipLn."E/D Code" of
            '4000', '5800', '6400':
                message('%1: %2 Modify %3', PayslipLn."E/D Code", PayslipLn.Amount, Modifycount)  //Show current value
        end;
    end;






// profile Payslip 
// {
//     Description = 'My Description';
//     RoleCenter = "Blank Role Center";
//     Customizations = ;
// }


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