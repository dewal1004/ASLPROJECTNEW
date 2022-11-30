reportextension 55000 "PurchaseGRN" extends "Purchase Document - Test"
{

    RDLCLayout = './ReportRdlc/PurchaseDocumentTest.rdlc';

    dataset
    {
        add("Purchase Header")
        {
            column(PreparedBy; PreparedBy) { }
            column(ApprovedBy; ApprovedBy) { }
            column(Signature; Signature) { }
            column(S_No;S_No) { }
            column(UOM;UOM) {}
            Column(Unit_Rate;Unit_Rate){}
            
        }
    }


    var
        Signature: Label 'Signature: ';
        ApprovedBy: Label 'Approved By: ';
        PreparedBy: Label 'Prepared By: ';
        S_No : integer;
        UOM : Code[20];
        Unit_Rate: Decimal ;
}
