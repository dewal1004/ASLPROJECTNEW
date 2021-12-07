report 50159 "Kumar PWC Rep"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/KumarPWCRep.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
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
            column(Job_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Job_Ledger_Entry__Job_No__; "Job No.")
            {
            }
            column(Job_Ledger_Entry__Posting_Date__Control14; "Posting Date")
            {
            }
            column(Job_Ledger_Entry__Job_No___Control17; "Job No.")
            {
            }
            column(Job_Ledger_Entry__Source_Code_; "Source Code")
            {
            }
            column(Job_Ledger_Entry__No__; "No.")
            {
            }
            column(Job_Ledger_Entry_Description; Description)
            {
            }
            column(Job_Ledger_Entry_Quantity; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Job_No___; TotalFor + FieldCaption("Job No."))
            {
            }
            column(Job_Ledger_Entry_Quantity_Control32; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Posting_Date__; TotalFor + FieldCaption("Posting Date"))
            {
            }
            column(Job_Ledger_Entry_Quantity_Control34; Quantity)
            {
            }
            column(Job_Ledger_EntryCaption; Job_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_Entry__Posting_Date__Control14Caption; FieldCaption("Posting Date"))
            {
            }
            column(Job_Ledger_Entry__Job_No___Control17Caption; FieldCaption("Job No."))
            {
            }
            column(Job_Ledger_Entry__Source_Code_Caption; FieldCaption("Source Code"))
            {
            }
            column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_Ledger_Entry_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Job_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
        }
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            column(Item_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Item_Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Item_Ledger_Entry__Item_No__; "Item No.")
            {
            }
            column(Item_Ledger_Entry_Quantity; Quantity)
            {
            }
            column(Item_Ledger_Entry__External_Document_No__; "External Document No.")
            {
            }
            column(Processing___Other_EntriesCaption; Processing___Other_EntriesCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Item_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Item_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Item_Ledger_Entry__External_Document_No__Caption; FieldCaption("External Document No."))
            {
            }
            column(Item_Ledger_Entry_Entry_No_; "Entry No.")
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        Date1: Date;
        Date2: Date;
        TotQty: Decimal;
        Job_Ledger_EntryCaptionLbl: Label 'Job Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Processing___Other_EntriesCaptionLbl: Label 'Processing & Other Entries';
}

