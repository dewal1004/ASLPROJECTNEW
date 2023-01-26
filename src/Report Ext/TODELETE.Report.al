report 66777 "TO DELETE"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/TODELETE.rdlc';

    dataset
    {
        dataitem("Transfer Header"; "Transfer Header")
        {

            trigger OnAfterGetRecord()
            begin

                /*"Transfer Header"."External Document No.":="Transfer Header"."Transfer To Voy. No.";
                "Transfer Header".MODIFY;*///#dik

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
        VAL_REC: Record "Value Entry";
}

