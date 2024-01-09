codeunit 50038 "ProdOrderSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Prod. Order Component", 'OnBeforeUpdateUnitCost', '', true, true)]
    local procedure ProdOrderComponentOnBeforeUpdateUnitCost(GLSetup: Record "General Ledger Setup"; var IsHandled: Boolean; var ProdOrderComponent: Record "Prod. Order Component")
    begin
        IsHandled := true;
        // Modify the ff lines to suit your use
        //if GetSKU() then
        //   "Unit Cost" := SKU."Unit Cost"
        //else
        ProdOrderComponent."Unit Cost" := Item."Unit Cost";

        ProdOrderComponent."Unit Cost" :=
          Round(ProdOrderComponent."Unit Cost" * ProdOrderComponent."Qty. per Unit of Measure",
            GLSetup."Unit-Amount Rounding Precision");

        ProdOrderComponent."Indirect Cost %" := Round(Item."Indirect Cost %", UOMMgt.QtyRndPrecision());

        ProdOrderComponent."Overhead Rate" :=
          Round(Item."Overhead Rate" * ProdOrderComponent."Qty. per Unit of Measure",
            GLSetup."Unit-Amount Rounding Precision");

        if ProdOrderComponent."Unit Cost" <> 0 then        //Inserted By SSNL 21/07/22

        ProdOrderComponent."Direct Unit Cost" :=
          Round(
            (ProdOrderComponent."Unit Cost" - ProdOrderComponent."Overhead Rate") / (1 + ProdOrderComponent."Indirect Cost %" / 100),
            GLSetup."Unit-Amount Rounding Precision")
        else
            ProdOrderComponent."Direct Unit Cost" := 0;
    end;

    var
        Item: Record Item;
        UOMMgt: Codeunit "Unit of Measure Management";
}