codeunit 50039 "PayslipLines"
{
    trigger OnRun()
    begin
    end;
}

//***Case

//MESSAGE('TaxYTD: ' + FORMAT(TaxYTD) + '  ReturnAmount_before : ' +FORMAT(ReturnAmount));

// { Adjust the amount as per the maximum/minimum in the LookupHeader}
//         IF (LookHeaderRec."Max. Extract Amount" <> 0) AND
//            (ReturnAmount > LookHeaderRec."Max. Extract Amount") THEN
//           ReturnAmount := LookHeaderRec."Max. Extract Amount"
//         ELSE
//           IF (ReturnAmount < LookHeaderRec."Min. Extract Amount") THEN
//             ReturnAmount := LookHeaderRec."Min. Extract Amount";

//         { Check for rounding }
//         IF LookHeaderRec."Rounding Precision" = 0 THEN
//           RoundPrec := 0.01
//         ELSE
//           RoundPrec := LookHeaderRec."Rounding Precision";
//         CASE LookHeaderRec."Rounding Direction" OF
//           1: RoundDir := '>';
//           2: RoundDir := '<';
//           ELSE RoundDir := '=';
//         END;
//         ReturnAmount := ROUND (ReturnAmount, RoundPrec, RoundDir);

//          LookLinesRec.RESET
//       END;

//     {Check for rounding, Maximum and minimum }

//     ReturnAmount := ChkRoundMaxMin (EDFileRec, ReturnAmount);

//     //MESSAGE('TaxYTD: ' + FORMAT(TaxYTD) + '  ReturnAmount_After : ' +FORMAT(ReturnAmount));

//     EXIT (ReturnAmount);
//     */
//         case LookHeaderRec.Type of
//         0,2:
//           begin
//             /* Lookup table is searched with numeric variables */
//             if ProllFactorRec.Amount > -1 then begin
//               LookLinesRec."Lower Code" := '';
//               InputAmount := ProllFactorRec.Amount * LookHeaderRec."Input Factor";
//               LookLinesRec."Lower Amount" := InputAmount;
//                LookLinesRec.SetRange("Lower Code",'');
//             end
//             else
//               exit (LookHeaderRec."Min. Extract Amount")
//           end;
//         else  /*Lookup table is searched with variables of type code*/
//           begin
//             LookLinesRec."Lower Amount" := 0;
//             LookLinesRec."Lower Code" := EDFileRec."E/D Code";
//              LookLinesRec.SetRange("Upper Amount",0);
//              LookLinesRec.SetRange("Lower Amount",0);
//           end
//         end; /* Case*/

//         case LookHeaderRec.Type of
//         0,1: begin
//            /* Extract amount as follows; First find line where Lower Amount or
//              lower code is just greater than the Factor Amount then move one
//              line back.*/

//           if  LookLinesRec.Find( '=') then
//             ReturnAmount := LookLinesRec."Extract Amount"
//           else
//           if  LookLinesRec.Find( '>') then begin
//             BackOneRec :=  LookLinesRec.Next( -1);
//             ReturnAmount := LookLinesRec."Extract Amount";
//           end
//           else
//             if LookHeaderRec.Type = 0 then begin
//             /*'Factor' Amount is > than the table's greatest "Lower amount"*/
//               if  LookLinesRec.Find( '+') then
//                 ReturnAmount := LookLinesRec."Extract Amount";
//             end
//             else
//               exit (EntryLineRec.Amount);
//           end;

//         2: /*  Extract amount from tax table*/
//           ReturnAmount := (CalcTaxAmt (LookLinesRec, InputAmount)) *
//                           LookHeaderRec."Output Factor";
//         end; /* Case */

//         /* Adjust the amount as per the maximum/minimum in the LookupHeader*/
//         if (LookHeaderRec."Max. Extract Amount" <> 0) and
//            (ReturnAmount > LookHeaderRec."Max. Extract Amount") then
//           ReturnAmount := LookHeaderRec."Max. Extract Amount"
//         else
//           if (ReturnAmount < LookHeaderRec."Min. Extract Amount") then
//             ReturnAmount := LookHeaderRec."Min. Extract Amount";

