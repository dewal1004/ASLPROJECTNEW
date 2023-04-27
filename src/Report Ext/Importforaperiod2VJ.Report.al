report 50174 "Import for a period 2 VJ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/Importforaperiod2VJ.rdlc';

    dataset
    {
        dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
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
            column(Vendor_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Vendor_Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Vendor_Ledger_Entry_Description; Description)
            {
            }
            column(Vendor_Ledger_Entry__External_Document_No__; "External Document No.")
            {
            }
            column(Vendor_Ledger_Entry__Vendor_No__; "Vendor No.")
            {
            }
            column(Vendor_Ledger_Entry__Currency_Code_; "Currency Code")
            {
            }
            column(Vendor_Ledger_Entry_Amount; Amount)
            {
            }
            column(Vendor_Ledger_Entry__Amount__LCY__; "Amount (LCY)")
            {
            }
            column(Name; Name)
            {
            }
            column(Vendor_Ledger_EntryCaption; Vendor_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Vendor_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Vendor_Ledger_Entry_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Vendor_Ledger_Entry__External_Document_No__Caption; FieldCaption("External Document No."))
            {
            }
            column(Vendor_Ledger_Entry__Vendor_No__Caption; FieldCaption("Vendor No."))
            {
            }
            column(Vendor_Ledger_Entry__Currency_Code_Caption; FieldCaption("Currency Code"))
            {
            }
            column(Vendor_Ledger_Entry_AmountCaption; FieldCaption(Amount))
            {
            }
            column(Vendor_Ledger_Entry__Amount__LCY__Caption; FieldCaption("Amount (LCY)"))
            {
            }
            column(Vendor_NameCaption; Vendor_NameCaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
            column(DocumentNo; "Vendor Ledger Entry"."Document No.")
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
        Vend: Record Vendor;
        Name: Text[250];
        Vendor_Ledger_EntryCaptionLbl: Label 'Vendor Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Vendor_NameCaptionLbl: Label 'Vendor Name';
}

