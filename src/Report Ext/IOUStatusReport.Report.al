report 50116 "IOU Status Report"
{
    // IOU.EmployeeName
    // StartBalanceLCY
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/IOUStatusReport.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
        {
            DataItemTableView = SORTING("Bank Account No.", "Posting Date", Positive) ORDER(Descending);
            RequestFilterFields = "Bank Account No.", "Posting Date", Positive;
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
            column(OUTSTANDING_IOU_REPORTCaption; OUTSTANDING_IOU_REPORTCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
            column(Bank_Account_Ledger_Entry_Bank_Account_No_; "Bank Account No.")
            {
            }
            column(Bank_Account_Ledger_Entry_Posting_Date; "Posting Date")
            {
            }
            column(Bank_Account_Ledger_Entry_Positive; Positive)
            {
            }

            trigger OnPreDataItem()
            begin
                //Total_IOU:=0;
                LastFieldNo := FieldNo(Positive);
                CashDay := GetFilter("Posting Date");
                if CashDay = '' then Error('Remember to put Cash Summary Day');
            end;
        }
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = SORTING("Customer No.", Open, Positive, "Due Date", "Currency Code") WHERE("Customer No." = FILTER('D' .. 'F'), Positive = FILTER(true), Open = FILTER(true));
            column(Cust__Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(EmployeeName; EmployeeName)
            {
            }
            column(Cust__Ledger_Entry__Remaining_Amt___LCY__; "Remaining Amt. (LCY)")
            {
            }
            column(Cust__Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Total_IOU; Total_IOU)
            {
            }
            column(Details_of_IOU_sCaption; Details_of_IOU_sCaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Remaining_Amt___LCY__Caption; FieldCaption("Remaining Amt. (LCY)"))
            {
            }
            column(EmployeeNameCaption; EmployeeNameCaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Document_No__Caption; Cust__Ledger_Entry__Document_No__CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Posting_Date_Caption; Cust__Ledger_Entry__Posting_Date_CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Cust.Get("Customer No.") then
                    EmployeeName := Cust.Name else
                    EmployeeName := Description;

                Print_OK := false;
                if Loan_Rec.Get("Cust. Ledger Entry"."Loan ID") then begin
                    if Loan_Rec."Loan Type" = 1 then begin
                        Loan_Rec.CalcFields(Loan_Rec."Remaining Amount");
                        if Loan_Rec."Remaining Amount" > 0 then begin
                            Print_OK := true;
                            Total_IOU := Total_IOU + "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                        end;
                    end;
                end;
            end;

            trigger OnPreDataItem()
            begin
                CashDay := "Bank Account Ledger Entry".GetFilter("Bank Account Ledger Entry"."Posting Date");
                CashDay := '..' + CashDay;
                SetFilter("Posting Date", CashDay);
            end;
        }
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = WHERE(Number = CONST(1));
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
        TotalFor: Label 'Total';
        "------": Integer;
        Bank: Record "Bank Account";
        Cust: Record Customer;
        Desc: Text[30];
        BankDesc: Text[30];
        CashDay: Text[30];
        StartBalanceLCY: Decimal;
        T0001: Label 'BALANCE B/F';
        T0002: Label 'BALANCE C/O';
        EmployeeName: Text[30];
        Loan_Rec: Record "Loan.";
        Print_OK: Boolean;
        Total_IOU: Decimal;
        OUTSTANDING_IOU_REPORTCaptionLbl: Label 'OUTSTANDING IOU REPORT';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Details_of_IOU_sCaptionLbl: Label 'Details of IOU''s';
        EmployeeNameCaptionLbl: Label 'Name';
        Cust__Ledger_Entry__Document_No__CaptionLbl: Label 'No.';
        Cust__Ledger_Entry__Posting_Date_CaptionLbl: Label 'Date';
}

