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

// ////[Scope('OnPrem')]
// local var
// procedure CheckClosed(): Boolean
// begin
//     /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//     ‚ Return the value of ProllHeader."Closed?" for this Period + Employee       ‚
//     ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/
//      ProllHeader.Get("Payroll Period","Employee No");
//     exit (ProllHeader."Closed?");

// end;

// ////[Scope('OnPrem')]
// procedure CalcTaxAmt(var LDetailsRec: Record "Payroll-Lookup Lines.";TaxTableInput: Decimal): Decimal
// begin
//     /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//     ‚ Returns the tax figure from a table lookup of type Tax                     ‚
//     ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/
//     /* Parameters:
//       by Referrence : The current Lookup detail table record = LDetailsRec.
//                       NB: By referrence so that all delimitations, sortings etc
//                           are still in effect.
//       by value      : The amount to be taxed = TaxTableInput
//     */

//     //MESSAGE('Tax Table Input:' + FORMAT(TaxTableInput));

//     /* Copy all current filters of LookUpRec */
//     PrevLookRec := LDetailsRec;
//     /* COPYFILTERS(LDetailsRec );          */
//     /*BDC
//     PrevLookRec.COPYFILTERS(LDetailsRec);
//     */

//     if  PrevLookRec.Next(-1) = 0 then
//       ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100
//     //ELSE  ReturnAmount := CalcGraduated (LDetailsRec, TaxTableInput);
//     else ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100;

//     if  LDetailsRec.Find( '=') then
//       /*Record found where Lower Amount is equal to TaxTableInput*/
//       if  PrevLookRec.Next(-1) = 0 then
//         ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100
//       else
/* Call function to get the tax amount from the graduated tax table.*/
//  ReturnAmount := CalcGraduated (LDetailsRec, TaxTableInput)
//              ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100
//         else
//         if  LDetailsRec.Find( '>') then
//           /*Record found where Lower Amount is just larger than TaxTableInput.
//            Therefore TaxableInput should be in previus range (= record)*/
//           if  LDetailsRec.Next(-1) = 0 then
//             /* The lowest taxable amount is larger than the input amount */
//             ReturnAmount := 0
//           else
//            // ReturnAmount := CalcGraduated (LDetailsRec, TaxTableInput)
//              ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100
//         else
//           /*TaxableInput is larger than the table's greatest lower amount*/
//           if  LDetailsRec.Next(-1) = 0 then
//             //ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100
//              ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100
//           else
//             /* Call function to get the tax amount from the graduated tax table.*/
//           //  ReturnAmount := CalcGraduated (LDetailsRec, TaxTableInput);
//              ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %")/100;

//         //MESSAGE('Tax Table Output:' + FORMAT(ReturnAmount));
//         exit (ReturnAmount);

//     end;

//     ////[Scope('OnPrem')]
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

//     ////[Scope('OnPrem')]
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

//     ////[Scope('OnPrem')]
//     procedure CalcFactor1(CurrentEntryLine: Record "Payroll-Payslip Lines.")
//     begin
//         /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ If an entry is a contributory factor for the value of another line, then   ‚
//         ‚ compute that other line's value and insert it appropriately                ‚
//         ‚ Parameters :                                                               ‚
//         ‚   CurrentEntryLine        : Current entry line                             ‚
//         ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//         /* Get first record in Entry Lines file for this Employee/Period */
//         ProllEntryRec := CurrentEntryLine;
//          ProllEntryRec.Init;
//          ProllEntryRec.SetRange("Employee No", ProllEntryRec."Employee No");
//          ProllEntryRec.SetRange("Payroll Period", ProllEntryRec."Payroll Period");
//         ProllEntryRec."E/D Code" := '';
//          ProllEntryRec.Find( '>');

//         /* Go through all the entry lines for this Period/Employee record and where
//           the current entry line's value is a factor, calculate that amount. */
//         repeat

//            "E/DFileRec".Get( ProllEntryRec."E/D Code");

//           if "E/DFileRec"."Factor Of" = CurrentEntryLine."E/D Code" then
//           begin

