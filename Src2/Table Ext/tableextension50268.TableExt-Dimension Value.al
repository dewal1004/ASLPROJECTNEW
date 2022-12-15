tableextension 50268 tableextension50268 extends "Dimension Value"
{

    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestField("Dimension Code");
    TestField(Code);
    "Global Dimension No." := GetGlobalDimensionNo;

    if CostAccSetup.Get then begin
      CostAccMgt.UpdateCostCenterFromDim(Rec,Rec,0);
      CostAccMgt.UpdateCostObjectFromDim(Rec,Rec,0);
    end;

    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Dimension Code");
    TestField(Code);
    GLSetup.Get;
    "Global Dimension No." := 0;
    if GLSetup."Global Dimension 1 Code" = "Dimension Code" then
      "Global Dimension No." := 1;
    if GLSetup."Global Dimension 2 Code" = "Dimension Code" then
      "Global Dimension No." := 2;
    #4..10
    */
    //end;


    //Unsupported feature: Code Modification on "OnModify".

    //trigger OnModify()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Dimension Code" <> xRec."Dimension Code" then
      "Global Dimension No." := GetGlobalDimensionNo;
    if CostAccSetup.Get then begin
      CostAccMgt.UpdateCostCenterFromDim(Rec,xRec,1);
      CostAccMgt.UpdateCostObjectFromDim(Rec,xRec,1);
    end;

    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Dimension Code" <> xRec."Dimension Code" then begin
      GLSetup.Get;
      "Global Dimension No." := 0;
      if GLSetup."Global Dimension 1 Code" = "Dimension Code" then
        "Global Dimension No." := 1;
      if GLSetup."Global Dimension 2 Code" = "Dimension Code" then
        "Global Dimension No." := 2;
    end;
    #3..8
    */
    //end;

    var
        GLSetup: Record "General Ledger Setup";
}

