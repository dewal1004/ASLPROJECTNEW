report 99981 "Modify Vendor No"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ModifyVendorNo.rdlc';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                StFrom := IncStr(StFrom);
                if Vend.Get("No.") then Vend.Rename(StFrom);
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
        Vend: Record Vendor;
        StFrom: Code[20];
}