//             FactorRecAmount := ProllEntryRec.Amount;
//             ProllEntryRec.Amount := "CalcFactor1.1" (CurrentEntryLine,
//                                                        ProllEntryRec,"E/DFileRec");
//             /*The new entry in this line should now be used to Compute another and
//             also entries where it is a Factor, therefore set ChangeOthers to True*/
//             if FactorRecAmount <> ProllEntryRec.Amount then
//             begin
//               ProllEntryRec.ChangeOthers := true;
//                ProllEntryRec.Modify;
//             end
//           end;

//         until ( ProllEntryRec.Next(1) = 0);
//         Commit;

//     end;

//     ////[Scope('OnPrem')]
//     procedure "CalcFactor1.1"(CurrLineRec: Record "Payroll-Payslip Lines.";LineToChangeRec: Record "Payroll-Payslip Lines.";EDFileRec: Record "Payroll-E/D Codes."): Decimal
//     begin
//         /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Calculate the amount based on Factor Of and Percentage fields of the file  ‚
//         ‚ E/D file,
//         ‚  Parameters:                                                               ‚
//         ‚    CurrLineRec    : The current entry line record                          ‚
//         ‚    LineToChangeRec: The entry line to be changed.
//         ‚    EDFileRec      : EDFile Record for the E/D Code of LineToChangeRec      ‚
//         ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//         /* If NO is in the flag field return amount to 0 */
//         if (EDFileRec."Yes/No Req.?") and not (LineToChangeRec.Flag) then
//           exit (0);

//         /* Calculate the amount based on values in Table Look Up or Percentage fields
//           of E/D file */
//         if EDFileRec."Table Look Up" = '' then
//           ReturnAmount := (CurrLineRec.Amount * EDFileRec.Percentage) / 100
//         else /* Extract relevant amount from Table Look Up */

//           if not  LookHeaderRec.Get( EDFileRec."Table Look Up") then
//           begin
//             Message ('Table Lookup Not Registered Yet');
//             exit (LineToChangeRec.Amount)
//           end
//           else begin /* Table lookup exists*/

//             /* Filter Lookupline records to those of current Table Id Only*/
//             LookLinesRec.TableId := EDFileRec."Table Look Up";
//              LookLinesRec.SetRange(TableId, EDFileRec."Table Look Up");

//             /* Depending on whether input parameter is code or numeric, set dbSETRANGE
//               appropraitely and initialise the record to use as a parameter to
//               dbFINDREC */
//             case LookHeaderRec.Type of
//             0,2:
//               begin
//                 /* Lookup table is searched with numeric variables */
//                 if CurrLineRec.Amount > -1 then begin
//                   LookLinesRec."Lower Code" := '';
//                   LookLinesRec."Lower Amount" := CurrLineRec.Amount *
//                                                  LookHeaderRec."Input Factor";
//                    LookLinesRec.SetRange("Lower Code",'');
//                 end
//                 else
//                   exit (LookHeaderRec."Min. Extract Amount")
//               end;
//             else  /*Lookup table is searched with variables of type code*/
//               begin
//                 LookLinesRec."Lower Amount" := 0;
//                 LookLinesRec."Lower Code" := CurrLineRec."E/D Code";
//                  LookLinesRec.SetRange("Upper Amount",0);
//                  LookLinesRec.SetRange("Lower Amount",0);
//               end
//             end; /* Case*/

//             case LookHeaderRec.Type of
//             0,1: begin
//                /* Extract amount as follows; First find line where Lower Amount or
//                  Lower Code is just greater than the CurrLineRec then move one line
//                  back.*/

//               if  LookLinesRec.Find( '=') then
//                 ReturnAmount := LookLinesRec."Extract Amount"
//               else
//               if  LookLinesRec.Find( '>') then
//               begin
//                 BackOneRec :=  LookLinesRec.Next( -1);
//                 ReturnAmount := LookLinesRec."Extract Amount";
//               end
//               else
//                 if LookHeaderRec.Type = 0 then begin
//                   /*CurrLineRec.Amount is > than the table's greatest "Lower amount"*/
//                   if  LookLinesRec.Find( '+') then
//                     ReturnAmount := LookLinesRec."Extract Amount"
//                   else
//                     exit (LineToChangeRec.Amount)
//                 end
//                 else
//                   /*CurrLineRec.EDCode is > than the table's greatest "Lower code"*/
//                   exit (LineToChangeRec.Amount);
//               end;

//             2: /*  Extract amount from tax table*/
//                   ReturnAmount := (CalcTaxAmt (LookLinesRec, PreTaxCalc *
//                                                LookHeaderRec."Input Factor")) *
//                                                LookHeaderRec."Output Factor";

