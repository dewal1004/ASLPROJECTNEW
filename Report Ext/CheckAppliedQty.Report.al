report 50052 "Check Applied Qty"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/CheckAppliedQty.rdlc';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = SORTING("Entry No.") WHERE(Positive = CONST(true));
            RequestFilterFields = "Entry No.", "Item No.", "Posting Date";
            column(EntryNo; "Item Ledger Entry"."Entry No.")
            {
            }
            column(ItemQty; "Item Ledger Entry".Quantity)
            {
            }
            column(ItemRemQty; "Item Ledger Entry"."Remaining Quantity")
            {
            }
            column(QuantityBal; "Item Ledger Entry"."Applied Qty  Negative")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItemApprec.SetFilter(ItemApprec."Inbound Item Entry No.", '%1', "Item Ledger Entry"."Entry No.");
                ItemApprec.SetFilter(ItemApprec."Outbound Item Entry No.", '<>%1', 0);
                if ItemApprec.FindSet then begin
                    ItemApprec.CalcSums(ItemApprec.Quantity);
                    "Item Ledger Entry"."Applied Qty  Negative" := ItemApprec.Quantity;
                    "Item Ledger Entry".Modify;
                end else
                    CurrReport.Skip;
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
        ItemApprec: Record "Item Application Entry";
}