//         /* Check for rounding */
//         if LookHeaderRec."Rounding Precision" = 0 then
//           RoundPrec := 0.01
//         else
//           RoundPrec := LookHeaderRec."Rounding Precision";
//         case LookHeaderRec."Rounding Direction" of
//           1: RoundDir := '>';
//           2: RoundDir := '<';
//           else RoundDir := '=';
//         end;
//         ReturnAmount := Round (ReturnAmount, RoundPrec, RoundDir);

//          LookLinesRec.Reset
//       end;

//     /*Check for rounding, Maximum and minimum */
//     ReturnAmount := ChkRoundMaxMin (EDFileRec, ReturnAmount);

//     exit (ReturnAmount);

// end;

// //[Scope('OnPrem')]
// local var
// procedure CheckClosed(): Boolean
// begin
//     /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//     ‚ Return the value of ProllHeader."Closed?" for this Period + Employee       ‚
//     ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/
//      ProllHeader.Get("Payroll Period","Employee No");
//     exit (ProllHeader."Closed?");

// end;

//     //[Scope('OnPrem')]
//     procedure CalcGraduated(var WantedLookRec: Record "Payroll-Lookup Lines.";InputToTable: Decimal): Decimal
//     begin
//         /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Returns the tax amount from the graduated tax table.                      ‚
//         ‚ Parameters                                                                ‚
//         ‚ by reference : The Table Lookup record within which the Taxable amount    ‚
//         ‚                falls = WantedLookRec                                      ‚
//         ‚                NB: By referrence so that all delimitations, sortings etc  ‚
//         ‚                    are still in effect.                                   ‚
//         ‚ by value     : The amount to be taxed = InputToTable                      ‚
//         ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//         /* Create a copy of the valid Look Up table Record */
//         PrevLookRec :=  WantedLookRec;
//          /*BDC
//          COPYFILTERS(WantedLookRec );
//         */

//         //message('Input to Graduated table: ' + FORMAT(InputToTable));
//         //MESSAGE('Rate Percent to Graduated table: ' + FORMAT(WantedLookRec."Tax Rate %"));
//         //message(format(PrevLookRec.count));

//         if  PrevLookRec.Next(-1) = 0 then
//          ReturnAmount := (InputToTable * WantedLookRec."Tax Rate %")/100
//         else
//         begin
//           /* Compute tax for the amount of money that is within the range of the
//             Wanted Look Up Record then add the Cumulative Tax Payable amount from
//             the previous Look Up record*/
//            ReturnAmount :=  (InputToTable - PrevLookRec."Upper Amount");
//            ReturnAmount :=  (ReturnAmount * WantedLookRec."Tax Rate %")/100;
//            ReturnAmount :=  ReturnAmount + PrevLookRec."Cum. Tax Payable";
//         end;
//         //MESSAGE('Output from Graduated Final: ' + FORMAT(ReturnAmount));
//         exit (ReturnAmount);

//     end;

//     //[Scope('OnPrem')]
//     procedure CalcCompute(EntryRecParam: Record "Payroll-Payslip Lines.";AmountInLine: Decimal;"CalledFromEdCode?": Boolean;EDCode: Code[20])
//     begin
//         /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Depending on the value of the Compute field for the E/D File record that  ‚
//         ‚ corresponds to the current P.Roll Entry Line record                       ‚
//         ‚ Parameters :                                                              ‚
//         ‚   EntryRecParam           : Current entry line                            ‚
//         ‚   Amount in current line  : The figure in the amount field in this line   ‚
//         ‚   "CalledFromEdCode?"     : True if the trigger code was called from the  ‚
//         ‚                            "E/D Code" field                               ‚
//         ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//          ConstEDFileRec.Get( EntryRecParam."E/D Code");
//         "E/DFileRec" := ConstEDFileRec;
//         if "E/DFileRec".Compute = '' then
//           exit;

