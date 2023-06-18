report 99971 "Value Entry InvtPostgGrp corr"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ValueEntryInvtPostgGrpcorr.rdlc';
    Caption = 'Value Entry InvtPostgGrp corr';
    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Value_Entry__Document_No__; "Document No.")
            {
            }
            column(Value_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Value_Entry__Item_Ledger_Entry_Type_; "Item Ledger Entry Type")
            {
            }
            column(Value_Entry__Item_Ledger_Entry_No__; "Item Ledger Entry No.")
            {
            }
            column(Value_Entry__Source_No__; "Source No.")
            {
            }
            column(Value_Entry__Document_No___Control29; "Document No.")
            {
            }
            column(Value_Entry__Source_Code_; "Source Code")
            {
            }
            column(Value_EntryCaption; Value_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Entry_No__Caption; FieldCaption("Entry No."))
            {
            }
            column(Value_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Value_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Value_Entry__Item_Ledger_Entry_Type_Caption; FieldCaption("Item Ledger Entry Type"))
            {
            }
            column(Value_Entry__Item_Ledger_Entry_No__Caption; FieldCaption("Item Ledger Entry No."))
            {
            }
            column(Value_Entry__Source_No__Caption; FieldCaption("Source No."))
            {
            }
            column(Value_Entry__Document_No___Control29Caption; FieldCaption("Document No."))
            {
            }
            column(Value_Entry__Source_Code_Caption; FieldCaption("Source Code"))
            {
            }
            column(Value_Entry__Document_No__Caption; FieldCaption("Document No."))
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
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
