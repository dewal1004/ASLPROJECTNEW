report 99516 "Edit PDate>Trans Ord Dat PurCr"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/EditPDateTransOrdDatPurCr.rdlc';

    dataset
    {
        dataitem("Purch. Cr. Memo Hdr."; "Purch. Cr. Memo Hdr.")
        {
            column(Purch_cred_memo_hdr_no; "Purch. Cr. Memo Hdr."."No.")
            {
            }
            dataitem("G/L Entry"; "G/L Entry")
            {
                column(G_L_Entry__Entry_No__; "Entry No.")
                {
                }
                column(G_L_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(G_L_Entry__Document_No__; "Document No.")
                {
                }
                column(G_L_Entry__Transaction_No__; "Transaction No.")
                {
                }
                column(G_L_Entry__Entry_No__Caption; FieldCaption("Entry No."))
                {
                }
                column(G_L_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(G_L_Entry__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(G_L_Entry__Transaction_No__Caption; FieldCaption("Transaction No."))
                {
                }
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
        TranOrdDat: Date;
}

