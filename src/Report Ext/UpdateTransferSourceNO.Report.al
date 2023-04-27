report 50172 "Update Transfer Source NO."
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateTransferSourceNO.rdlc';

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Location Code", "Item No.", "Item Ledger Entry Type") WHERE("Item Ledger Entry Type" = CONST(Transfer));
            RequestFilterFields = "Location Code";
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
            column(Value_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_Entry__Source_No__; "Source No.")
            {
            }
            column(Value_Entry__Document_No__; "Document No.")
            {
            }
            column(Value_Entry__External_Document_No__; "External Document No.")
            {
            }
            column(Value_Entry__Location_Code_; "Location Code")
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
            column(Value_Entry__Source_No__Caption; FieldCaption("Source No."))
            {
            }
            column(Value_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Value_Entry__External_Document_No__Caption; FieldCaption("External Document No."))
            {
            }
            column(Value_Entry__Location_Code_Caption; FieldCaption("Location Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Job.SetRange(Job.Vessel, "Value Entry"."Location Code");
                Job.SetRange(Job."Voyage No.", "Value Entry"."External Document No.");
                if Job.Find('-') and ("Value Entry"."Source No." = '') then
                    "Value Entry"."Source No." := Job."No.";
                Modify;
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
        Job: Record Job;
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

