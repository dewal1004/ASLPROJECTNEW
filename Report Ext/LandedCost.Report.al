report 50003 "Landed Cost"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = FIELD ("No.");
                DataItemTableView = SORTING ("Document Type", "Document No.", "Line No.") WHERE (Type = FILTER (<> " " & <> "G/L Account"), "Outstanding Quantity" = FILTER (<> 0));

                trigger OnAfterGetRecord()
                begin

                    "Purchase Header".TestField("Purchase Header"."Currency Code");
                    if L[1] <> 0 then "Purchase Line"."ActualCISS(LCY)" := (K[1] / L[1]) * "Purchase Line"."CISS(LCY)";
                    if L[2] <> 0 then "Purchase Line"."ActualDuty(LCY)" := (K[2] / L[2]) * "Purchase Line"."Duty(LCY)";
                    if L[3] <> 0 then "Purchase Line"."ActualEcowas Duty(LCY)" := (K[3] / L[3]) * "Purchase Line"."Ecowas Duty(LCY)";
                    if L[4] <> 0 then "Purchase Line"."ActualInsurance(LCY)" := (K[4] / L[4]) * "Purchase Line"."Insurance(LCY)";
                    if L[5] <> 0 then "Purchase Line"."ActualSurcharge Duty(LCY)" := (K[5] / L[5]) * "Purchase Line"."Surcharge Duty(LCY)";
                    if L[6] <> 0 then "Purchase Line"."ActualVat (LCY)" := (K[6] / L[6]) * "Purchase Line"."Vat (LCY)";
                    if L[7] <> 0 then "Purchase Line"."ActualFreight(LCY)" := (K[7] / L[7]) * "Purchase Line"."Freight(LCY)";
                    if L[8] <> 0 then "Purchase Line"."ActualAncillary(LCY)" := (K[8] / L[8]) * "Purchase Line"."Ancillary(LCY)";
                    if L[9] <> 0 then "Purchase Line"."ActualClearing(LCY)" := (K[9] / L[9]) * "Purchase Line"."Clearing(LCY)";
                    if L[10] <> 0 then "Purchase Line"."ActualInterest(LCY)" := (K[10] / L[10]) * "Purchase Line"."Interest(LCY)";

                    if "Purchase Line"."Qty. to Receive" = "Purchase Line"."Outstanding Quantity" then
                        J := "Purchase Line"."Outstanding Amount (LCY)"
                    else
                        J := "Purchase Line"."QtytoReceiveAmount(LCY)";

                    FOBx := J + "Purchase Line"."ActualFreight(LCY)" + "Purchase Line"."ActualAncillary(LCY)";
                    LandExtra := "Purchase Line"."ActualClearing(LCY)" + "Purchase Line"."ActualInterest(LCY)";

                    VatThis[1] := "Purchase Line"."ActualInsurance(LCY)";
                    VatThis[2] := "Purchase Line"."ActualDuty(LCY)";
                    VatThis[3] := "Purchase Line"."ActualSurcharge Duty(LCY)";
                    VatThis[4] := "Purchase Line"."ActualEcowas Duty(LCY)";
                    VatThis[5] := "Purchase Line"."ActualCISS(LCY)";
                    Vatables := FOBx + VatThis[1] + VatThis[2] + VatThis[3] + VatThis[4] + VatThis[5];

                    "Purchase Line"."ActualLandedAmount(LCY)" := Vatables + "Purchase Line"."ActualVat (LCY)" + LandExtra;
                    "Purchase Line"."ActualTotal Overhead(LCY)" := "Purchase Line"."ActualLandedAmount(LCY)" - J;
                    if J <> 0 then
                        "Purchase Line"."Indirect Cost %" := ("Purchase Line"."ActualTotal Overhead(LCY)" / J) * 100;
                    //    MESSAGE('Indirect % %1 and J is %2',"Purchase Line"."Indirect Cost %",J);
                    "Purchase Line".Validate("Purchase Line"."Indirect Cost %");
                    "Purchase Line".Modify(true);
                end;

                trigger OnPreDataItem()
                begin

                    "Purchase Header".CalcFields("Purchase Header".Amount,
                                                 "Purchase Header"."Total Amount account",
                                                 "Purchase Header".Overhead);
                    "Purchase Header".CalcFields("Purchase Header"."Total Amount Item (LCY)");
                    "Purchase Header".CalcFields("Purchase Header"."Total Amt. Item to Rec. (LCY)");

                    A := "Purchase Header".Amount;
                    B := "Purchase Header"."Total Amount account";
                    C := "Purchase Header".Overhead;
                    D := "Purchase Header"."Total Amount Item (LCY)";
                    E := "Purchase Header"."Total Amt. Item to Rec. (LCY)";

                    if E <> 0 then
                        Z := ((B + C) / E) * 100;
                    //MESSAGE('Value is %1',Z);
                    PurcSetup.Get;

                    //Standard Cost total for the lines
                    "Purchase Header".CalcFields("Purchase Header"."Freight(LCY)LT", "Purchase Header"."Ancillary(LCY)LT");
                    "Purchase Header".CalcFields("Purchase Header"."Duty(LCY)LT", "Purchase Header"."Insurance(LCY)LT");
                    "Purchase Header".CalcFields("Purchase Header"."Surcharge Duty(LCY)LT", "Purchase Header"."Ecowas Duty(LCY)LT");
                    "Purchase Header".CalcFields("Purchase Header"."CISS(LCYLT", "Purchase Header"."Vat (LCY)LT");
                    "Purchase Header".CalcFields("Purchase Header"."Clearing(LCY)LT", "Purchase Header"."Interest(LCY)LT");

                    L[1] := "Purchase Header"."CISS(LCYLT";
                    L[2] := "Purchase Header"."Duty(LCY)LT";
                    L[3] := "Purchase Header"."Ecowas Duty(LCY)LT";
                    L[4] := "Purchase Header"."Insurance(LCY)LT";
                    L[5] := "Purchase Header"."Surcharge Duty(LCY)LT";
                    L[6] := "Purchase Header"."Vat (LCY)LT";
                    L[7] := "Purchase Header"."Freight(LCY)LT";
                    L[8] := "Purchase Header"."Ancillary(LCY)LT";
                    L[9] := "Purchase Header"."Clearing(LCY)LT";
                    L[10] := "Purchase Header"."Interest(LCY)LT";

                    //Actual Cost retrieval from the GL
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'FREIGHT');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    F := "Purchase Header"."Actual Value";

                    K[7] := F + B;
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'ANCILLIARY');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    G := "Purchase Header"."Actual Value";
                    K[8] := G;
                    //MESSAGE('Value is %1', K[8]);

                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'CLEARING');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    H := "Purchase Header"."Actual Value";
                    K[9] := H;
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'INTEREST');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    I := "Purchase Header"."Actual Value";
                    K[10] := I;

                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'CISS');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    K[1] := "Purchase Header"."Actual Value";

                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'DUTY');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    K[2] := "Purchase Header"."Actual Value";
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'ECOWAS');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    K[3] := "Purchase Header"."Actual Value";
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'INSURANCE');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    K[4] := "Purchase Header"."Actual Value";
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'SURCHARGE');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    K[5] := "Purchase Header"."Actual Value";
                    "Purchase Header".SetFilter("Purchase Header"."Reason Code Filter", 'VAT');
                    "Purchase Header".CalcFields("Purchase Header"."Actual Value");
                    K[6] := "Purchase Header"."Actual Value";
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
        GenLed: Record "G/L Entry";
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
        K: array[10] of Decimal;
        L: array[10] of Decimal;
        X: Decimal;
        Y: Decimal;
        Z: Decimal;
        FOBx: Decimal;
        LandExtra: Decimal;
        Vatables: Decimal;
        VatThis: array[5] of Decimal;

    [Scope('Internal')]
    procedure BIN()
    begin
    end;
}