//          ProllEntryRec.Init;
//          ProllEntryRec.SetRange("Payroll Period", EntryRecParam."Payroll Period");
//          ProllEntryRec.SetRange("Employee No", EntryRecParam."Employee No");

//         /* If the entry line to be computed does not exist then EXIT */
//         ProllEntryRec := EntryRecParam;
//         ProllEntryRec."E/D Code" := ConstEDFileRec.Compute;
//         if not  ProllEntryRec.Find( '=') then
//           exit;

//         /* Initialise the variable to store the computed total. Note if the trigger
//           code was called from the "E/D Code" field then that record is a new one.
//           This implies that a search of the records in the file will not find this
//           new record. Therefore for it's amount to be used in the computation
//           we initialise the computed total to that amount*/
//         if "CalledFromEdCode?" then
//         begin
//           if "E/DFileRec"."Add/Subtract" = 2 then
//             /* Subtract */
//             ComputedTotal := - AmountInLine
//           else
//             /* Add */
//             ComputedTotal := AmountInLine
//         end
//         else
//          ComputedTotal := 0;

//         /*Get first record in P.Roll Entry file for this Period/Employee combination*/
//         ProllEntryRec := EntryRecParam;
//         ProllEntryRec."E/D Code" := '';
//          ProllEntryRec.Find( '>');

//         /* Go through all the entry lines for this Period/Employee record and sum up
//           all those that contribute to the E/D specified in the Compute field for
//           the current entry line */
//         repeat
//         begin
//           /*BDC
//             IF  ProllEntryRec.MARK THEN
//             */
//              if  EDCode = ProllEntryRec."E/D Code" then
//             /* We are at the record where the function was called from */
//             AmountToAdd := AmountInLine
//           else
//             AmountToAdd := ProllEntryRec.Amount;

//            "E/DFileRec".Get( ProllEntryRec."E/D Code");
//           if "E/DFileRec".Compute = ConstEDFileRec.Compute then
//             if "E/DFileRec"."Add/Subtract" = 2 then
//               /* Subtract */
//               ComputedTotal := ComputedTotal - AmountToAdd
//             else
//               /* Add */
//               ComputedTotal := ComputedTotal + AmountToAdd;
//         end
//         until ( ProllEntryRec.Next(1) = 0);

//         /* Move the computed amount to the line whose E/D Code is the one that has
//           just been calculated.*/
//          ProllEntryRec.Init;
//         ProllEntryRec."E/D Code" := ConstEDFileRec.Compute;
//          "E/DFileRec".Get( ConstEDFileRec.Compute);
//         /*FTN No Need
//         dbTRANSFERFIELDS ("E/DFileRec", ProllEntryRec);
//         */

//         /*Check for rounding, Maximum and minimum */
//         ComputedTotal := ChkRoundMaxMin ("E/DFileRec", ComputedTotal);

//         /*ProllEntryRec.Amount := ComputedTotal;
//         ProllRecStore := ProllEntryRec;*/
//          ProllEntryRec.LockTable();
//         if  ProllEntryRec.Find( '=') then
//         begin
//           /*ProllRecStore.ChangeOthers := TRUE;
//           ProllRecStore.HasBeenChanged := TRUE;
//           dbMODIFYREC (ProllRecStore);*/
//           ProllEntryRec.Amount := ComputedTotal;
//           ProllEntryRec.ChangeOthers := true;
//           ProllEntryRec.HasBeenChanged := true;
//            ProllEntryRec.Modify;
//         end;
//         Commit;

//          ProllEntryRec.SetRange("Payroll Period");
//          ProllEntryRec.SetRange("Employee No");

//     end;

