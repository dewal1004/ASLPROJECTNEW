report 96001 "Mainte Detail Analy"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/MainteDetailAnaly.rdlc';

    dataset
    {
        dataitem("Maintenance Ledger Entry"; "Maintenance Ledger Entry")
        {
            DataItemTableView = SORTING("Entry No.");
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
            column(Maintenance_Ledger_Entry__FA_Posting_Date_; "FA Posting Date")
            {
            }
            column(Maintenance_Ledger_Entry_Description; Description)
            {
            }
            column(Maintenance_Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Maintenance_Ledger_Entry_Amount; Amount)
            {
            }
            column(Maintenance_Ledger_Entry__Debit_Amount_; "Debit Amount")
            {
            }
            column(Maintenance_Ledger_Entry__Credit_Amount_; "Credit Amount")
            {
            }
            column(Maintenance_Ledger_EntryCaption; Maintenance_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Maintenance_Ledger_Entry__FA_Posting_Date_Caption; FieldCaption("FA Posting Date"))
            {
            }
            column(Maintenance_Ledger_Entry_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Maintenance_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Maintenance_Ledger_Entry_AmountCaption; FieldCaption(Amount))
            {
            }
            column(Maintenance_Ledger_Entry__Debit_Amount_Caption; FieldCaption("Debit Amount"))
            {
            }
            column(Maintenance_Ledger_Entry__Credit_Amount_Caption; FieldCaption("Credit Amount"))
            {
            }
            column(Maintenance_Ledger_Entry_Entry_No_; "Entry No.")
            {
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
        Maintenance_Ledger_EntryCaptionLbl: Label 'Maintenance Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

