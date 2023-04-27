report 50122 "Itemledger Update Voyage No."
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ItemledgerUpdateVoyageNo.rdlc';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            RequestFilterFields = "Item No.", "Entry No.", "Entry Type";
            column(Entry_No; "Item Ledger Entry"."Entry No.")
            {
            }
            column(Item_No; "Item Ledger Entry"."Item No.")
            {
            }
            column(CompanyName_Text; CompanyName)
            {
            }
            column(TodayFormatted; Format(Today, 0, 4))
            {
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
        LOCREC: Record Location;
        TRF_HEAD_REC: Record "Transfer Receipt Header";
}

