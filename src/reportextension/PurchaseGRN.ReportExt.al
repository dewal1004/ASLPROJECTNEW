reportextension 55000 "PurchaseGRN" extends "Purchase Document - Test"
{

    // RDLCLayout = './ReportRdlc/PurchaseDocumentTest.rdlc';
    RDLCLayout = './src/reportextension/PurchaseDocumentTest.rdlc';
    


    dataset
    {
        add("Purchase Header")
        {
            column(PreparedBy; PreparedBy) { }
            column(CreatedBy; UserId) { }
            column(ApprovedBy; ApprovedBy) { }
            column(Signature; Signature) { }
        }


        add(RoundLoop)
        {
            column(S_No; S_No) { }
            column(UOM; "Purchase Line"."Unit of Measure") { }
            Column(Unit_Rate; "Purchase Line"."Unit Cost") { }
            column(UnitCostLCY_PurchaseLine; "Purchase Line"."Unit Cost (LCY)") { }
            column(OutstandingAmountLCY_PurchaseLine; "Purchase Line"."Outstanding Amount (LCY)") { }
            column(InvPosGrp; "Purchase Line"."Posting Group") { }
        }

       /* 
       modify(RoundLoop) 
        {
            trigger OnBeforePostDataItem()
            begin
                S_No := S_No+1;
            end;
        } 
        */


    }

    var
        Signature: Label 'Signature: ';
        ApprovedBy: Label 'Approved By: ';
        PreparedBy: Label 'Prepared By: ';
        CreatedBy: Label 'Created By';
        S_No: integer;
        UOM: Code[20];
        Unit_Rate: Decimal;

    
}
