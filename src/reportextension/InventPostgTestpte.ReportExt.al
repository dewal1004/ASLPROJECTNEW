reportextension 50001 "InventPostgTest_pte" extends "Inventory Posting - Test"
{
    RDLCLayout = './src/reportextension/InventoryPostgTest_pte.rdlc';

    dataset
    {
        add("Item Journal Batch")
        {
            column(IssuedBy; IssuedBy) { }
            column(ReceivedBy; ReceivedBy) { }
            column(ApprovedBy; ApprovedBy) { }

        }

        add("Item Journal Line")
        {
            column(Unit_of_Measure_Code; "Unit of Measure Code") { }
            Column(Location_Code; "Location Code") { }
            column(ExpenseCtr; ExpenseCtr) { }
            column(External_Document_No_; "External Document No.") { }
            column(ExtTxt; ExtTxt) { }
            column(DOcNo; DOcNo) { }
            column(ExternalDCNO; "External Document No.") { } 
        }
        
        modify("Item Journal Line")
        {
            trigger OnAfterPreDataItem()
            begin
                DOcNo := "Item Journal Line"."Document No.";
            end;

            trigger OnAfterAfterGetRecord()
            var
                Reatxt: Text;
                Locrec: Record Location;
                ReaCd: Record "Reason Code";
                ExtDoc: Record "Standard Sales Code";
                FA: Record "Fixed Asset";
                DimValCd: Record "Dimension Value";

            begin
                CASE "Reason Code" OF
                    'USAGEFA', 'CONVTFA':
                        IF FA.GET("External Document No.") THEN
                            ExtTxt := COPYSTR(DELCHR(FA.Description, '>') + ' - ' + FA."Serial No.", 1, 50);
                    'USAGERES', 'USAGEVES':
                        IF Locrec.GET("External Document No.") THEN
                            ExtTxt := COPYSTR(Locrec.Name, 1, 50);
                    'USAGEACHD', 'CRMISSUE', 'LNADJ':
                        IF ExtDoc.GET("External Document No.") THEN
                            ExtTxt := COPYSTR(ExtDoc.Description, 1, 50);
                    'USAGEOTR':
                        IF DimValCd.GET('DEPARTMENT', "External Document No.") THEN  //Revisit
                            ExtTxt := COPYSTR(DimValCd.Name, 1, 50);
                END;

                IF ReaCd.GET("Reason Code") THEN Reatxt := COPYSTR(ReaCd.Description, 1, 50);
            end;
        }
    }

    var
        IssuedBy: Label 'Issued By: ';
        ReceivedBy: Label 'Received By';
        ApprovedBy: Label 'Approved By: ';
        ExpenseCtr: Label 'Expense Centre';
        DOcNo: Code[50];
        ExtTxt: Text[50];
}