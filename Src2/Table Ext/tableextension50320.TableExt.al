tableextension 50320 "tableextension50320" extends "Warehouse Journal Line"
{

    //Unsupported feature: Code Modification on "SetUpAdjustmentBin(PROCEDURE 100)".

    //procedure SetUpAdjustmentBin();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    WhseJnlTemplate.Get("Journal Template Name");
    if WhseJnlTemplate.Type = WhseJnlTemplate.Type::Reclassification then
      exit;

    Location.Get("Location Code");
    #6..16
          "To Bin Code" := Bin.Code;
        end;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    WhseJnlTemplate.Get("Journal Template Name");
    if WhseJnlTemplate.Type <> WhseJnlTemplate.Type::Item then
    #3..19
    */
    //end;
}

