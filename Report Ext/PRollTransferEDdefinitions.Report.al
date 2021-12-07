report 50058 "PRoll; Transfer ED definitions"
{
    // Transfers new specified E/D(s) to the payroll entry file from the E/D file.
    // The line for the ED is only transfered if it does not already exist. If the
    // Booking details for the new E/D(s) are found they are also transfered.

    ProcessingOnly = true;

    dataset
    {
        dataitem("Payroll-E/D Codes."; "Payroll ED Codes.")
        {
            DataItemTableView = SORTING ("E/D Code");
            RequestFilterFields = "E/D Code";
            dataitem(Employee; Employee)
            {
                DataItemTableView = SORTING ("No.");
                RequestFilterFields = "No.", "Posting Group", "Employee Group", "Pension Scheme";
                dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
                {
                    DataItemLink = "Employee No" = FIELD ("No.");
                    DataItemTableView = SORTING ("Employee No", "Payroll Period");
                    RequestFilterFields = "Payroll Period";

                    trigger OnAfterGetRecord()
                    begin
                        Window.Update(3, "Payroll Period");
                        InfoCounter := InfoCounter + 1;
                        Window.Update(4, InfoCounter);
                        if not "Closed?" then
                            if not EntryLineRec.Get("Payroll Period", "Employee No",
                                         "Payroll-E/D Codes."."E/D Code") then begin
                                EntryLineRec.Init;
                                begin
                                    EntryLineRec."Payroll Period" := "Payroll Period";
                                    EntryLineRec."Employee No" := "Employee No";
                                end;
                                EntryLineRec.Validate(EntryLineRec."E/D Code", "Payroll-E/D Codes."."E/D Code");
                                /* Transfer Units, Rate, Payslip Group ID. and Pos in Payslip Group */
                                begin
                                    EntryLineRec."Payslip Group ID" := "Payroll-E/D Codes."."Payslip Group ID";
                                    EntryLineRec."Pos. In Payslip Grp." := "Payroll-E/D Codes."."Pos. In Payslip Grp.";
                                    EntryLineRec."Payslip appearance" := "Payroll-E/D Codes."."Payslip appearance";
                                    EntryLineRec.Units := "Payroll-E/D Codes.".Units;
                                    EntryLineRec.Rate := "Payroll-E/D Codes.".Rate;
                                    EntryLineRec."Overline Column" := "Payroll-E/D Codes."."Overline Column";
                                    EntryLineRec."Underline Amount" := "Payroll-E/D Codes."."Underline Amount";
                                    EntryLineRec."Payslip Text" := "Payroll-E/D Codes."."Payslip Text";

                                end;

                                /* Calculate the amount if neither quantities nor yes flag are required*/
                                if (EntryLineRec.Units = '') and not ("Payroll-E/D Codes."."Yes/No Req.?")
                                then
                                    EntryLineRec.Amount := CalcAmount("Payroll-E/D Codes.", EntryLineRec,
                                                           EntryLineRec.Amount);

                                /* Transfer from Booking Group Lines */
                                if BookGrLinesRec.Get(Employee."Posting Group",
                                            EntryLineRec."E/D Code") then begin
                                    begin
                                        EntryLineRec."Debit Account" := BookGrLinesRec."Debit Account No.";
                                        EntryLineRec."Credit Account" := BookGrLinesRec."Credit Account No.";
                                        EntryLineRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                                        EntryLineRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                                        EntryLineRec."Global Dimension 1 Code" := BookGrLinesRec."Global Dimension 1 Code";
                                        EntryLineRec."Global Dimension 2 Code" := BookGrLinesRec."Global Dimension 2 Code";
                                    end;
                                    if not BookGrLinesRec."Transfer Department" then
                                        EntryLineRec."Global Dimension 1 Code" := ''
                                    else
                                        if EntryLineRec."Global Dimension 1 Code" = '' then
                                            EntryLineRec."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";

                                    if not BookGrLinesRec."Transfer Business Units" then
                                        EntryLineRec."Global Dimension 2 Code" := ''
                                    else
                                        if EntryLineRec."Global Dimension 2 Code" = '' then
                                            EntryLineRec."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";

                                    if BookGrLinesRec."Debit Acc. Type" = 1 then
                                        if EntryLineRec."Debit Account" = '' then
                                            if Employee."SAM Number" <> '' then
                                                EntryLineRec."Debit Account" := Employee."SAM Number";

                                    if BookGrLinesRec."Credit Acc. Type" = 1 then
                                        if EntryLineRec."Credit Account" = '' then
                                            if Employee."SAM Number" <> '' then
                                                EntryLineRec."Credit Account" := Employee."SAM Number";
                                end;
                                EntryLineRec.Insert;
                            end;

                    end;

                    trigger OnPreDataItem()
                    begin
                        //EntryLineRec.LOCKTABLE( FALSE);
                        EntryLineRec.Reset;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    if Employee.Blocked then CurrReport.Skip; //Added by Adam to skip Blocked Employees
                    Window.Update(2, "No.");
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Window.Update(1, "E/D Code");
            end;

            trigger OnPreDataItem()
            begin
                Window.Open('Current E/D   #1####\' +
                            'Current Employee Number    #2####\' +
                            'Current Period    #3#####\' +
                            'Counter   #4###');
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

    var
        EntryLineRec: Record "Payroll-Payslip Lines.";
        ProllRecStore: Record "Payroll-Payslip Lines.";
        ProllFactorRec: Record "Payroll-Payslip Lines.";
        ReturnAmount: Decimal;
        IsComputed: Boolean;
        "E/DFileRec": Record "Payroll ED Codes.";
        AmtToAdd: Decimal;
        InputAmount: Decimal;
        LookHeaderRec: Record "Payroll-Lookup Header.";
        LookLinesRec: Record "Payroll-Lookup Lines.";
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
        BackOneRec: Integer;
        RoundPrec: Decimal;
        RoundDir: Text[1];
        PrevLookRec: Record "Payroll-Lookup Lines.";
        InfoCounter: Integer;
        Window: Dialog;
        TMPamt: Decimal;

    [Scope('Internal')]
    procedure CalcAmount(EDFileRec: Record "Payroll ED Codes."; EntryLineRec: Record "Payroll-Payslip Lines."; EntryLineAmount: Decimal): Decimal
    begin
        /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
        ‚ Calculate the amount based on Factor Of and Percentage fields in the file  ‚
        ‚ E/D file, alternatively calculate if the current line is computed by others‚
        ‚  Parameters:                                                               ‚
        ‚    EDFileRec    : EDFile Record for the E/D Code of the current entry line ‚
        ‚    EntryLineRec : The current entry line record                            ‚
        ‚    EntryLineAmount: The amount in the current entry line. Note this        ‚
        ‚    parameter is important if this trigger is called from the SAVE trigger  ‚
        ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

        /* If Factor Of is Nil then do not change then check if amount is computed by
          others*/
        if EDFileRec."Factor Of" = '' then
            if not AmountIsComputed(ReturnAmount, EntryLineRec, EDFileRec,
                                     EntryLineAmount) then
                exit(EntryLineRec.Amount)
            else begin
                /*Check for rounding, Maximum and minimum */
                ReturnAmount := ChkRoundMaxMin(EDFileRec, ReturnAmount);
                exit(ReturnAmount);
            end;

        /* Get the record from the current file based on Factor Of */
        if not ProllFactorRec.Get(EntryLineRec."Payroll Period",
                         EntryLineRec."Employee No", EDFileRec."Factor Of") then
            exit(EntryLineRec.Amount)
        else
            /* If this 'Factor of' entry record is marked then this trigger was called
              from this 'Fator of' record, therefore ensure the amount to be used is
              the updated amount*/
            if ProllFactorRec.Mark then
                ProllFactorRec.Amount := EntryLineAmount;

        /* Calculate the amount based on values in Table Look Up or Percentage fields
          of E/D file */
        if EDFileRec."Table Look Up" = '' then
            ReturnAmount := (ProllFactorRec.Amount * EDFileRec.Percentage) / 100
        else /* Extract relevant amount from Table Look Up */

            if not LookHeaderRec.Get(EDFileRec."Table Look Up") then begin
                Message('Table Lookup Not Registered Yet');
                exit(EntryLineRec.Amount)
            end
            else begin /* Table lookup exists*/

                /* Filter Lookupline records to those of current Table Id Only*/
                LookLinesRec.TableId := EDFileRec."Table Look Up";
                LookLinesRec.SetRange(TableId, EDFileRec."Table Look Up");

                /* Depending on whether input parameter is code or numeric, set dbSETRANGE
                  appropraitely and initialise the record to use as a parameter to
                  dbFINDREC */
                case LookHeaderRec.Type of
                    0, 2:
                        begin
                            /* Lookup table is searched with numeric variables */
                            if ProllFactorRec.Amount > -1 then begin
                                LookLinesRec."Lower Code" := '';
                                InputAmount := ProllFactorRec.Amount * LookHeaderRec."Input Factor";
                                LookLinesRec."Lower Amount" := InputAmount;
                                LookLinesRec.SetRange("Lower Code", '');
                            end
                            else
                                exit(LookHeaderRec."Min. Extract Amount")
                        end;
                    else  /*Lookup table is searched with variables of type code*/
                      begin
                            LookLinesRec."Lower Amount" := 0;
                            LookLinesRec."Lower Code" := EDFileRec."E/D Code";
                            LookLinesRec.SetRange("Upper Amount", 0);
                            LookLinesRec.SetRange("Lower Amount", 0);
                        end
                end; /* Case*/

                case LookHeaderRec.Type of
                    0, 1:
                        begin
                            /* Extract amount as follows; First find line where Lower Amount or
                              lower code is just greater than the Factor Amount then move one
                              line back.*/

                            if LookLinesRec.Find('=') then
                                ReturnAmount := LookLinesRec."Extract Amount"
                            else
                                if LookLinesRec.Find('>') then begin
                                    BackOneRec := LookLinesRec.Next(-1);
                                    ReturnAmount := LookLinesRec."Extract Amount";
                                end
                                else
                                    if LookHeaderRec.Type = 0 then begin
                                        /*'Factor' Amount is > than the table's greatest "Lower amount"*/
                                        if LookLinesRec.Find('+') then
                                            ReturnAmount := LookLinesRec."Extract Amount";
                                    end
                                    else
                                        exit(EntryLineRec.Amount);
                        end;

                    2: /*  Extract amount from tax table*/
                        ReturnAmount := (CalcTaxAmt(LookLinesRec, InputAmount)) *
                                        LookHeaderRec."Output Factor";
                end; /* Case */

                /* Adjust the amount as per the maximum/minimum in the LookupHeader*/
                if (LookHeaderRec."Max. Extract Amount" <> 0) and
                   (ReturnAmount > LookHeaderRec."Max. Extract Amount") then
                    ReturnAmount := LookHeaderRec."Max. Extract Amount"
                else
                    if (ReturnAmount < LookHeaderRec."Min. Extract Amount") then
                        ReturnAmount := LookHeaderRec."Min. Extract Amount";

                /* Check for rounding */
                if LookHeaderRec."Rounding Precision" = 0 then
                    RoundPrec := 0.01
                else
                    RoundPrec := LookHeaderRec."Rounding Precision";
                case LookHeaderRec."Rounding Direction" of
                    1:
                        RoundDir := '>';
                    2:
                        RoundDir := '<';
                    else
                        RoundDir := '=';
                end;
                ReturnAmount := Round(ReturnAmount, RoundPrec, RoundDir);

                LookLinesRec.Reset
            end;

        /*Check for rounding, Maximum and minimum */
        ReturnAmount := ChkRoundMaxMin(EDFileRec, ReturnAmount);

        exit(ReturnAmount);

    end;

    [Scope('Internal')]
    procedure AmountIsComputed(var ReturnAmount: Decimal; EntryLineRec: Record "Payroll-Payslip Lines."; EDFileRec: Record "Payroll ED Codes."; NewAmount: Decimal): Boolean
    begin
        /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
        ‚ Check for values that should COMPUTE the amount for the P.Roll Entry      ‚
        ‚ Line record.                                                              ‚
        ‚ Return:                                                                   ‚
        ‚   If there are entries for the employee/period that compute the value     ‚
        ‚   then return TRUE else return FALSE                                      ‚
        ‚ Parameters :                                                              ‚
        ‚   ReturnAmount:  The computed amount, by refference                       ‚
        ‚   EntryLineRec:  The P.Roll Entry record whose value is to be computed    ‚
        ‚   EDFileRec   :  The E/D file record of the E/D of the P.Roll Entry Record‚
        ‚   NewAmount   :  The new calculated or entered amount in the current rec. ‚
        ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

        ProllRecStore := EntryLineRec;

        /*Get first record in P.Roll Entry file for this Period/Employee combination*/
        ProllRecStore.SetRange("Payroll Period", EntryLineRec."Payroll Period");
        ProllRecStore.SetRange("Employee No", EntryLineRec."Employee No");
        ProllRecStore."E/D Code" := '';
        if not ProllRecStore.Find('>') then
            exit(false);

        /* Initialise the variable to store the computed total. */
        ReturnAmount := 0;
        IsComputed := false;

        /* Go through all the entry lines for this Period/Employee record and sum up
          all those that contribute to the E/D of the given payroll entry line */
        repeat
            "E/DFileRec".Get(ProllRecStore."E/D Code");
            if "E/DFileRec".Compute = EntryLineRec."E/D Code" then begin

                if ProllRecStore.Mark then
                    AmtToAdd := NewAmount
                else
                    AmtToAdd := ProllRecStore.Amount;

                if "E/DFileRec"."Add/Subtract" = 2 then
                    /* Subtract */
              ReturnAmount := ReturnAmount - AmtToAdd
                else
                    /* Add */
              ReturnAmount := ReturnAmount + AmtToAdd;

                IsComputed := true
            end
        until (ProllRecStore.Next(1) = 0);
        exit(IsComputed);

    end;

    [Scope('Internal')]
    procedure ChkRoundMaxMin(EDRecord: Record "Payroll ED Codes."; TheAmount: Decimal): Decimal
    begin
        /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
        ‚ Round an amount and check for Max and Min. Return the amended amount.     ‚
        ‚ Parameters :                                                              ‚
        ‚   EDRecord : The ED file record to use to check Round, Max. and Min       ‚
        ‚   TheAmount: The amounht to Round, and check for Max. and Min             ‚
        ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

        /* Adjust amount as per maximum/minimum set in the E/D file. */
        if (EDRecord."Max. Amount" <> 0) and
           (TheAmount > EDRecord."Max. Amount") then
            TheAmount := EDRecord."Max. Amount"
        else
            if TheAmount < EDRecord."Min. Amount" then
                TheAmount := EDRecord."Min. Amount";

        /* Check for rounding */
        if EDRecord."Rounding Precision" = 0 then
            RoundPrec := 0.01
        else
            RoundPrec := EDRecord."Rounding Precision";
        case EDRecord."Rounding Direction" of
            1:
                RoundDir := '>';
            2:
                RoundDir := '<';
            else
                RoundDir := '=';
        end;
        TheAmount := Round(TheAmount, RoundPrec, RoundDir);

        exit(TheAmount);

    end;

    [Scope('Internal')]
    procedure CalcTaxAmt(var LDetailsRec: Record "Payroll-Lookup Lines."; TaxTableInput: Decimal): Decimal
    begin
        /*””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
        ‚ Returns the tax figure from a table lookup of type Tax                     ‚
        ””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/
        /* Parameters:
          by Referrence : The current Lookup detail table record = LDetailsRec.
                          NB: By referrence so that all delimitations, sortings etc
                              are still in effect.
          by value      : The amount to be taxed = TaxTableInput
        */

        /* Copy all current filters of LookUpRec */
        PrevLookRec := LDetailsRec;
        /*SG** COPYFILTERS(LDetailsRec );
         */


        if LDetailsRec.Find('=') then
            /*Record found where Lower Amount is equal to TaxTableInput*/
          if PrevLookRec.Next(-1) = 0 then
                ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %") / 100
            else
                /* Call function to get the tax amount from the graduated tax table.*/
            ReturnAmount := CalcGraduated(LDetailsRec, TaxTableInput)
        else
            if LDetailsRec.Find('>') then
                /*Record found where Lower Amount is just larger than TaxTableInput.
                 Therefore TaxableInput should be in previus range (= record)*/
          if LDetailsRec.Next(-1) = 0 then
                    /* The lowest taxable amount is larger than the input amount */
            ReturnAmount := 0
                else
                    ReturnAmount := CalcGraduated(LDetailsRec, TaxTableInput)
            else
                /*TaxableInput is larger than the table's greatest lower amount*/
                if LDetailsRec.Next(-1) = 0 then
                    ReturnAmount := (TaxTableInput * LDetailsRec."Tax Rate %") / 100
                else
                    /* Call function to get the tax amount from the graduated tax table.*/
            ReturnAmount := CalcGraduated(LDetailsRec, TaxTableInput);

        exit(ReturnAmount);

    end;

    [Scope('Internal')]
    procedure CalcGraduated(var WantedLookRec: Record "Payroll-Lookup Lines."; InputToTable: Decimal): Decimal
    begin
        /*”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””
        ‚ Returns the tax amount from the graduated tax table.                      ‚
        ‚ Parameters                                                                ‚
        ‚ by reference : The Table Lookup record within which the Taxable amount    ‚
        ‚                falls = WantedLookRec                                      ‚
        ‚                NB: By referrence so that all delimitations, sortings etc  ‚
        ‚                    are still in effect.                                   ‚
        ‚ by value     : The amount to be taxed = InputToTable                      ‚
        ”””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””””*/

        /* Create a copy of the valid Look Up table Record */
        PrevLookRec := WantedLookRec;
        /*SG** COPYFILTERS(WantedLookRec );
        */
        if PrevLookRec.Next(-1) = 0 then
            ReturnAmount := (InputToTable * WantedLookRec."Tax Rate %") / 100
        else begin
            /* Compute tax for the amount of money that is within the range of the
              Wanted Look Up Record then add the Cumulative Tax Payable amount from
              the previous Look Up record*/

            ReturnAmount := (InputToTable - PrevLookRec."Upper Amount");
            ReturnAmount := (ReturnAmount * WantedLookRec."Tax Rate %") / 100;
            ReturnAmount := ReturnAmount + PrevLookRec."Cum. Tax Payable";
        end;
        exit(ReturnAmount);

    end;
}

