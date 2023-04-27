report 99501 "Edit Loc, ExtDoc No. On L/E"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/EditLocExtDocNoOnLE.rdlc';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
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
            column(Item_Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Item_Ledger_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Item_Ledger_Entry__Item_No__; "Item No.")
            {
            }
            column(Item_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Item_Ledger_Entry__Entry_Type_; "Entry Type")
            {
            }
            column(Item_Ledger_Entry__Source_No__; "Source No.")
            {
            }
            column(Item_Ledger_Entry__Document_No___Control26; "Document No.")
            {
            }
            column(Item_Ledger_Entry__Location_Code_; "Location Code")
            {
            }
            column(Item_Ledger_Entry_Quantity; Quantity)
            {
            }
            column(Item_Ledger_Entry__External_Document_No__; "External Document No.")
            {
            }
            column(TotalFor___FIELDCAPTION__Document_No___; TotalFor + FieldCaption("Document No."))
            {
            }
            column(Item_Ledger_Entry_Quantity_Control41; Quantity)
            {
            }
            column(Item_Ledger_EntryCaption; Item_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Entry_No__Caption; FieldCaption("Entry No."))
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Item_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Item_Ledger_Entry__Entry_Type_Caption; FieldCaption("Entry Type"))
            {
            }
            column(Item_Ledger_Entry__Source_No__Caption; FieldCaption("Source No."))
            {
            }
            column(Item_Ledger_Entry__Document_No___Control26Caption; FieldCaption("Document No."))
            {
            }
            column(Item_Ledger_Entry__Location_Code_Caption; FieldCaption("Location Code"))
            {
            }
            column(Item_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Item_Ledger_Entry__External_Document_No__Caption; FieldCaption("External Document No."))
            {
            }
            column(Item_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
        }
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Document No.", "Posting Date");
            column(Value_Entry__Entry_No__; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if locn <> '' then
                    if "Location Code" = loc then "Location Code" := locn;

                if (ExDocn <> '') and ("External Document No." = ExDoc) then "External Document No." := ExDocn;
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                SetFilter("Document No.", '=%1', DocNo);
                VaDocFilt := GetFilter("Document No.");
                if VaDocFilt = '' then Error('Pls, Rem. to set Value Entry Doc No.');
            end;
        }
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Document No.", "Posting Date");
            column(Job_Ledger_Entry__Entry_No__; "Item Ledger Entry"."Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if locn <> '' then
                    if "Location Code" = loc then "Location Code" := locn;
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                SetFilter("Document No.", '=%1', DocNo);
                JbDocFilt := GetFilter("Document No.");
                if JbDocFilt = '' then Error('Pls, Rem. to set Job Ledger Doc No.');
            end;
        }
        dataitem("G/L Entry"; "G/L Entry")
        {
            DataItemTableView = SORTING("Document No.", "Posting Date");
            column(G_L_Entry__Entry_No__; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if (ExDocn <> '') and ("External Document No." = ExDoc) then "External Document No." := ExDocn;
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                SetFilter("Document No.", '=%1', DocNo);
                GLDocFilt := GetFilter("Document No.");
                if GLDocFilt = '' then Error('Pls, Rem. to set G/L Doc No.');
            end;
        }
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            column(Transfer_Shipment_Header__No__; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if (ExDocn <> '') and (("External Document No." = ExDoc) or ("Transfer To Voy. No." = ExDoc)) then begin
                    "External Document No." := ExDocn;
                    "Transfer To Voy. No." := ExDocn;
                end;
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                SetFilter("No.", '=%1', DocNo);
                TSDocFilt := GetFilter("No.");
                if TSDocFilt = '' then Error('Pls, Rem. to set Trasf Ship Header Doc No.');
            end;
        }
        dataitem("Transfer Receipt Header"; "Transfer Receipt Header")
        {
            DataItemTableView = SORTING("No.");
            column(Transfer_Receipt_Header__No__; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if (ExDocn <> '') and (("External Document No." = ExDoc) or ("Transfer To Voy. No." = ExDoc)) then begin
                    "External Document No." := ExDocn;
                    "Transfer To Voy. No." := ExDocn;
                end;
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                SetFilter("No.", '=%1', DocNo);
                TRDocFilt := GetFilter("No.");
                if TRDocFilt = '' then Error('Pls, Rem. to set Trasf Receipt Header Doc No.');
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
        TotalFor: Label 'Total for ';
        loc: Code[10];
        locn: Code[10];
        ItDocFilt: Code[10];
        VaDocFilt: Code[10];
        JbDocFilt: Code[10];
        GLDocFilt: Code[10];
        TSDocFilt: Code[10];
        TRDocFilt: Code[10];
        ExDoc: Code[10];
        ExDocn: Code[10];
        DocNo: Code[10];
        Item_Ledger_EntryCaptionLbl: Label 'Item Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

