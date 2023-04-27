report 50206 "Job Ledger Inv Post Group Upda"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/JobLedgerInvPostGroupUpda.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "Date Filter", "No.", "Location Filter", "Inventory Posting Group";
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "No." = FIELD("No."), "Posting Date" = FIELD("Date Filter"), "Location Code" = FIELD("Location Filter");
                DataItemTableView = SORTING(Type, "No.", "Location Code", "Posting Date") WHERE(Type = CONST(Item));
                column(Posting_Date; "Job Ledger Entry"."Posting Date")
                {
                }
                column(Item_No; "Job Ledger Entry"."No.")
                {
                }
                column(Description; "Job Ledger Entry".Description)
                {
                }
                column(Quantity; "Job Ledger Entry".Quantity)
                {
                }
                column(Inventory_Group; "Job Ledger Entry"."Inventory Posting Group")
                {
                }
                column(Category; "Job Ledger Entry".GroupSort)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Job Ledger Entry"."Inventory Posting Group" := Item."Inventory Posting Group";
                    "Job Ledger Entry".Modify;
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