//                end; /* Case */

//             /* Adjust the amount as per the maximum/minimum in the LookupHeader*/
//             if (LookHeaderRec."Max. Extract Amount" <> 0) and
//                (ReturnAmount > LookHeaderRec."Max. Extract Amount") then
//               ReturnAmount := LookHeaderRec."Max. Extract Amount"
//             else
//               if (ReturnAmount < LookHeaderRec."Min. Extract Amount") then
//                 ReturnAmount := LookHeaderRec."Min. Extract Amount";

//             /* Check for rounding */
//             if LookHeaderRec."Rounding Precision" = 0 then
//               RoundPrec := 0.01
//             else
//               RoundPrec := LookHeaderRec."Rounding Precision";
//             case LookHeaderRec."Rounding Direction" of
//               1: RoundDir := '>';
//               2: RoundDir := '<';
//               else RoundDir := '=';
//             end;
//             ReturnAmount := Round (ReturnAmount, RoundPrec, RoundDir);

//              LookLinesRec.Reset
//           end;

//         /* Adjust amount as per maximum/minimum set in the E/D file. This will overide
//           any max/min. values set in the Table Lookup Header file*/
//         ReturnAmount := ChkRoundMaxMin (EDFileRec, ReturnAmount);

//         exit (ReturnAmount);

//     end;

//     ////[Scope('OnPrem')]
//     procedure ChangeAllOver(CurrentRec: Record "Payroll-Payslip Lines.";CurrWasDeleted: Boolean)
//     begin
//         /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Go through all the lines and where a line is supposed to Change others    ‚
//         ‚ then change those others.                                                 ‚
//         ‚ Parameters :                                                              ‚
//         ‚   CurrentRec      : Current Entry line                                    ‚
//         ‚   CurrWasDeleted  : True if the current record was deleted                ‚
//         ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//         ChangeOthersRec := CurrentRec;
//          ChangeOthersRec.SetRange("Payroll Period", CurrentRec."Payroll Period");
//          ChangeOthersRec.SetRange("Employee No", CurrentRec."Employee No");
//          ChangeOthersRec.SetRange(ChangeOthers, true);

//         ChangeOthersRec."E/D Code" := '';
//         if not  ChangeOthersRec.Find( '>') then
//           exit;

//         /*Set the maximum number of times the Amount can be changed for any one line.
//          This will be used to ensure that this function does not execute 'forever',
//          when the user has defined 'cyclic' E/Ds*/
//         MaxChangeCount := 50;

//         repeat

//           /* Process the record to change others only if it isn't the deleted one */
//           if not (CurrWasDeleted and (ChangeOthersRec."E/D Code" =
//                                       CurrentRec."E/D Code"))
//           then begin
//             ComputeAgain (ChangeOthersRec, CurrentRec, CurrWasDeleted);
//             CalcFactorAgain (ChangeOthersRec, CurrentRec, CurrWasDeleted);
//           end;
//           ChangeOthersRec.ChangeOthers := false;
//           ChangeOthersRec.ChangeCounter := ChangeOthersRec.ChangeCounter + 1;
//            ChangeOthersRec.Modify;
//           ProllRecStore := ChangeOthersRec;
//           ChangeOthersRec."E/D Code" := '';
//         until ((ProllRecStore.ChangeCounter > MaxChangeCount) or
//                ( ChangeOthersRec.Next(1) = 0));
//         Commit;
//          ChangeOthersRec.SetRange("Payroll Period");
//          ChangeOthersRec.SetRange("Employee No");
//          ChangeOthersRec.SetRange(ChangeOthers);

//         if (ProllRecStore.ChangeCounter > MaxChangeCount) then
//           Message ('The E/D Code %1, / seems to have been defined with CYCLIC' +
//                    ' characteristics', ProllRecStore."E/D Code");

//         exit;

//     end;

