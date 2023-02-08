codeunit 50038 "ProdOrderSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Prod. Order Component", 'OnBeforeUpdateUnitCost', '', true, true)]
    local procedure ProdOrderComponentOnBeforeUpdateUnitCost(GLSetup: Record "General Ledger Setup"; var IsHandled: Boolean; var ProdOrderComponent: Record "Prod. Order Component")
    begin
        IsHandled := true;
    with ProdOrderComponent do begin
        // Modify the ff lines to suit your use
        //if GetSKU() then
         //   "Unit Cost" := SKU."Unit Cost"
        //else
            "Unit Cost" := Item."Unit Cost";

        "Unit Cost" :=
          Round("Unit Cost" * "Qty. per Unit of Measure",
            GLSetup."Unit-Amount Rounding Precision");

        "Indirect Cost %" := Round(Item."Indirect Cost %", UOMMgt.QtyRndPrecision);

        "Overhead Rate" :=
          Round(Item."Overhead Rate" * "Qty. per Unit of Measure",
            GLSetup."Unit-Amount Rounding Precision");

        if "Unit Cost" <> 0 then        //Inserted By SSNL 21/07/22

        "Direct Unit Cost" :=
          Round(
            ("Unit Cost" - "Overhead Rate") / (1 + "Indirect Cost %" / 100),
            GLSetup."Unit-Amount Rounding Precision")
          else
          "Direct Unit Cost" := 0;  


    end;
    end;
    var
    Item: Record Item;
    GLSetup: Record "General Ledger Setup";
    SKU: Record "Stockkeeping Unit";
    UOMMgt: Codeunit "Unit of Measure Management";
}