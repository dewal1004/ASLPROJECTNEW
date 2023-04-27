report 90903 "UnitCost zero"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/UnitCostzero.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Inventory Posting Group";

            trigger OnAfterGetRecord()
            begin
                Item."Unit Cost" := 0;
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
}

