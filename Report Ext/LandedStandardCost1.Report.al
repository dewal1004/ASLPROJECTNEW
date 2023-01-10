report 90002 "Landed & Standard Cost1"
{
    ProcessingOnly = true;
    UseRequestPage = false;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", Type) WHERE(Type = FILTER(<> " " & <> "G/L Account"), "Outstanding Quantity" = FILTER(<> 0));

                trigger OnAfterGetRecord()
                begin
                    //{MESSAGE('THE VALUES ARE %1, %2, %3',B,C,E);}
                    /*"Purchase Header".TESTFIELD("Purchase Header"."Currency Code");
                    IF "Purchase Header"."Document Type"=1 THEN
                    BEGIN
                      Y:=Z;
                      IF "Purchase Line"."Qty. to Receive"=0 THEN Y:=0;
                      CASE "Purchase Header"."Landed Cost Factor" OF
                        0 :  "Purchase Line"."Indirect Cost %":=Y;
                      END {end case}
                    END;
                    
                    IF "Purchase Header"."Document Type"=0 THEN
                    BEGIN
                      IF "Purchase Header"."Total Amount Item (LCY)"<>0 THEN
                      BEGIN
                        J:="Purchase Line"."Outstanding Amount (LCY)";
                        X:=J/"Purchase Header"."Total Amount Item (LCY)";
                        "Purchase Line"."Freight(LCY)":=F*X;
                        "Purchase Line"."Ancillary(LCY)":=G*X;
                        FOBx:=J+"Purchase Line"."Freight(LCY)"+"Purchase Line"."Ancillary(LCY)";
                    
                        "Purchase Line"."Clearing(LCY)":=H*X;
                        "Purchase Line"."Interest(LCY)":=I*X;
                        LandExtra:="Purchase Line"."Clearing(LCY)"+"Purchase Line"."Interest(LCY)";
                    
                        "Purchase Line"."Insurance(LCY)":=J*PurcSetup."Insurance%"/100;
                        "Purchase Line"."Duty(LCY)":=FOBx*"Purchase Line"."Duty Rate%"/100;
                        "Purchase Line"."Surcharge Duty(LCY)":="Purchase Line"."Duty(LCY)"*PurcSetup."Surchage Duty %"/100;
                        "Purchase Line"."Ecowas Duty(LCY)":=FOBx*PurcSetup."Ecowas Duty%"/100;
                        "Purchase Line"."CISS(LCY)":=FOBx*PurcSetup."CISS%"/100;
                    
                        VatThis[1]:="Purchase Line"."Insurance(LCY)";
                        VatThis[2]:="Purchase Line"."Duty(LCY)";
                        VatThis[3]:="Purchase Line"."Surcharge Duty(LCY)";
                        VatThis[4]:="Purchase Line"."Ecowas Duty(LCY)";
                        VatThis[5]:="Purchase Line"."CISS(LCY)";
                        Vatables:=FOBx+VatThis[1]+VatThis[2]+VatThis[3]+VatThis[4]+VatThis[5];
                    
                        "Purchase Line"."Vat (LCY)":=Vatables*PurcSetup."VAT%"/100;
                        "Purchase Line"."LandedAmount(LCY)":=Vatables+"Purchase Line"."Vat (LCY)"+LandExtra;
                        "Purchase Line"."Total Overhead(LCY)":="Purchase Line"."LandedAmount(LCY)"-J;
                        IF J<>0 THEN
                           "Purchase Line"."Indirect Cost %":=("Purchase Line"."Total Overhead(LCY)"/J)*100;
                      END
                    END;
                    
                    {MESSAGE('Percentage value is %1',"Purchase Line"."Indirect Cost %");}
                    "Purchase Line".VALIDATE("Purchase Line"."Indirect Cost %");
                    "Purchase Line".MODIFY(TRUE);*///#dik

                end;

                trigger OnPostDataItem()
                begin
                    //MESSAGE('THE VALUES ARE %1, %2, %3',B,C,E);
                    //MESSAGE('Percentage value is %1',"Purchase Line"."Indirect Cost %");
                end;

                trigger OnPreDataItem()
                begin
                    /*"Purchase Header".CALCFIELDS("Purchase Header".Amount,
                                                 "Purchase Header"."Total Amount account",
                                                 "Purchase Header".Overhead);
                    "Purchase Header".CALCFIELDS("Purchase Header"."Total Amount Item (LCY)");
                    "Purchase Header".CALCFIELDS("Purchase Header"."Total Amt. Item to Rec. (LCY)");
                    
                    A:="Purchase Header".Amount;
                    B:="Purchase Header"."Total Amount account";
                    C:="Purchase Header".Overhead;
                    D:="Purchase Header"."Total Amount Item (LCY)";
                    E:="Purchase Header"."Total Amt. Item to Rec. (LCY)";
                    IF E <> 0 THEN
                      Z:=((B+C)/E)*100;
                    PurcSetup.GET;
                    
                    //Standard Cost
                    F:="Purchase Header"."Total Freight (LCY)";
                    G:="Purchase Header"."Total Ancillary Charges(LCY)";
                    H:="Purchase Header"."Clearing(LCY)";
                    I:="Purchase Header"."Interest Expense(LCY)";*///#dik

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

    var
        v: Record "G/L Entry";
        GITRec: Record "Reason Code";
        PurcSetup: Record "Purchases & Payables Setup";
        TotalCost: Decimal;
        TotalValue: Decimal;
        TotalQty: Decimal;
        TotalWeight: Decimal;
        LandedAmount: Decimal;
        xTotalQty: Integer;
        A: Decimal;
        B: Decimal;
        C: Decimal;
        D: Decimal;
        E: Decimal;
        F: Decimal;
        G: Decimal;
        H: Decimal;
        I: Decimal;
        J: Decimal;
        X: Decimal;
        Y: Decimal;
        Z: Decimal;
        FOBx: Decimal;
        LandExtra: Decimal;
        Vatables: Decimal;
        VatThis: array[5] of Decimal;

    //[Scope('OnPrem')]
    procedure BIN()
    begin
    end;
}