//     ////[Scope('OnPrem')]
//     procedure ComputeAgain(ParamLine: Record "Payroll-Payslip Lines.";CurrentRec: Record "Payroll-Payslip Lines.";CurrWasDeleted: Boolean)
//     begin
//         /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Compute values for the E/D specified in the Compute field for the         ‚
//         ‚  Entry Line record passed as a parameter                                  ‚
//         ‚ Parameters :                                                              ‚
//         ‚   ParamLine       : Entry line passed as a parameter                      ‚
//         ‚   CurrentRec      : Current Entry line                                    ‚
//         ‚   CurrWasDeleted  : True if the current record was deleted                ‚
//         ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//          ConstEDFileRec.Get( ParamLine."E/D Code");
//         "E/DFileRec" := ConstEDFileRec;
//         if "E/DFileRec".Compute = '' then
//           exit;

//          ProllEntryRec.Reset;
//          ProllEntryRec.Init;
//          ProllEntryRec.SetRange("Payroll Period", CurrentRec."Payroll Period");
//          ProllEntryRec.SetRange("Employee No", CurrentRec."Employee No");

//         /* If the entry line to be computed does not exist then EXIT */
//         ProllEntryRec := ParamLine;
//         ProllEntryRec."E/D Code" := ConstEDFileRec.Compute;
//         if not  ProllEntryRec.Find( '=') then
//           exit;

//         /* If CurrentRec is to be deleted, then no need to re-compute it */
//         if (CurrWasDeleted and (ProllEntryRec."E/D Code" = CurrentRec."E/D Code"))
//         then exit;

//         /*
//           Initialise the variable to store the computed total. If a record was
//           deleted then initialise to 0. Otherwise if the current line (i.e that
//           entered by the user) also contributes to the computed line then we
//           initialise the computed total to that amount
//         */
//          "E/DFileRec".Get( CurrentRec."E/D Code");
//         if CurrWasDeleted then
//           ComputedTotal := 0
//         else
//          if "E/DFileRec".Compute = ConstEDFileRec.Compute then begin
//            if "E/DFileRec"."Add/Subtract" = 2 then
//             /* Subtract */
//             ComputedTotal := -  CurrentRec.Amount
//            else
//             /* Add */
//             ComputedTotal := CurrentRec.Amount;
//          end
//          else
//           ComputedTotal := 0;

//         /*Get first record in P.Roll Entry file for this Employee group*/
//         ProllEntryRec := ParamLine;
//         ProllEntryRec."E/D Code" := '';
//          ProllEntryRec.Find( '>');

//         /* Go through all the entry lines for this Employee group and sum up
//           all those that contribute to the E/D specified in the Compute field for
//           the current entry line */
//         repeat

//           if ProllEntryRec."E/D Code" <> CurrentRec."E/D Code" then begin

//              "E/DFileRec".Get( ProllEntryRec."E/D Code");
//             if "E/DFileRec".Compute = ConstEDFileRec.Compute then
//               if "E/DFileRec"."Add/Subtract" = 2 then
//                 /* Subtract */
//                 ComputedTotal := ComputedTotal - ProllEntryRec.Amount
//               else
//                 /* Add */
//                 ComputedTotal := ComputedTotal + ProllEntryRec.Amount

//           end
//         until ( ProllEntryRec.Next(1) = 0);

//         /* Move the computed amount to the line whose E/D Code is the one that has
//           just been calculated.*/
//          ProllEntryRec.Init;
//         ProllEntryRec."E/D Code" := ConstEDFileRec.Compute;
//          "E/DFileRec".Get( ConstEDFileRec.Compute);
//         /*dbTRANSFERFIELDS ("E/DFileRec", ProllEntryRec);*/

//         /*Check for rounding, Maximum and minimum */
//         ComputedTotal := ChkRoundMaxMin ("E/DFileRec", ComputedTotal);

//         /*ProllEntryRec.Amount := ComputedTotal;
//         ProllRecStore := ProllEntryRec;*/

//          ProllEntryRec.LockTable();
//         if  ProllEntryRec.Find( '=') then
//         begin
//           /*FactorRecAmount := ProllEntryRec.Amount;*/
//           /*ProllEntryRec := ProllRecStore;*/

//           /*The new entry in this line should now be used to Compute another and
//            also entries where it is a Factor, therefore set ChangeOthers to True*/
//           if ProllEntryRec.Amount <> ComputedTotal then
//           begin
//             ProllEntryRec.Amount := ComputedTotal;
//             ProllEntryRec.ChangeOthers := true;
//              ProllEntryRec.Modify
//           end
//         end;
//         Commit;

//          ProllEntryRec.Reset;

