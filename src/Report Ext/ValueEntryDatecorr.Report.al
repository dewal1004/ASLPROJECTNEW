report 99972 "Value Entry Date corr"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ValueEntryDatecorr.rdlc';

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Document No.");
            RequestFilterFields = "Document No.";
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

            trigger OnAfterGetRecord()
            begin
                if ItemLedEntry.Get("Item Ledger Entry No.") then begin
                    if (ItemLedEntry."Posting Date" <> "Posting Date") then begin
                        ValEntry.Get("Entry No.");
                        ValEntry."Posting Date" := ItemLedEntry."Posting Date";
                        //MESSAGE('FOUND Date Diff');
                        ValEntry.Modify;
                    end;
                end;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Document No.");
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        "----": Integer;
        ItemLedEntry: Record "Item Ledger Entry";
        ValEntry: Record "Value Entry";
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

