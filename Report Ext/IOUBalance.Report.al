report 50108 "IOU Balance"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/IOUBalance.rdlc';

    dataset
    {
        dataitem(Employee; Employee)
        {
            column(TotAmt; TotAmt)
            {
            }
            column(TotRem; TotRem)
            {
            }
            column(TranF; TranF)
            {
            }
            column(TotAmt_Control1000000005; TotAmt)
            {
            }
            column(TotRem_Control1000000006; TotRem)
            {
            }
            column(OverTot; OverTot)
            {
            }
            column(Employee_No_; "No.")
            {
            }
            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                {
                }
                column(COMPANYNAME; CompanyName)
                {
                }
                column(CurrReport_PAGENO; CurrReport.PageNo)
                {
                }
                column(USERID; UserId)
                {
                }
                column(Cust__Ledger_Entry__Customer_No__; "Cust. Ledger Entry"."Customer No.")
                {
                }
                column(Cust__Ledger_Entry__Entry_No__; "Entry No.")
                {
                }
                column(Cust__Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Cust__Ledger_Entry__Document_No__; "Cust. Ledger Entry"."Document No.")
                {
                }
                column(Cust__Ledger_Entry_Description; Description)
                {
                }
                column(Cust__Ledger_Entry__Remaining_Amt___LCY__; "Remaining Amt. (LCY)")
                {
                }
                column(Cust__Ledger_Entry__Amount__LCY__; "Amount (LCY)")
                {
                }
                column(Cust__Ledger_Entry__Reason_Code_; "Reason Code")
                {
                }
                column(TotalFor; TotalFor)
                {
                }
                column(Cust__Ledger_Entry__Remaining_Amt___LCY___Control40; "Remaining Amt. (LCY)")
                {
                }
                column(Cust__Ledger_Entry__Amount__LCY___Control41; "Amount (LCY)")
                {
                }
                column(IOU_BalanceCaption; IOU_BalanceCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(Cust__Ledger_Entry__Entry_No__Caption; FieldCaption("Entry No."))
                {
                }
                column(Cust__Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(Cust__Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(Cust__Ledger_Entry_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Cust__Ledger_Entry__Remaining_Amt___LCY__Caption; FieldCaption("Remaining Amt. (LCY)"))
                {
                }
                column(Cust__Ledger_Entry__Amount__LCY__Caption; FieldCaption("Amount (LCY)"))
                {
                }
                column(Cust__Ledger_Entry__Reason_Code_Caption; FieldCaption("Reason Code"))
                {
                }
                column(Cust__Ledger_Entry__Customer_No__Caption; Cust__Ledger_Entry__Customer_No__CaptionLbl)
                {
                }

                trigger OnPreDataItem()
                begin
                    /*LastFieldNo := FIELDNO("Customer No.");
                    
                    IF NOT FooterPrinted THEN
                      LastFieldNo := CurrReport.TOTALSCAUSEDBY;
                    CurrReport.SHOWOUTPUT := NOT FooterPrinted;
                    FooterPrinted := TRUE;
                    
                    CurrReport.SHOWOUTPUT :=
                      CurrReport.TOTALSCAUSEDBY = "Cust. Ledger Entry".FIELDNO("Customer No.");
                    Emp.GET(Employee."No.");
                    IF "Remaining Amt. (LCY)">0 THEN Emp.Blocked:=TRUE ELSE Emp.Blocked:= FALSE;
                    Emp.MODIFY;
                    
                    TotRem:=TotRem+"Remaining Amt. (LCY)";
                    TotAmt:=TotAmt+"Amount (LCY)";*/

                end;
            }
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        "-----": Integer;
        Emp: Record Employee;
        TotRem: Decimal;
        TotAmt: Decimal;
        TotalFor: Label 'Employee Balance';
        TranF: Label 'Trans Total';
        OverTot: Label 'Overall total';
        IOU_BalanceCaptionLbl: Label 'IOU Balance';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Cust__Ledger_Entry__Customer_No__CaptionLbl: Label 'Employee No.';
}

