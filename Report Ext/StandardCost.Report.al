report 50002 "Standard Cost"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Line No.") WHERE(Type = FILTER(<> " " & <> "G/L Account"), "Outstanding Quantity" = FILTER(<> 0));

                trigger OnAfterGetRecord()
                begin
                    "Purchase Line".Validate("Purchase Line".Quantity);

                    if "Purchase Header"."Total Amount Item (LCY)" <> 0 then begin
                        //   J:="Purchase Line"."Outstanding Amount (LCY)";        //old
                        //   X:=J/"Purchase Header"."Total Amount Item (LCY)";    //old
                        J := "Purchase Line"."QtytoReceiveAmount(LCY)";         //New
                                                                                // "Purchase Header".CALCFIELDS("Purchase Header"."Total Amt. Item to Rec. (LCY)");
                        if "Purchase Header"."Total Amt. Item to Rec. (LCY)" = 0 then
                            X := 0//ERROR('Total Amount Item to Rec. must not be zero')
                        else
                            X := J / "Purchase Header"."Total Amt. Item to Rec. (LCY)";      //New
                        "Purchase Line"."Freight(LCY)" := F * X;
                        "Purchase Line"."Ancillary(LCY)" := G * X;
                        FOBx := J + "Purchase Line"."Freight(LCY)" + "Purchase Line"."Ancillary(LCY)";
                        "Purchase Line"."Clearing(LCY)" := H * X;
                        "Purchase Line"."Interest(LCY)" := I * X;
                        LandExtra := "Purchase Line"."Clearing(LCY)" + "Purchase Line"."Interest(LCY)";

                        "Purchase Line"."Insurance(LCY)" := J * (PurcSetup."Insurance%" / 100);
                        "Purchase Line"."Duty(LCY)" := FOBx * ("Purchase Line"."Duty Rate%" / 100);
                        "Purchase Line"."Surcharge Duty(LCY)" := "Purchase Line"."Duty(LCY)" * (PurcSetup."Surchage Duty %" / 100);
                        "Purchase Line"."Ecowas Duty(LCY)" := FOBx * (PurcSetup."Ecowas Duty%" / 100);
                        "Purchase Line"."CISS(LCY)" := FOBx * (PurcSetup."CISS%" / 100);

                        VatThis[1] := "Purchase Line"."Insurance(LCY)";
                        VatThis[2] := "Purchase Line"."Duty(LCY)";
                        VatThis[3] := "Purchase Line"."Surcharge Duty(LCY)";
                        VatThis[4] := "Purchase Line"."Ecowas Duty(LCY)";
                        VatThis[5] := "Purchase Line"."CISS(LCY)";
                        Vatables := FOBx + VatThis[1] + VatThis[2] + VatThis[3] + VatThis[4] + VatThis[5];

                        "Purchase Line"."Vat (LCY)" := Vatables * PurcSetup."VAT%" / 100;
                        "Purchase Line"."LandedAmount(LCY)" := Vatables + "Purchase Line"."Vat (LCY)" + LandExtra;
                        "Purchase Line"."Total Overhead(LCY)" := "Purchase Line"."LandedAmount(LCY)" - J;
                        if J <> 0 then
                            "Purchase Line"."Indirect Cost %" := ("Purchase Line"."Total Overhead(LCY)" / J) * 100;


                    end;
                    if "Purchase Line".Type = "Purchase Line".Type::Item then
                        "Purchase Line".Validate("Purchase Line"."Indirect Cost %");
                    "Purchase Line".Modify(true);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                "Purchase Header".CalcFields("Purchase Header"."Total Amount Item (LCY)");
                "Purchase Header".CalcFields("Purchase Header"."Total Amt. Item to Rec. (LCY)");
                PurcSetup.Get;

                //Standard Cost
                F := "Purchase Header"."Total Freight (LCY)";
                G := "Purchase Header"."Total Ancillary Charges(LCY)";
                H := "Purchase Header"."Clearing(LCY)";
                I := "Purchase Header"."Interest Expense(LCY)";

                "Purchase Header".TestField("Purchase Header"."Currency Code");
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