//     //[Scope('OnPrem')]
//     procedure AmountIsComputed(var ReturnAmount: Decimal;EntryLineRec: Record "Payroll-Payslip Lines.";EDFileRec: Record "Payroll-E/D Codes.";NewAmount: Decimal;EDCode: Code[20]): Boolean
//     begin
//         /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Check for values that should COMPUTE the amount for the P.Roll Entry      ‚
//         ‚ Line record.                                                              ‚
//         ‚ Return:                                                                   ‚
//         ‚   If there are entries for the employee/period that compute the value     ‚
//         ‚   then return TRUE else return FALSE                                      ‚
//         ‚ Parameters :                                                              ‚
//         ‚   ReturnAmount:  The computed amount, by refference                       ‚
//         ‚   EntryLineRec:  The P.Roll Entry record whose value is to be computed    ‚
//         ‚   EDFileRec   :  The E/D file record of the E/D of the P.Roll Entry Record‚
//         ‚   NewAmount   :  The new calculated or entered amount in the current rec. ‚
//         ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//         ProllRecStore := EntryLineRec;

//         /*Get first record in P.Roll Entry file for this Period/Employee combination*/
//          ProllRecStore.SetRange("Payroll Period", EntryLineRec."Payroll Period");
//          ProllRecStore.SetRange("Employee No", EntryLineRec."Employee No");
//         ProllRecStore."E/D Code" := '';
//         if not  ProllRecStore.Find( '>') then
//           exit (false);

//         /* Initialise the variable to store the computed total. */
//         ReturnAmount := 0;
//         IsComputed := false;

//         /* Go through all the entry lines for this Period/Employee record and sum up
//           all those that contribute to the E/D of the given payroll entry line */
//         repeat
//            "E/DFileRec".Get( ProllRecStore."E/D Code");
//           if "E/DFileRec".Compute = EntryLineRec."E/D Code" then begin
//         /*BDC
//             IF  ProllRecStore.MARK THEN
//           */
//             if  ProllRecStore."E/D Code" = EDCode then
//               AmtToAdd := NewAmount
//             else
//               AmtToAdd := ProllRecStore.Amount;

//             if "E/DFileRec"."Add/Subtract" = 2 then
//               /* Subtract */
//               ReturnAmount := ReturnAmount - AmtToAdd
//             else
//               /* Add */
//               ReturnAmount := ReturnAmount + AmtToAdd;

//             IsComputed := true
//           end
//         until ( ProllRecStore.Next(1) = 0);

//         exit (IsComputed);

//     end;

//     //[Scope('OnPrem')]
//     procedure ChangeDueToDelete(DeletedRec: Record "Payroll-Payslip Lines.")
//     begin
//         /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Due to the deleted record, ensure all the other lines are correct.        ‚
//         ‚ Parameters :                                                              ‚
//         ‚   DeletedRec : The current record (= the record to be deleted)            ‚
//         ‚                                                                           ‚
//         ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/
//         /*Get first record in Employee Group Lines file for this Employee group*/
//         ProllEntryRec := DeletedRec;
//          ProllEntryRec.SetRange("Payroll Period", DeletedRec."Payroll Period");
//          ProllEntryRec.SetRange("Employee No", DeletedRec."Employee No");

//         /* If the deleted record was 'COMPUTING' another then make changes */
//          "E/DFileRec".Get( DeletedRec."E/D Code");
//         ProllEntryRec."E/D Code" := "E/DFileRec".Compute;
//         if  ProllEntryRec.Find( '=') then
//           ComputeAgain (DeletedRec, DeletedRec, true);

//         /* If another record is a 'FACTOR OF' the deleted one then make changes */
//         CalcFactorAgain (DeletedRec, DeletedRec, true);

//         /* Due to these changes adjust AMOUNTS in all lines */
//         ChangeAllOver (DeletedRec, true);
//         exit;

//     end;

//

//     [Scope('Onprem')]
//     procedure EDAmountToDate(EmpNo: Code[10];CurPeriod: Code[10];EDCode: Code[10]): Decimal
//     var
//         AmountBack: Decimal;
//     begin

//         if PeriodRec.Get(CurPeriod) then
//           PerStart := PeriodRec."Start Date";

//         CurYear := Date2DMY(PerStart,3);
//         YearStart := CalcDate('-CY',PerStart);

