report 50144 "Journal Register"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/JournalRegister.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Journal Register';
    dataset
    {
        dataitem("G/L Entry"; "G/L Entry")
        {
            DataItemTableView = SORTING("Document No.", "Posting Date");
            RequestFilterFields = "Journal Batch Name", "Posting Date";
            RequestFilterHeading = 'GL Filter';
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
            column(G_L_Entry__GETFILTERS; "G/L Entry".GetFilters)
            {
            }
            column(G_L_Entry__Document_No__; "Document No.")
            {
            }
            column(G_L_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(G_L_Entry_Description; Description)
            {
            }
            column(G_L_Entry__Debit_Amount_; "Debit Amount")
            {
            }
            column(G_L_Entry__Credit_Amount_; "Credit Amount")
            {
            }
            column(G_L_Entry__G_L_Account_No__; "G/L Account No.")
            {
            }
            column(G_L_Entry__Bal__Account_No__; "Bal. Account No.")
            {
            }
            column(G_L_Entry__Source_No__; "Source No.")
            {
            }
            column(Vname; Vname)
            {
            }
            column(G_L_Entry__Journal_Batch_Name_; "Journal Batch Name")
            {
            }
            column(TotalFor___FIELDCAPTION__Document_No___; TotalFor + FieldCaption("Document No."))
            {
            }
            column(G_L_Entry__Debit_Amount__Control1000000032; "Debit Amount")
            {
            }
            column(G_L_Entry__Credit_Amount__Control1000000033; "Credit Amount")
            {
            }
            column(Journal_RegisterCaption; Journal_RegisterCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(G_L_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(G_L_Entry_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(G_L_Entry__Debit_Amount_Caption; FieldCaption("Debit Amount"))
            {
            }
            column(G_L_Entry__Credit_Amount_Caption; FieldCaption("Credit Amount"))
            {
            }
            column(G_L_Entry__G_L_Account_No__Caption; FieldCaption("G/L Account No."))
            {
            }
            column(G_L_Entry__Bal__Account_No__Caption; FieldCaption("Bal. Account No."))
            {
            }
            column(G_L_Entry__Source_No__Caption; FieldCaption("Source No."))
            {
            }
            column(Source_No_DescriptionCaption; Source_No_DescriptionCaptionLbl)
            {
            }
            column(G_L_Entry__Journal_Batch_Name_Caption; FieldCaption("Journal Batch Name"))
            {
            }
            column(G_L_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(G_L_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin

                LastFieldNo := FieldNo("Journal Batch Name");

                Vname := '';
                if VendorRec.Get("Source No.") then
                    Vname := VendorRec.Name;

                if CustRec.Get("Source No.") then
                    Vname := CustRec.Name;

                if FARec.Get("Source No.") then
                    Vname := FARec.Description;

                if BankRec.Get("Source No.") then
                    Vname := BankRec.Name;
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
        TotalFor: Label 'Total for ';
        Vname: Text[150];
        VendorRec: Record Vendor;
        CustRec: Record Customer;
        FARec: Record "Fixed Asset";
        BankRec: Record "Bank Account";
        Journal_RegisterCaptionLbl: Label 'Journal Register';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Source_No_DescriptionCaptionLbl: Label 'Source No Description';
}
