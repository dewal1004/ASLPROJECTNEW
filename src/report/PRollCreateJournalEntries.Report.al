report 50061 "PRoll; Create Journal Entries"
{
    // Create General Ledger Lines based on payroll details entries.
    // À””””””””””””””””””””””””””””””””””””
    // ‚ BackGround Information             ‚
    // ””””””””””””””””””””””””””””””””””””¾
    // In the Booking Group File, an E/D Code is linked to a Debit account
    // and a Credit Account.
    // Each the Employee belongs to a certain Booking Group.
    // Each Employee can be linked to a Department and/or a Project in the
    // Finance file
    // À””””””””””””””””””””””””””””””””””””
    // ‚ Calling parameters entered by User ‚
    // ””””””””””””””””””””””””””””””””””””¾
    //  On calling the function the user may enter the following parameters:
    //    Period code    - one or a range
    //    Booking group  - one, a range or all
    //    Employee Codes - one, a range or all
    //    Name of General Ledger; If this is not entered the system will use the
    //                            default Ledger = PAYROLL DETAILS
    //    Booking date   - one

    ProcessingOnly = true;

    dataset
    {
        dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
        {
            DataItemTableView = SORTING("Payroll Period", "Global Dimension 1 Code", "Global Dimension 2 Code", "Debit Acc. Type", "Debit Account", "Credit Acc. Type", "Credit Account", "Loan ID") ORDER(Ascending);
            RequestFilterFields = "Payroll Period", "Employee No", "Postg Group", "Global Dimension 1 Code", "Global Dimension 2 Code";

            trigger OnAfterGetRecord()
            begin
                Payrec.Get("Payroll-Payslip Lines."."Employee No");    // Adam
                if Payrec.Blocked then
                    CurrReport.Skip;  // To enable the payroll to skip the blocked employees

                //ERROR(Payrec.Name+'('+Payrec."No."+') was blocked!!!'); //Added by Adam to skip Blocked Employees

                Window.Update(2, "Global Dimension 1 Code");
                Window.Update(3, "Global Dimension 2 Code");
                Window.Update(4, "Employee No");
                Window.Update(5, "E/D Code");
                InfoCounter := InfoCounter + 1;
                Window.Update(6, InfoCounter);

                if ("Debit Account" <> '') or ("Credit Account" <> '') then begin
                    NumOfRec := NumOfRec + 1;
                    if (CurrentPeriod <> "Payroll Period") or
                       (CurrBookDept <> "Global Dimension 1 Code") or
                       (CurrBookProj <> "Global Dimension 2 Code") or
                       (CurrDebAccType <> "Debit Acc. Type") or
                       (CurrDebitAcc <> "Debit Account") or
                       (CurrCredAccType <> "Credit Acc. Type") or
                       (CurrCreditAcc <> "Credit Account") or
                       (CurLoanid <> "Loan ID")
                    then begin
                        if NumOfRec = 1 then begin
                            /* Check for the General Leadger Header record only when NumofRec = 1 */
                            GLHeader.Name := 'GENERAL';

                            if not GLHeader.Get(GLedgerReq.Name) then begin
                                GLHeader.Init;
                                GLHeader.Name := 'GENERAL';
                                if GLHeader.Name = '' then
                                    GLHeader.Description := 'Standard ledger'
                                else
                                    GLHeader.Description := 'Salary General Ledger';
                                /*
                                 GLHeader.INSERT
                                */
                            end

                            else
                                /* Get the consecutive number of the last GLedger record */
                                if GLedgerLine.Find('+') then
                                    ConsecutiveNo := GLedgerLine."Line No." + "PC&CConstant";

                            PRollPeriodRec.Get("Payroll Period");
                            if PRollPeriodRec.Name = '' then
                                GLedgerText := GLedgerText + PRollPeriodRec."Period Code"
                            else
                                GLedgerText := DelChr(PRollPeriodRec.Name, '<>') + ', ' + GLedgerText;
                        end
                        else
                            /*Insert into General ledger lines file */
                      ConsecutiveNo := SEndToGL('GENERAL', CurrDebitAcc, CurrCreditAcc,
                                                 BookingDate, '', GLedgerText, AmtToBook,
                                                 CurrBookDept, CurrBookProj, ConsecutiveNo,
                                                 VoucherNo, CurrDebAccType, CurrCredAccType, 'SALARY', CurLoanid);

                        /* Save values of the current Payroll Entry record */
                        CurrentPeriod := "Payroll Period";
                        CurrBookDept := "Global Dimension 1 Code";
                        CurrBookProj := "Global Dimension 2 Code";
                        CurrDebAccType := "Debit Acc. Type";
                        CurrDebitAcc := "Debit Account";
                        CurrCredAccType := "Credit Acc. Type";
                        CurrCreditAcc := "Credit Account";
                        CurLoanid := "Loan ID";
                        AmtToBook := Amount

                    end
                    else
                        AmtToBook := AmtToBook + Amount;
                end;

                /*IF  MARK THEN BEGIN*/

                if (LastPRollEntryRec."Payroll Period" = "Payroll-Payslip Lines."."Payroll Period") and
                   (LastPRollEntryRec."Employee No" = "Payroll-Payslip Lines."."Employee No") and
                   (LastPRollEntryRec."E/D Code" = "Payroll-Payslip Lines."."E/D Code")
                   then begin
                    /* This is the last record. This means that the latest amount has not been
                    transfered to the General Ledger File*/
                    ConsecutiveNo := SEndToGL('GENERAL', CurrDebitAcc, CurrCreditAcc,
                                              BookingDate, '', GLedgerText, AmtToBook,
                                              CurrBookDept, CurrBookProj, ConsecutiveNo,
                                              VoucherNo, CurrDebAccType, CurrCredAccType, 'SALARY', CurLoanid);
                    Mark(false)
                end;

            end;

            trigger OnPreDataItem()
            begin
                PRP := "Payroll-Payslip Lines.".GetFilter("Payroll Period");
                PRollPeriodRec.Get(PRP);
                if PRollPeriodRec.Closed = true then
                    if not Confirm('The period is closed, do you really want to create the Payroll Journal again', true) then
                        CurrReport.Break;

                SetFilter(Amount, '<>0');
                if Count = 0 then
                    Error('No Payroll Records satisfying this delimitations were found')
                else begin
                    LastPRollEntryRec.SetCurrentKey("Payroll Period", "Global Dimension 1 Code",
                                "Global Dimension 2 Code", "Debit Acc. Type",
                                "Debit Account", "Credit Acc. Type",
                                "Credit Account", "Loan ID");
                    LastPRollEntryRec.CopyFilters("Payroll-Payslip Lines.");
                    LastPRollEntryRec.Find('+');
                    LastPRollEntryRec.Mark(true)
                end;

                /* The following is a constant used by PC&C. When a user creates a new line
                  in the general ledger window, the line's Consecutive No is the value of the
                  last ledger line plus 10,000*/
                "PC&CConstant" := 12500;
                GLedgerText := 'Salaries';

                Window.Open('Total Number of Payroll Entry Lines   #1###\' +
                            'Current Department    #2####\' +
                            'Current Project       #3####\' +
                            'Current Employee      #4####\' +
                            'Current E/D           #5####\' +
                            'Counter   #6###');

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
                label("The Transactions are Transferred to:")
                {
                    Caption = 'The Transactions are Transferred to:';
                    ApplicationArea = All;
                }
                label("General Journal with Batch Name Salary")
                {
                    Caption = 'General Journal with Batch Name Salary';
                    ApplicationArea = All;
                }
                field(BookingDate; BookingDate)
                {
                    Caption = 'Posting Date in G/L Journal';
                    ApplicationArea = All;
                }
                field(VoucherNo; VoucherNo)
                {
                    Caption = 'Voucher Number';
                    ApplicationArea = All;
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

    trigger OnPostReport()
    begin
        PRollPeriodRec.Closed := true;
        PRollPeriodRec.Modify;
    end;

    trigger OnPreReport()
    begin
        /*WITH "Payroll Entry Lines" DO
          dbSELECTKEY ("Payroll Period", "Department Code", "Project Code",
                       "Debit Account", "Credit Account" );*/

        if "Payroll-Payslip Lines.".GetFilter("Payroll Period") = '' then
            Error('Period codes must be specified for the function');

        //IF BookingDate = 0D THEN
        //ERROR ('Booking date must be specified for the function');
        /*
        IF CompName = '' THEN
          ERROR ('Company Name must be specified for the function');
        
        IF (GLedgerLine.CHANGECOMPANY(CompName) = FALSE) THEN
          ERROR ('Company Name specified is not correct');
         */

    end;

    var
        CurLoanid: Code[30];
        GLedgerReq: Record "Gen. Journal Template";
        GLHeader: Record "Gen. Journal Template";
        BookingDate: Date;
        GLedgerLine: Record "Gen. Journal Line";
        PRollPeriodRec: Record "Payroll-Periods.";
        CurrentPeriod: Code[30];
        CurrBookDept: Code[30];
        CurrBookProj: Code[30];
        GLedgerText: Text[30];
        "PC&CConstant": Integer;
        ConsecutiveNo: Integer;
        NumOfRec: Integer;
        CurrDebitAcc: Code[30];
        CurrDebAccType: Integer;
        CurrCreditAcc: Code[30];
        CurrCredAccType: Integer;
        AmtToBook: Decimal;
        LastPRollEntryRec: Record "Payroll-Payslip Lines.";
        VoucherNo: Code[30];
        DebugCode: Code[30];
        InfoCounter: Integer;
        Window: Dialog;
        CompName: Code[30];
        PRP: Text[30];
        Payrec: Record Employee;
        CustLed: Record "Cust. Ledger Entry";
        "The Transactions are Transferred to:": Text[150];
        "General Journal with Batch Name Salary": Text;

    [Scope('OnPrem')]
    procedure SEndToGL(GLLName: Text[30]; DebitAccNo: Code[20]; CreditAccNo: Code[20]; BookDate: Date; VouchNo: Text[30]; GLLtext: Text[30]; GLLAmount: Decimal; DeptCode: Code[10]; ProjCode: Code[10]; ConsNum: Integer; VoucherNum: Code[10]; DebAccType: Integer; CredAccType: Integer; BatchName: Code[10]; LoanIDEX: Code[10]): Integer
    begin

        with GLedgerLine do begin
            if (DebitAccNo <> '') and (GLLAmount <> 0) then begin
                Init;
                GLedgerLine."Journal Template Name" := GLLName;
                /*BDC*/
                GLedgerLine."Journal Batch Name" := BatchName;
                GLedgerLine."Account Type" := DebAccType;
                GLedgerLine."Account No." := DebitAccNo;
                Validate(GLedgerLine."Account No.");
                GLedgerLine."Posting Date" := BookDate;
                GLedgerLine."Document No." := VoucherNum;
                GLedgerLine.Description := GLLtext;
                GLedgerLine.Amount := GLLAmount;
                Validate(GLedgerLine.Amount);
                GLedgerLine."Shortcut Dimension 1 Code" := DeptCode;
                GLedgerLine."Shortcut Dimension 2 Code" := ProjCode;
                GLedgerLine."Loan ID" := LoanIDEX;
                GLedgerLine."Line No." := ConsNum;

                GLedgerLine.Description := GLLtext;
                if not Insert then if Confirm('Do You want to Over Write') then Modify;

                ConsNum := ConsNum + "PC&CConstant";
            end;
            if (CreditAccNo <> '') and (GLLAmount <> 0) then begin
                Init;
                GLedgerLine."Journal Template Name" := GLLName;
                /*BDC*/
                GLedgerLine."Journal Batch Name" := BatchName;
                GLedgerLine."Account Type" := CredAccType;
                GLedgerLine."Account No." := CreditAccNo;
                Validate(GLedgerLine."Account No.");
                GLedgerLine."Posting Date" := BookDate;
                GLedgerLine."Document No." := VoucherNum;
                GLedgerLine.Description := GLLtext;
                GLedgerLine.Amount := -GLLAmount;
                Validate(GLedgerLine.Amount);
                GLedgerLine."Shortcut Dimension 1 Code" := DeptCode;
                GLedgerLine."Shortcut Dimension 2 Code" := ProjCode;
                GLedgerLine."Loan ID" := LoanIDEX;
                GLedgerLine."Line No." := ConsNum;
                GLedgerLine.Description := GLLtext;
                GLedgerLine."Loan ID" := LoanIDEX;
                if GLedgerLine."Loan ID" <> '' then GLedgerLine."Applies-to Doc. No." := ApplytoLoan(GLedgerLine."Loan ID");

                if not Insert then if Confirm('Do You want to Over Write existing created G/L Lines') then Modify;//Insert;
                ConsNum := ConsNum + "PC&CConstant";
            end;
            exit(ConsNum);
        end;

    end;

    [Scope('OnPrem')]
    procedure ApplytoLoan(LnID: Code[15]): Code[20]
    begin

        CustLed.SetCurrentKey(CustLed."Customer No.", CustLed.Open);
        CustLed.SetRange(CustLed."Customer No.", 'D', 'F');
        CustLed.SetRange(CustLed.Open, true);
        CustLed.SetRange(CustLed."Loan ID", LnID);
        CustLed.CalcFields(CustLed."Remaining Amount");
        CustLed.SetFilter(CustLed."Remaining Amount", '>0');
        if CustLed.Find('-') then exit(CustLed."Document No.");
    end;
}