//         PeriodRec.SetRange(PeriodRec."Start Date",YearStart);
//         if PeriodRec.Find('-') then
//           Per1 := PeriodRec."Period Code";

//         EmployeeRec.Get("Employee No");
//         EmployeeRec.SetRange(EmployeeRec."Employee No. Filter","Employee No");
//         EmployeeRec.SetRange("Period Filter",Per1,CurPeriod);
//         EmployeeRec.SetRange("ED Filter",EDCode);

//         EmployeeRec.CalcFields(EmployeeRec.EDAmount);
//         AmountBack := EmployeeRec.EDAmount;

//         //MESSAGE(FORMAT(Per1)+'..'+FORMAT(CurPeriod));
//         //message(EDCode + ' -> ' + format(AmountBack));

//         exit(AmountBack);
//     end;

//     //[Scope('OnPrem')]
//     local procedure GetParam2()
//     begin
//         PaySetup.Reset;
//         PaySetup.Find('-');
//         DaysInMonth := PaySetup."Monthly Working Days";
//         HrsInDay := PaySetup."Daily Working Hours";

//         if ("Employee No" <>'') then BasicPay := EmployeeRec.GetBasic("Employee No");
//     end;

//     [Scope('Onprem')]
//     procedure PreTaxCalc(): Decimal
//     var
//         Ret1: Decimal;
//     begin
//         /////////** Begin Cummulative Tax Calculation **/////////

//         EDRec2.Reset;
//         EDRec2.SetRange(EDRec2."Payslip Group ID",EDRec2."Payslip Group ID"::"TAXABLE PAY");
//         if EDRec2.Find('-') then TaxableED := EDRec2."E/D Code";
//         EDRec2.Reset;
//         EDRec2.SetRange(EDRec2."Payslip Group ID",EDRec2."Payslip Group ID"::"TAX DEDUCTED");
//         if EDRec2.Find('-') then TaxED := EDRec2."E/D Code";

//         PaySetup.Reset;
//         PaySetup.Find('-');
//         TaxfreeED :=  PaySetup."Taxfree Pay ED";

//         CurrTaxable := 0;
//         if TaxableED <> '' then
//           if PayLines2.Get("Payroll Period","Employee No",TaxableED) then
//             CurrTaxable := PayLines2.Amount
//           else
//             Error('Please Indicate the Taxable ED in The ED Table\\'+
//                   'Using the payslip Group ID Field');

//         TaxableYTD := EDAmountToDate("Employee No","Payroll Period",TaxableED);   // + CurrTaxable;
//         TaxYTD     := EDAmountToDate("Employee No","Payroll Period",TaxED);

//         TaxFreeYTD := EDAmountToDate("Employee No","Payroll Period",TaxfreeED);
//         NewEmpRec.Get("Employee No");
//         AmountToTax := TaxableYTD - TaxFreeYTD;

//         // + NewEmpRec."Annual Tax Freepay"/12; //Add Tafree again to Avoid double deduction

//         //MESSAGE(' TaxableYTD:' + FORMAT(TaxableYTD)+' TaxFreeYTD:' + FORMAT(TaxFreeYTD)+'\\'+
//         //        ' TaxYTD:' + FORMAT(TaxYTD)+' AmountToTax:' + FORMAT(AmountToTax));

//         //Ret1 := (CalcTaxAmt (LookLinesRec, AmountToTax * LookHeaderRec."Input Factor")) * LookHeaderRec."Output Factor";

//         //MESSAGE(' Taxable:' + FORMAT(TaxableYTD)+' TaxFreeYTD:' + FORMAT(TaxFreeYTD)+'\\'+
//         //        ' TaxYTD:' + FORMAT(TaxYTD)+' AmountToTax:' + FORMAT(AmountToTax)+'\\'+
//         //        ' ReturnAmount:' + FORMAT(Ret1));

//         exit(AmountToTax);

//         /////////** End  Cummulative Tax Calculation **/////////
//     end;
// }
