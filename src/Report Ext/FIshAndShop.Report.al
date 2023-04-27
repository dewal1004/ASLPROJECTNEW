report 50131 "FIsh And Shop"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/FIshAndShop.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem("Sales Line"; "Sales Line")
        {
            column(Description; "Sales Line".Description)
            {
            }
            column(No; "Sales Line"."No.")
            {
            }
            column(DocumentType; "Sales Line"."Document Type")
            {
            }
            column(Quantity; "Sales Line".Quantity)
            {
            }
            column(UnitPrice; "Sales Line"."Unit Price")
            {
            }
            column(Amount; "Sales Line".Amount)
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        "-----": Integer;
        Emp: Record Employee;
        TotRem: Decimal;
        TotAmt: Decimal;
}

