report 99513 "Edit PDate>Trans Ord Dat ReceN"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/EditPDateTransOrdDatReceN.rdlc';

    dataset
    {
        dataitem("Transfer Receipt Header"; "Transfer Receipt Header")
        {
            RequestFilterFields = "No.";
            column(No; "Transfer Receipt Header"."No.")
            {
            }
            column(Code_from; "Transfer Receipt Header"."Transfer-from Code")
            {
            }
            column(TransfertoCode; "Transfer Receipt Header"."Transfer-to Code")
            {
            }
            column(TransferOrdeDate; "Transfer Receipt Header"."Transfer Order Date")
            {
            }
            column(PostingDate; "Transfer Receipt Header"."Posting Date")
            {
            }
            column(TransferValue; "Transfer Receipt Header"."Transfer Value")
            {
            }
            column(TransferFromVoyNo; "Transfer Receipt Header"."Transfer From Voy. No.")
            {
            }
            column(TransferToVoyNo; "Transfer Receipt Header"."Transfer To Voy. No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                TranOrdDat := "Transfer Order Date";
                "Posting Date Old" := "Posting Date";
                "Posting Date" := TranOrdDat;
                Modify;
            end;
        }
        dataitem("G/L Entry"; "G/L Entry")
        {
            DataItemLink = "Document No." = FIELD("No.");
            DataItemLinkReference = "Transfer Receipt Header";
            DataItemTableView = SORTING("Document No.", "Transaction No.");
            RequestFilterFields = "Transaction No.";

            trigger OnAfterGetRecord()
            begin
                "Posting Date" := TranOrdDat;
                "Document Date" := TranOrdDat;
                Modify;
            end;
        }
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemLinkReference = "Transfer Receipt Header";

            trigger OnAfterGetRecord()
            begin
                "Posting Date" := TranOrdDat;
                "Document Date" := TranOrdDat;
                if "Last Invoice Date" = "Posting Date" then "Last Invoice Date" := TranOrdDat;
                Modify;
            end;
        }
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemLink = "Document No." = FIELD("No.");
            DataItemLinkReference = "Transfer Receipt Header";
            DataItemTableView = SORTING("Document No.");

            trigger OnAfterGetRecord()
            begin
                "Posting Date" := TranOrdDat;
                "Document Date" := TranOrdDat;
                if "Valuation Date" = "Posting Date" then "Valuation Date" := TranOrdDat;
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
        TranOrdDat: Date;
}

