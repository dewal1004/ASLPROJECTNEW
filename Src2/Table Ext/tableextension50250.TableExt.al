tableextension 50250 "tableextension50250" extends "Requisition Line"
{
    fields
    {

        //Unsupported feature: Property Modification (Data type) on ""Production BOM Version Code"(Field 99000885)".


        //Unsupported feature: Property Modification (Data type) on ""Routing Version Code"(Field 99000886)".


        //Unsupported feature: Code Modification on ""No."(Field 5).OnValidate".

        //trigger "(Field 5)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckActionMessageNew;
        ReserveReqLine.VerifyChange(Rec,xRec);
        DeleteRelations;
        #4..35
        CreateDim(
          DimMgt.TypeToTableID3(Type),
          "No.",DATABASE::Vendor,"Vendor No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..38

        "Action Message":=1; {New}
        Validate("Requester ID",UserId);
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 8).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Quantity (Base)" := CalcBaseQty(Quantity);
        if Type = Type::Item then begin
          GetDirectCost(FieldNo(Quantity));
        #4..20
            end;
          ReserveReqLine.VerifyQuantity(Rec,xRec);
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..23


        if Type=2 then
        begin
          It.Get("No.");
          if It."Order Multiple" <>0 then Modus:=Quantity/It."Order Multiple";
          //IF Modus>ROUND(Modus, 0.001, '<') THEN
          //ERROR('The entry in not a multiple of order multiple given on Item table');
        end;
        */
        //end;


        //Unsupported feature: Code Modification on ""Vendor No."(Field 9).OnValidate".

        //trigger "(Field 9)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckActionMessageNew;
        "Order Address Code" := '';
        if "Vendor No." <> '' then
        #4..50
        CreateDim(
          DATABASE::Vendor,"Vendor No.",
          DimMgt.TypeToTableID3(Type),"No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..53

        if VendorRec.Get("Vendor No.") then "Vendor Name":=VendorRec.Name;
        */
        //end;
        field(50300; "Print Line"; Boolean)
        {
            InitValue = true;
        }
        field(50301; Approved; Boolean)
        {
        }
        field(50302; "Vendor Name"; Text[30])
        {
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ReqLine.Reset;
    ReqLine.Get("Worksheet Template Name","Journal Batch Name","Line No.");
    while (ReqLine.Next <> 0) and (ReqLine.Level > Level) do
    #4..8
    TestField("Reserved Qty. (Base)",0);

    DeleteRelations;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11


    //AAA Dec 2001
    if GLSetUp.Find('-') then ;
    if (UserId<>GLSetUp.Administrator) then Error('You can not delete Purch. Req. Lines');
    */
    //end;


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if CurrentKey <> Rec2.CurrentKey then begin
      Rec2 := Rec;
      Rec2.SetRecFilter;
    #4..10
    ReqWkshTmpl.Get("Worksheet Template Name");
    ReqWkshName.Get("Worksheet Template Name","Journal Batch Name");

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..13
    "Shortcut Dimension 2 Code":='ATLANTIC';
    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    */
    //end;


    //Unsupported feature: Code Modification on "TransferFromUnplannedDemand(PROCEDURE 46)".

    //procedure TransferFromUnplannedDemand();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Init;
    "Journal Batch Name" := GetJnlBatchNameForOrderPlanning;
    "Line No." := "Line No." + 10000;
    #4..8
    "Bin Code" := UnplannedDemand."Bin Code";
    Validate("No.");
    Validate("Variant Code",UnplannedDemand."Variant Code");
    UpdateDescription;
    "Unit Of Measure Code (Demand)" := UnplannedDemand."Unit of Measure Code";
    "Qty. per UOM (Demand)" := UnplannedDemand."Qty. per Unit of Measure";
    Reserve := UnplannedDemand.Reserve;
    #16..37
    "User ID" := UserId;

    OnAfterTransferFromUnplannedDemand(Rec,UnplannedDemand);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11
    Description := UnplannedDemand.Description;
    #13..40
    */
    //end;

    var
        "---": Text[30];
        It: Record Item;
        Modus: Decimal;
        "----": Text[30];
        GLSetUp: Record "General Ledger Setup";
        HR: Code[10];
        VendorRec: Record Vendor;
}