//     end;

//     ////[Scope('OnPrem')]
//     procedure CalcFactorAgain(ParamLine: Record "Payroll-Payslip Lines.";CurrentRec: Record "Payroll-Payslip Lines.";CurrWasDeleted: Boolean)
//     begin
//         /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ If a change in a line due to the entry or change to another entry is a     ‚
//         ‚ contributory factor for the value of another line, then  compute that      ‚
//         ‚other line's value and insert it appropriately                              ‚
//         ‚ Parameters :                                                               ‚
//         ‚   ParamLine         : Line whose value should change others                ‚
//         ‚   CurrentRec        : Current Entry line                                   ‚
//         ‚   CurrWasDeleted    : True if CurrentRec is to be deleted                  ‚
//         ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

//         /*Get first record in Employee Group Lines file for this Employee group*/
//          ProllEntryRec.Reset;
//          ProllEntryRec.Init;
//          ProllEntryRec.SetRange("Payroll Period", ParamLine."Payroll Period");
//          ProllEntryRec.SetRange("Employee No", ParamLine."Employee No");
//         ProllEntryRec := ParamLine;
//         ProllEntryRec."E/D Code" := '';
//         if not  ProllEntryRec.Find( '>') then
//           exit;

//         /* Go through all the entry lines for this Employee Group record and where
//           the current entry line's value is a factor, calculate that amount. */
//         repeat

//            "E/DFileRec".Get( ProllEntryRec."E/D Code");

//           if "E/DFileRec"."Factor Of" = ParamLine."E/D Code" then
//           begin

//             FactorRecAmount := ProllEntryRec.Amount;
//             if (CurrWasDeleted and (ParamLine."E/D Code" = CurrentRec."E/D Code"))
//             then
//               ProllEntryRec.Amount := 0
//             else
//               ProllEntryRec.Amount := "CalcFactor1.1" (ParamLine, ProllEntryRec,
//                                                        "E/DFileRec");

//             /*The new entry in this line should now be used to Compute another and
//              also entries where it is a Factor, therefore set ChangeOthers to True*/
//             if FactorRecAmount <> ProllEntryRec.Amount then
//             begin
//               ProllEntryRec.ChangeOthers := true;
//                ProllEntryRec.Modify
//             end
//           end;

//         until ( ProllEntryRec.Next(1) = 0);
//         Commit;

//          ProllEntryRec.Reset;

//     end;

//     ////[Scope('OnPrem')]
//     procedure ResetChangeFlags(CurrentRec: Record "Payroll-Payslip Lines.")
//     begin
//         /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
//         ‚ Reset ChangeOthers to false for all lines in this Period/Employee          ‚
//         ‚ Parameters :                                                               ‚
//         ‚   CurrentRec  : Current entry line                                         ‚
//         ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/
//         /*Get first record in Employee Group Lines file for this Employee group*/
//         ProllEntryRec := CurrentRec;
//          ProllEntryRec.Init;
//          ProllEntryRec.SetRange("Payroll Period", CurrentRec."Payroll Period");
//          ProllEntryRec.SetRange("Employee No", CurrentRec."Employee No");
//         ProllEntryRec."E/D Code" := '';
//          ProllEntryRec.Find( '>');

//         /* Reset ChangeOthers for this Employee Group */
//         repeat

//           ProllEntryRec.ChangeOthers   := false;
//           ChangeOthersRec.ChangeCounter := 0;
//         /*BDC - Do not modify the one to be deleted*/
//           if ProllEntryRec."E/D Code" <> CurrentRec."E/D Code" then
//            ProllEntryRec.Modify;

//         until ( ProllEntryRec.Next(1) = 0);
//         Commit;

//          ProllEntryRec.Reset;

//     end;

//     ////[Scope('OnPrem')]
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

//     ////[Scope('OnPrem')]
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

//     //[Scope('OnPrem')]
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

//     ////[Scope('OnPrem')]
//     local procedure GetParam2()
//     begin
//         PaySetup.Reset;
//         PaySetup.Find('-');
//         DaysInMonth := PaySetup."Monthly Working Days";
//         HrsInDay := PaySetup."Daily Working Hours";

//         if ("Employee No" <>'') then BasicPay := EmployeeRec.GetBasic("Employee No");
//     end;

//     //[Scope('OnPrem')]
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
