report 99515 "Edit PDate>Trans Ord Dat Purch"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/EditPDateTransOrdDatPurch.rdlc';

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            RequestFilterFields = "No.";
            column(Purch__Inv__Header_No_; "No.")
            {
            }
            dataitem("G/L Entry"; "G/L Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Transaction No.");
                RequestFilterFields = "Transaction No.";
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

                trigger OnAfterGetRecord()
                begin
                    "Posting Date" := TranOrdDat;
                    "Document Date" := TranOrdDat;
                    Modify;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                TranOrdDat := "Posting Date";
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
        TranOrdDat: Date;
}

