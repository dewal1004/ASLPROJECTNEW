report 50096 "Update External Doc No on Tran"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateExternalDocNoonTran.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Update External Doc No on Tran';
    dataset
    {
        dataitem("Transfer Receipt Header"; "Transfer Receipt Header")
        {
            DataItemTableView = SORTING("Transfer-to Code", "Transfer To Voy. No.") WHERE("Transfer To Voy. No." = FILTER(<> ''));
            RequestFilterFields = "No.", "Transfer To Voy. No.", "Posting Date";
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                dataitem("Value Entry"; "Value Entry")
                {
                    DataItemLink = "Item Ledger Entry No." = FIELD("Entry No.");

                    trigger OnAfterGetRecord()
                    begin
                        "Value Entry"."External Document No." := "Transfer Receipt Header"."Transfer To Voy. No.";
                        "Value Entry".Modify();
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    "Item Ledger Entry"."External Document No." := "Transfer Receipt Header"."Transfer To Voy. No.";
                    "Item Ledger Entry".Modify();
                end;
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
}
