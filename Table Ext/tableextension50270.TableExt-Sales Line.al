tableextension 50270 tableextension50270 extends "Sales Line"
{
    fields
    {
        modify("Document Type")
        {
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Appraisal';

            //Unsupported feature: Property Modification (OptionString) on ""Document Type"(Field 1)".

        }
        modify(Type)
        {
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item),Skill,Performance';

            //Unsupported feature: Property Modification (OptionString) on "Type(Field 5)".

        }
        modify("Location Code")
        {
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false),
                                            "Location Type" = FILTER(Store));
        }

        //Unsupported feature: Property Modification (Data type) on ""Description 2"(Field 12)".


        //Unsupported feature: Property Insertion (Editable) on ""Unit Price"(Field 22)".


        //Unsupported feature: Property Insertion (Enabled) on ""Substitution Available"(Field 5702)".


        //Unsupported feature: Property Insertion (Enabled) on ""Qty. to Assign"(Field 5801)".


        //Unsupported feature: Property Insertion (Enabled) on ""Qty. Assigned"(Field 5802)".


        //Unsupported feature: Code Modification on ""No."(Field 6).OnValidate".

        //trigger "(Field 6)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesSetup;

        "No." := FindOrCreateRecordByNo("No.");
        #4..85
          PostingSetupMgt.CheckGenPostingSetupSalesAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
          PostingSetupMgt.CheckGenPostingSetupCOGSAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
          PostingSetupMgt.CheckVATPostingSetupSalesAccount("VAT Bus. Posting Group","VAT Prod. Posting Group");
        end;

        if HasTypeToFillMandatoryFields and (Type <> Type::"Fixed Asset") then
          Validate("VAT Prod. Posting Group");
        #93..112
          DimMgt.TypeToTableID3(Type),"No.",
          DATABASE::Job,"Job No.",
          DATABASE::"Responsibility Center","Responsibility Center");

        if "No." <> xRec."No." then begin
          if Type = Type::Item then
            if (Quantity <> 0) and ItemExists(xRec."No.") then begin
        #120..127
        end;

        UpdateItemCrossRef;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..88
        {<<<<<<<}
        end;
        if (Type <> Type::" ") and (Type<6)  then begin
        #90..115
        #117..130
        end;
        */
        //end;


        //Unsupported feature: Code Modification on ""Location Code"(Field 7).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        CheckAssocPurchOrder(FieldCaption("Location Code"));
        #4..61

        CheckWMS;

        if "Document Type" = "Document Type"::"Return Order" then
          ValidateReturnReasonCode(FieldNo("Location Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..64
        if "Document Type" = "Document Type"::Appraisal then
          ValidateReturnReasonCode(FieldNo("Location Code"));
        */
        //end;


        //Unsupported feature: Code Modification on ""Shipment Date"(Field 10).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        if CurrFieldNo <> 0 then
        #4..25
        AutoAsmToOrder;
        if (xRec."Shipment Date" <> "Shipment Date") and
           (Quantity <> 0) and
           not StatusCheckSuspended
        then
          CheckDateConflict.SalesLineCheck(Rec,CurrFieldNo <> 0);

        if not PlannedShipmentDateCalculated then
          "Planned Shipment Date" := CalcPlannedShptDate(FieldNo("Shipment Date"));
        if not PlannedDeliveryDateCalculated then
          "Planned Delivery Date" := CalcPlannedDeliveryDate(FieldNo("Shipment Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..28
           (Reserve <> Reserve::Never) and
        #29..36
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 15).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;

        #4..43
        if (xRec.Quantity <> Quantity) or (xRec."Quantity (Base)" <> "Quantity (Base)") then begin
          InitOutstanding;
          if IsCreditDocType then
            InitQtyToReceive
          else
            InitQtyToShip;
        #50..92
        UpdatePlanned;
        if "Document Type" = "Document Type"::"Return Order" then
          ValidateReturnReasonCode(FieldNo(Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..46
        {<<<<<<<}
        #47..95
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit Price"(Field 22).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Validate("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Line Discount %");

        userrec.Get(UserId);//Nitin
        if not userrec."Sales Price" then
        Error('You are not Authorized to Change');
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit Cost (LCY)"(Field 23).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if (CurrFieldNo = FieldNo("Unit Cost (LCY)")) and
           ("Unit Cost (LCY)" <> xRec."Unit Cost (LCY)")
        then
        #4..9
          GetItem(Item);
          if (Item."Costing Method" = Item."Costing Method"::Standard) and not IsShipment then begin
            if IsCreditDocType then
              Error(
                Text037,
                FieldCaption("Unit Cost (LCY)"),Item.FieldCaption("Costing Method"),
        #16..31
              Currency."Unit-Amount Rounding Precision")
        end else
          "Unit Cost" := "Unit Cost (LCY)";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..12
        {<<<<<<<}
        #13..34
        if "Gen. Prod. Posting Group" = 'FIS' then
          begin
            "Unit Cost" := 0;
            "Unit Cost (LCY)" := 0;
          end;// AAA
        */
        //end;


        //Unsupported feature: Code Modification on ""Appl.-to Item Entry"(Field 38).OnValidate".

        //trigger -to Item Entry"(Field 38)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Appl.-to Item Entry" <> 0 then begin
          AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);

          TestField(Type,Type::Item);
          TestField(Quantity);
          if IsCreditDocType then begin
            if Quantity > 0 then
              FieldError(Quantity,Text030);
          end else begin
        #10..22
          if not ItemLedgEntry.Open then
            Message(Text042,"Appl.-to Item Entry");
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..6
        {<<<<<<<}
        #7..25
        */
        //end;


        //Unsupported feature: Code Modification on ""Gen. Bus. Posting Group"(Field 74).OnValidate".

        //trigger  Bus()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type<6 then //AAA
        #1..3
        */
        //end;


        //Unsupported feature: Code Modification on ""Gen. Prod. Posting Group"(Field 75).OnValidate".

        //trigger  Prod()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type<6 then //AAA
        #1..5
        */
        //end;


        //Unsupported feature: Code Modification on ""Deferral Code"(Field 1700).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        OnGetDeferralPostDate(SalesHeader,DeferralPostDate,Rec);
        if DeferralPostDate = 0D then
        #4..8
          GetDeferralAmount,DeferralPostDate,
          Description,SalesHeader."Currency Code");

        if "Document Type" = "Document Type"::"Return Order" then
          "Returns Deferral Start Date" :=
            DeferralUtilities.GetDeferralStartDate(DeferralUtilities.GetSalesDeferralDocType,
              "Document Type","Document No.","Line No.","Deferral Code",SalesHeader."Posting Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..11
        if "Document Type" = "Document Type"::Appraisal then
        #13..15
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit of Measure Code"(Field 5407).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        TestField("Quantity Shipped",0);
        TestField("Qty. Shipped (Base)",0);
        TestField("Return Qty. Received",0);
        TestField("Return Qty. Received (Base)",0);
        if "Unit of Measure Code" <> xRec."Unit of Measure Code" then begin
          TestField("Shipment No.",'');
          TestField("Return Receipt No.",'');
        #10..62
            "Qty. per Unit of Measure" := 1;
        end;
        Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        #7..65
        */
        //end;


        //Unsupported feature: Code Modification on ""Planned Shipment Date"(Field 5795).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        if "Planned Shipment Date" <> 0D then begin
          PlannedShipmentDateCalculated := true;

          Validate("Shipment Date",CalcShipmentDate);
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
         // VALIDATE("Shipment Date",CalcShipmentDate);
        end;
        */
        //end;
        field(50003; xx; Decimal)
        {
        }
        field(50004; xx2; Decimal)
        {
        }
        field(50300; Grade; Option)
        {
            Description = ',Excellent,Good,Average,Poor';
            OptionMembers = " ",Excellent,Good,"Average",Poor;

            trigger OnValidate()
            begin
                //Univision Start 24/10/01 Yusuf
                Validate(Quantity, 0);
                TTSkill := 0;
                TTPerformance := 0;
                case Type of
                    Type::Resource:
                        case Grade of
                            Grade::" ":
                                Validate(Quantity, 0);
                            Grade::Excellent:
                                begin
                                    Validate(Quantity, 4);
                                    TTSkill := 4;
                                end;
                            Grade::Good:
                                begin
                                    Validate(Quantity, 3);
                                    TTSkill := 4;
                                end;
                            Grade::Average:
                                begin
                                    Validate(Quantity, 2);
                                    TTSkill := 4;
                                end;
                            Grade::Poor:
                                begin
                                    Validate(Quantity, 1);
                                    TTSkill := 4;
                                end;
                        end;
                    Type::Item:
                        case Grade of
                            Grade::" ":
                                Validate(Quantity, 0);
                            Grade::Excellent:
                                begin
                                    Validate(Quantity, 4);
                                    TTPerformance := 4;
                                end;
                            Grade::Good:
                                begin
                                    Validate(Quantity, 3);
                                    TTPerformance := 4;
                                end;
                            Grade::Average:
                                begin
                                    Validate(Quantity, 2);
                                    TTPerformance := 4;
                                end;
                            Grade::Poor:
                                begin
                                    Validate(Quantity, 1);
                                    TTPerformance := 4;
                                end;
                        end;

                end;
                //Univision Finish 24/10/01
            end;
        }
        field(50301; Comment; Text[80])
        {
        }
        field(50302; quantity1; Decimal)
        {
            Description = 'Used by Performance score for sum';
        }
        field(50303; TTSkill; Decimal)
        {
            Description = 'Used by skill score for sums';
        }
        field(50304; TTPerformance; Decimal)
        {
            Description = 'used by performance total for sum';
        }
        field(50350; Numbers; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Description = 'factor of Quantity';

            trigger OnValidate()
            begin
                //IF Numbers<>0 THEN Packing:=Quantity/Numbers ELSE  Packing:=0;
            end;
        }
        field(50351; Packing; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Description = 'factor of Quantity';

            trigger OnValidate()
            begin
                //IF Packing<>0 THEN Numbers:=Quantity/Packing ELSE  Numbers:=0;
            end;
        }
        field(50352; "Pack Size"; Code[10])
        {

            trigger OnValidate()
            begin
                if UnitOfMeasure.Get("Pack Size") then "Pack Size Code" := UnitOfMeasure."Catch Code";
            end;
        }
        field(50353; Brand; Code[10])
        {
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                "Brand Code" := CopyStr(Brand, 1, 1);
            end;
        }
        field(50354; "Pack Size Code"; Code[1])
        {
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));
        }
        field(50355; "Brand Code"; Code[1])
        {
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));
        }
        field(50356; ProdCd; Code[3])
        {
            TableRelation = Item;
        }
        field(50357; "On Pallet"; Option)
        {
            OptionMembers = Yes,No,"Part";
        }
        field(50359; "Item Category Code Sort"; Code[15])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(50360; Explodedline; Boolean)
        {
        }
        field(50361; "Payment Type"; Code[10])
        {
        }
    }
    keys
    {
        key(ASLKey1; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Bin Code", "Shipment Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        // key(Key2; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Shipment Date")
        // {
        //     SumIndexFields = Quantity, quantity1, TTSkill, TTPerformance;
        // }
        // key(Key3; "Document No.", Type)
        // {
        // }
        // key(Key4; "Document Type", "Document No.", Type, "Item Category Code Sort", "Pack Size", Brand)
        // {
        //     SumIndexFields = Quantity, Packing;
        // }
        // key(Key5; "Document Type", "Document No.", Explodedline)
        // {
        // }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;

    if (Quantity <> 0) and ItemExists("No.") then begin
      ReserveSalesLine.DeleteLine(Rec);
    #5..33

    if Type = Type::"Charge (Item)" then
      DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");

    CapableToPromise.RemoveReqLines("Document No.","Line No.",0,false);

    #40..70
      DeferralUtilities.DeferralCodeOnDelete(
        DeferralUtilities.GetSalesDeferralDocType,'','',
        "Document Type","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatusOpen;

       //ReturnCheckReturn.SalesLineDelete(Rec);       blocked by santus 20-10-05
    #2..36
    //DistIntegration.RetCheckSalesLineDelete(Rec);         blocked by santus 20-10-05
    #37..73
    */
    //end;

    //Unsupported feature: Property Modification (Attributes) on "InitOutstanding(PROCEDURE 16)".



    //Unsupported feature: Code Modification on "MaxQtyToInvoice(PROCEDURE 18)".

    //procedure MaxQtyToInvoice();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeMaxQtyToInvoice(Rec,MaxQty,IsHandled);
    if IsHandled then
      exit(MaxQty);

    if "Prepayment Line" then
      exit(1);

    if IsCreditDocType then
      exit("Return Qty. Received" + "Return Qty. to Receive" - "Quantity Invoiced");

    exit("Quantity Shipped" + "Qty. to Ship" - "Quantity Invoiced");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..7
    #9..12
    */
    //end;


    //Unsupported feature: Code Modification on "ShowMessageOnce(PROCEDURE 229)".

    //procedure ShowMessageOnce();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TempErrorMessage.SetContext(Rec);
    if TempErrorMessage.FindRecord(RecordId,0,TempErrorMessage."Message Type"::Warning,MessageText) = 0 then begin
      TempErrorMessage.LogMessage(Rec,0,TempErrorMessage."Message Type"::Warning,MessageText);
      Message(MessageText);
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //TempErrorMessage.SetContext(Rec);
    //IF TempErrorMessage.FindRecord(RECORDID,0,TempErrorMessage."Message Type"::Warning,MessageText) = 0 THEN
    begin
    #3..5
    */
    //end;

    //Unsupported feature: Property Modification (Attributes) on "UpdatePrepmtSetupFields(PROCEDURE 102)".


    //Unsupported feature: Variable Insertion (Variable: CalledByDateField) (VariableCollection) on "CheckItemAvailable(PROCEDURE 4)".



    //Unsupported feature: Code Modification on "CheckItemAvailable(PROCEDURE 4)".

    //procedure CheckItemAvailable();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeCheckItemAvailable(Rec,CalledByFieldNo,IsHandled,CurrFieldNo);
    if IsHandled then
    #4..20
       ("Job Contract Entry No." = 0) and
       not "Special Order"
    then begin
      if ItemCheckAvail.SalesLineCheck(Rec) then
        ItemCheckAvail.RaiseUpdateInterruptedError;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..23
      CalledByDateField :=
        CalledByFieldNo in [FieldNo("Shipment Date"),FieldNo("Requested Delivery Date"),FieldNo("Promised Delivery Date"),
                            FieldNo("Planned Shipment Date"),FieldNo("Planned Delivery Date")];
    #24..26
    */
    //end;

    //Unsupported feature: Property Modification (Attributes) on "CalcPlannedDeliveryDate(PROCEDURE 92)".


    //Unsupported feature: Property Insertion (Local) on "CalcPlannedDeliveryDate(PROCEDURE 92)".


    //Unsupported feature: Property Modification (Attributes) on "CalcPlannedShptDate(PROCEDURE 93)".


    //Unsupported feature: Property Insertion (Local) on "CalcPlannedShptDate(PROCEDURE 93)".


    //Unsupported feature: Property Modification (Attributes) on "CalcShipmentDate(PROCEDURE 111)".


    //Unsupported feature: Property Modification (Name) on "CalcShipmentDate(PROCEDURE 111)".


    //Unsupported feature: Property Insertion (Local) on "CalcShipmentDate(PROCEDURE 111)".



    //Unsupported feature: Code Modification on "CalcShipmentDate(PROCEDURE 111)".

    //procedure CalcShipmentDate();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Planned Shipment Date" = 0D then
      exit("Shipment Date");

    IsHandled := false;
    OnCalcShipmentDateOnPlannedShipmentDate(Rec,ShipmentDate,IsHandled);
    if IsHandled then
      exit(ShipmentDate);

    if Format("Outbound Whse. Handling Time") <> '' then
      exit(
        CalendarMgmt.CalcDateBOC2(
          Format("Outbound Whse. Handling Time"),
          "Planned Shipment Date",
    #14..16
          CalChange."Source Type"::"Shipping Agent",
          "Shipping Agent Code",
          "Shipping Agent Service Code",
          false));

    exit(
      CalendarMgmt.CalcDateBOC(
        Format(Format('')),
        "Planned Shipment Date",
    #26..28
        CalChange."Source Type"::Location,
        "Location Code",
        '',
        false));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Planned Shipment Date" = 0D then
      exit;
    #3..5
    if IsHandled then  exit;

    if Format("Outbound Whse. Handling Time") <> '' then
      exit;
    #11..19
          false);

    exit;
    #23..31
        false);
    */
    //end;


    //Unsupported feature: Code Modification on "SignedXX(PROCEDURE 20)".

    //procedure SignedXX();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Quote,
      "Document Type"::Order,
      "Document Type"::Invoice,
      "Document Type"::"Blanket Order":
        exit(-Value);
      "Document Type"::"Return Order",
      "Document Type"::"Credit Memo":
        exit(Value);
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
      "Document Type"::Appraisal,
    #8..10
    */
    //end;


    //Unsupported feature: Code Modification on "ShowItemChargeAssgnt(PROCEDURE 5801)".

    //procedure ShowItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Get("Document Type","Document No.","Line No.");
    TestField("No.");
    TestField(Quantity);

    if Type <> Type::"Charge (Item)" then begin
      ErrorMsg := Format(ItemChargeAssignmentErr);
      Message(ErrorMsg);
    #8..50
    ItemChargeAssgnts.Initialize(Rec,ItemChargeAssgntLineAmt);
    ItemChargeAssgnts.RunModal;
    CalcFields("Qty. to Assign");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;

    #5..53
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateItemChargeAssgnt(PROCEDURE 5807)".

    //procedure UpdateItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Document Type" = "Document Type"::"Blanket Order" then
      exit;

    CalcFields("Qty. Assigned","Qty. to Assign");
    if Abs("Quantity Invoiced") > Abs(("Qty. Assigned" + "Qty. to Assign")) then
      Error(Text055,FieldCaption("Quantity Invoiced"),FieldCaption("Qty. Assigned"),FieldCaption("Qty. to Assign"));

    ItemChargeAssgntSales.Reset;
    ItemChargeAssgntSales.SetRange("Document Type","Document Type");
    ItemChargeAssgntSales.SetRange("Document No.","Document No.");
    ItemChargeAssgntSales.SetRange("Document Line No.","Line No.");
    ItemChargeAssgntSales.CalcSums("Qty. to Assign");
    TotalQtyToAssign := ItemChargeAssgntSales."Qty. to Assign";
    if (CurrFieldNo <> 0) and (Amount <> xRec.Amount) and
       not ((Quantity <> xRec.Quantity) and (TotalQtyToAssign = 0))
    then begin
      ItemChargeAssgntSales.SetFilter("Qty. Assigned",'<>0');
      if not ItemChargeAssgntSales.IsEmpty then
        Error(Text026,
          FieldCaption(Amount));
      ItemChargeAssgntSales.SetRange("Qty. Assigned");
    end;

    if ItemChargeAssgntSales.FindSet(true) then begin
      GetSalesHeader;
      TotalAmtToAssign := CalcTotalAmtToAssign(TotalQtyToAssign);
      repeat
        ShareOfVAT := 1;
        if SalesHeader."Prices Including VAT" then
          ShareOfVAT := 1 + "VAT %" / 100;
        if Quantity <> 0 then
          if ItemChargeAssgntSales."Unit Cost" <>
             Round(CalcLineAmount / Quantity / ShareOfVAT,Currency."Unit-Amount Rounding Precision")
          then
            ItemChargeAssgntSales."Unit Cost" :=
              Round(CalcLineAmount / Quantity / ShareOfVAT,Currency."Unit-Amount Rounding Precision");
        if TotalQtyToAssign <> 0 then begin
          ItemChargeAssgntSales."Amount to Assign" :=
            Round(ItemChargeAssgntSales."Qty. to Assign" / TotalQtyToAssign * TotalAmtToAssign,
              Currency."Amount Rounding Precision");
          TotalQtyToAssign -= ItemChargeAssgntSales."Qty. to Assign";
          TotalAmtToAssign -= ItemChargeAssgntSales."Amount to Assign";
        end;
        ItemChargeAssgntSales.Modify;
      until ItemChargeAssgntSales.Next = 0;
      CalcFields("Qty. to Assign");
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;
    //IF "Document Type" = "Document Type"::"Blanket Order" THEN
    //  EXIT;
    //
    //{<<<<<<<}
    //CALCFIELDS("Qty. Assigned","Qty. to Assign");
    //IF ABS("Quantity Invoiced") > ABS(("Qty. Assigned" + "Qty. to Assign")) THEN
    //  ERROR(Text055,FIELDCAPTION("Quantity Invoiced"),FIELDCAPTION("Qty. Assigned"),FIELDCAPTION("Qty. to Assign"));
    //
    //ItemChargeAssgntSales.RESET;
    //ItemChargeAssgntSales.SETRANGE("Document Type","Document Type");
    //ItemChargeAssgntSales.SETRANGE("Document No.","Document No.");
    //ItemChargeAssgntSales.SETRANGE("Document Line No.","Line No.");
    //ItemChargeAssgntSales.CALCSUMS("Qty. to Assign");
    //TotalQtyToAssign := ItemChargeAssgntSales."Qty. to Assign";
    //IF (CurrFieldNo <> 0) AND (Amount <> xRec.Amount) AND
    //   NOT ((Quantity <> xRec.Quantity) AND (TotalQtyToAssign = 0))
    //THEN BEGIN
    //  ItemChargeAssgntSales.SETFILTER("Qty. Assigned",'<>0');
    //  IF NOT ItemChargeAssgntSales.ISEMPTY THEN
    //    ERROR(Text026,
    //      FIELDCAPTION(Amount));
    //  ItemChargeAssgntSales.SETRANGE("Qty. Assigned");
    //END;
    //
    //IF ItemChargeAssgntSales.FINDSET(TRUE) THEN BEGIN
    //  GetSalesHeader;
    //  TotalAmtToAssign := CalcTotalAmtToAssign(TotalQtyToAssign);
    //  REPEAT
    //    ShareOfVAT := 1;
    //    IF SalesHeader."Prices Including VAT" THEN
    //      ShareOfVAT := 1 + "VAT %" / 100;
    //    IF Quantity <> 0 THEN
    //      IF ItemChargeAssgntSales."Unit Cost" <>
    //         ROUND(CalcLineAmount / Quantity / ShareOfVAT,Currency."Unit-Amount Rounding Precision")
    //      THEN
    //        ItemChargeAssgntSales."Unit Cost" :=
    //{>>>>>>>} ORIGINAL
    //          ROUND(("Line Amount" - "Inv. Discount Amount") / Quantity / ShareOfVAT,
    //            Currency."Unit-Amount Rounding Precision");
    //    IF TotalQtyToAssign <> 0 THEN BEGIN
    //{=======} MODIFIED
    //          ROUND(("Line Amount" - "Inv. Discount Amount") / Quantity / ShareOfVAT,
    //            Currency."Unit-Amount Rounding Precision");
    //    IF TotalQtyToAssign > 0 THEN BEGIN
    //{=======} TARGET
    //          ROUND(CalcLineAmount / Quantity / ShareOfVAT,Currency."Unit-Amount Rounding Precision");
    //    IF TotalQtyToAssign <> 0 THEN BEGIN
    //{<<<<<<<}
    //      ItemChargeAssgntSales."Amount to Assign" :=
    //        ROUND(ItemChargeAssgntSales."Qty. to Assign" / TotalQtyToAssign * TotalAmtToAssign,
    //          Currency."Amount Rounding Precision");
    //      TotalQtyToAssign -= ItemChargeAssgntSales."Qty. to Assign";
    //      TotalAmtToAssign -= ItemChargeAssgntSales."Amount to Assign";
    //    END;
    //    ItemChargeAssgntSales.MODIFY;
    //  UNTIL ItemChargeAssgntSales.NEXT = 0;
    //  CALCFIELDS("Qty. to Assign");
    //END;
    */
    //end;


    //Unsupported feature: Code Modification on "DeleteItemChargeAssgnt(PROCEDURE 5802)".

    //procedure DeleteItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemChargeAssgntSales.SetRange("Applies-to Doc. Type",DocType);
    ItemChargeAssgntSales.SetRange("Applies-to Doc. No.",DocNo);
    ItemChargeAssgntSales.SetRange("Applies-to Doc. Line No.",DocLineNo);
    if not ItemChargeAssgntSales.IsEmpty then
      ItemChargeAssgntSales.DeleteAll(true);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*

    if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;

    #1..5
    */
    //end;


    //Unsupported feature: Code Modification on "DeleteChargeChargeAssgnt(PROCEDURE 5804)".

    //procedure DeleteChargeChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if DocType <> "Document Type"::"Blanket Order" then
      if "Quantity Invoiced" <> 0 then begin
        CalcFields("Qty. Assigned");
        TestField("Qty. Assigned","Quantity Invoiced");
    #5..11
      ItemChargeAssgntSales.DeleteAll;

    OnAfterDeleteChargeChargeAssgnt(Rec,xRec,CurrFieldNo);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if DocType <> "Document Type"::"Blanket Order" then
      if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;
    #2..14
    */
    //end;


    //Unsupported feature: Code Modification on "CalcVATAmountLines(PROCEDURE 35)".

    //procedure CalcVATAmountLines();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if IsCalcVATAmountLinesHandled(SalesHeader,SalesLine,VATAmountLine) then
      exit;

    #4..68
              QtyType::Shipping:
                begin
                  if "Document Type" in
                     ["Document Type"::"Return Order","Document Type"::"Credit Memo"]
                  then begin
                    QtyToHandle := "Return Qty. to Receive";
                    VATAmountLine.Quantity += "Return Qty. to Receive (Base)";
    #76..101
      end;

    OnAfterCalcVATAmountLines(SalesHeader,SalesLine,VATAmountLine,QtyType);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..71
                     ["Document Type"::Appraisal,"Document Type"::"Credit Memo"]
    #73..104
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateWithWarehouseShip(PROCEDURE 41)".

    //procedure UpdateWithWarehouseShip();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if Type = Type::Item then
      case true of
        ("Document Type" in ["Document Type"::Quote,"Document Type"::Order]) and (Quantity >= 0):
    #4..9
            Validate("Qty. to Ship",0)
          else
            Validate("Qty. to Ship","Outstanding Quantity");
        ("Document Type" = "Document Type"::"Return Order") and (Quantity >= 0):
          if Location.RequireReceive("Location Code") then
            Validate("Return Qty. to Receive",0)
          else
            Validate("Return Qty. to Receive","Outstanding Quantity");
        ("Document Type" = "Document Type"::"Return Order") and (Quantity < 0):
          if Location.RequireShipment("Location Code") then
            Validate("Return Qty. to Receive",0)
          else
    #22..24
    SetDefaultQuantity;

    OnAfterUpdateWithWarehouseShip(SalesHeader,Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..12
        ("Document Type" = "Document Type"::Appraisal) and (Quantity >= 0):
    #14..17
        ("Document Type" = "Document Type"::Appraisal) and (Quantity < 0):
    #19..27
    */
    //end;


    //Unsupported feature: Code Modification on "CheckWarehouse(PROCEDURE 46)".

    //procedure CheckWarehouse();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetLocation("Location Code");
    if "Location Code" = '' then begin
      WhseSetup.Get;
    #4..8
      Location2 := Location;

    DialogText := Text035;
    if ("Document Type" in ["Document Type"::Order,"Document Type"::"Return Order"]) and
       Location2."Directed Put-away and Pick"
    then begin
      ShowDialog := ShowDialog::Error;
      if (("Document Type" = "Document Type"::Order) and (Quantity >= 0)) or
         (("Document Type" = "Document Type"::"Return Order") and (Quantity < 0))
      then
        DialogText :=
          DialogText + Location2.GetRequirementText(Location2.FieldNo("Require Shipment"))
    #21..23
    end else begin
      if (("Document Type" = "Document Type"::Order) and (Quantity >= 0) and
          (Location2."Require Shipment" or Location2."Require Pick")) or
         (("Document Type" = "Document Type"::"Return Order") and (Quantity < 0) and
          (Location2."Require Shipment" or Location2."Require Pick"))
      then begin
        if WhseValidateSourceLine.WhseLinesExist(
    #31..50

      if (("Document Type" = "Document Type"::Order) and (Quantity < 0) and
          (Location2."Require Receive" or Location2."Require Put-away")) or
         (("Document Type" = "Document Type"::"Return Order") and (Quantity >= 0) and
          (Location2."Require Receive" or Location2."Require Put-away"))
      then begin
        if WhseValidateSourceLine.WhseLinesExist(
    #58..86
    end;

    HandleDedicatedBin(true);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11
    if ("Document Type" in ["Document Type"::Order,"Document Type"::Appraisal]) and
    #13..16
         (("Document Type" = "Document Type"::Appraisal) and (Quantity < 0))
    #18..26
         (("Document Type" = "Document Type"::Appraisal) and (Quantity < 0) and
    #28..53
         (("Document Type" = "Document Type"::Appraisal) and (Quantity >= 0) and
    #55..89
    */
    //end;


    //Unsupported feature: Code Modification on "IsInbound(PROCEDURE 97)".

    //procedure IsInbound();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Order,"Document Type"::Invoice,"Document Type"::Quote,"Document Type"::"Blanket Order":
        exit("Quantity (Base)" < 0);
      "Document Type"::"Return Order","Document Type"::"Credit Memo":
        exit("Quantity (Base)" > 0);
    end;

    exit(false);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
      "Document Type"::Appraisal,"Document Type"::"Credit Memo":
    #5..8
    */
    //end;


    //Unsupported feature: Code Modification on "CheckApplFromItemLedgEntry(PROCEDURE 157)".

    //procedure CheckApplFromItemLedgEntry();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Appl.-from Item Entry" = 0 then
      exit;

    #4..6
    TestField(Type,Type::Item);
    TestField(Quantity);
    if IsCreditDocType then begin
      if Quantity < 0 then
        FieldError(Quantity,Text029);
    end else begin
    #13..25
        Text046,
        -ItemLedgEntry.Quantity,ItemLedgEntry.FieldCaption("Document No."),
        ItemLedgEntry."Document No.");

    if IsCreditDocType then
      if Abs("Outstanding Qty. (Base)") > -ItemLedgEntry."Shipped Qty. Not Returned" then begin
        QtyNotReturned := ItemLedgEntry."Shipped Qty. Not Returned";
        QtyReturned := ItemLedgEntry.Quantity - ItemLedgEntry."Shipped Qty. Not Returned";
    #34..43
          -QtyReturned,ItemLedgEntry.FieldCaption("Document No."),
          ItemLedgEntry."Document No.",-QtyNotReturned);
      end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..9
    //{<<<<<<<}
    #10..28
    if IsCreditDocType then
    //{<<<<<<<}
    #31..46
    */
    //end;


    //Unsupported feature: Code Modification on "SetDefaultQuantity(PROCEDURE 62)".

    //procedure SetDefaultQuantity();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetSalesSetup;
    if SalesSetup."Default Quantity to Ship" = SalesSetup."Default Quantity to Ship"::Blank then begin
      if ("Document Type" = "Document Type"::Order) or ("Document Type" = "Document Type"::Quote) then begin
        "Qty. to Ship" := 0;
        "Qty. to Ship (Base)" := 0;
        "Qty. to Invoice" := 0;
        "Qty. to Invoice (Base)" := 0;
      end;
      if "Document Type" = "Document Type"::"Return Order" then begin
        "Return Qty. to Receive" := 0;
        "Return Qty. to Receive (Base)" := 0;
        "Qty. to Invoice" := 0;
        "Qty. to Invoice (Base)" := 0;
      end;
    end;

    OnAfterSetDefaultQuantity(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
      if "Document Type" = "Document Type"::Appraisal then begin
    #10..17
    */
    //end;


    //Unsupported feature: Code Modification on "ValidateReturnReasonCode(PROCEDURE 99)".

    //procedure ValidateReturnReasonCode();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeValidateReturnReasonCode(Rec,CallingFieldNo,IsHandled);
    if IsHandled then
    #4..13
    if ReturnReason.Get("Return Reason Code") then begin
      if (CallingFieldNo <> FieldNo("Location Code")) and (ReturnReason."Default Location Code" <> '') then
        Validate("Location Code",ReturnReason."Default Location Code");
      if ReturnReason."Inventory Value Zero" then
        Validate("Unit Cost (LCY)",0)
      else
        if "Unit Price" = 0 then
          UpdateUnitPrice(CallingFieldNo);
    end;

    OnAfterValidateReturnReasonCode(Rec,CallingFieldNo);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..16
      if ReturnReason."Inventory Value Zero" then begin
        Validate("Unit Cost (LCY)",0);
        Validate("Unit Price",0);
      end else
    #20..24
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateDeferralAmounts(PROCEDURE 105)".

    //procedure UpdateDeferralAmounts();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetSalesHeader;
    OnGetDeferralPostDate(SalesHeader,DeferralPostDate,Rec);
    if DeferralPostDate = 0D then
      DeferralPostDate := SalesHeader."Posting Date";
    AdjustStartDate := true;
    if "Document Type" = "Document Type"::"Return Order" then begin
      if "Returns Deferral Start Date" = 0D then
        "Returns Deferral Start Date" := SalesHeader."Posting Date";
      DeferralPostDate := "Returns Deferral Start Date";
    #10..13
      "Deferral Code",DeferralUtilities.GetSalesDeferralDocType,'','',
      "Document Type","Document No.","Line No.",
      GetDeferralAmount,DeferralPostDate,Description,SalesHeader."Currency Code",AdjustStartDate);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if "Document Type" = "Document Type"::Appraisal then begin
    #7..16
    */
    //end;


    //Unsupported feature: Code Modification on "InitDeferralCode(PROCEDURE 108)".

    //procedure InitDeferralCode();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Document Type" in
       ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::"Credit Memo","Document Type"::"Return Order"]
    then
      case Type of
        Type::"G/L Account":
    #6..11
        Type::Resource:
          Validate("Deferral Code",Res."Default Deferral Template Code");
      end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Document Type" in
       ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::"Credit Memo","Document Type"::Appraisal]
    #3..14
    */
    //end;


    //Unsupported feature: Code Modification on "IsCreditDocType(PROCEDURE 110)".

    //procedure IsCreditDocType();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    exit("Document Type" in ["Document Type"::"Return Order","Document Type"::"Credit Memo"]);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    exit("Document Type" in ["Document Type"::Appraisal,"Document Type"::"Credit Memo"]);
    */
    //end;

    procedure CalcShipmentDate1(): Date
    var
        ShipmentDate: Date;
        IsHandled: Boolean;
    begin
        if "Planned Shipment Date" = 0D then
            exit("Shipment Date");

        IsHandled := false;
      //***OnCalcShipmentDateOnPlannedShipmentDate(Rec, ShipmentDate, IsHandled);
        if IsHandled then
            exit(ShipmentDate);

        //***Revisit
        // if Format("Outbound Whse. Handling Time") <> '' then
        //     exit(
        //       CalendarMgmt.CalcDateBOC2(
        //         Format("Outbound Whse. Handling Time"),
        //         "Planned Shipment Date",
        //         CalChange."Source Type"::Location,
        //         "Location Code",
        //         '',
        //         CalChange."Source Type"::"Shipping Agent",
        //         "Shipping Agent Code",
        //         "Shipping Agent Service Code",
        //         false));

        // exit(
        //   CalendarMgmt.CalcDateBOC(
        //     Format(Format('')),
        //     "Planned Shipment Date",
        //     CalChange."Source Type"::"Shipping Agent",
        //     "Shipping Agent Code",
        //     "Shipping Agent Service Code",
        //     CalChange."Source Type"::Location,
        //     "Location Code",
        //     '',
        //     false));

        //***Revisit
    end;

    procedure "----"()
    begin
    end;

    procedure Addon()
    begin
        "Pack Size" := TempSalesLine."Pack Size";
        Brand := TempSalesLine.Brand;
        "Pack Size Code" := TempSalesLine."Pack Size Code";
        "Brand Code" := TempSalesLine."Brand Code";
        ProdCd := TempSalesLine.ProdCd;
    end;

    procedure CatSort()
    begin
        if "Postg Gropu".Get("Posting Group") then "Item Category Code Sort" := "Postg Gropu".Category;
    end;


    //Unsupported feature: Property Modification (Id) on "UnitPriceChangedMsg(Variable 1091)".

    //var
    //>>>> ORIGINAL VALUE:
    //UnitPriceChangedMsg : 1091;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UnitPriceChangedMsg : 1191;
    //Variable type has not been exported.

    var
        "-----": Text[30];
        TTSkill: Decimal;
        TTPerformance: Decimal;
        AppraiseRec: Record "Payroll-Lookup Lines.";
        "Postg Gropu": Record "Inventory Posting Group";
        "...................": Integer;
        ItemAvailByDate: Page "Item Availability by Periods";
        ItemAvailByVar: Page "Item Availability by Variant";
        ItemAvailByLoc: Page "Item Availability by Location";
       // "............": ;
        Text012: Label 'Change %1 from %2 to %3?';
        userrec: Record "User Setup";
        Customerrec: Record Customer;
        EditableCon: Boolean;
        TempSalesLine: Record "Sales Line";
        UnitOfMeasure: Record "Unit of Measure";
        CalendarMgmt: Codeunit "Calendar Management";
        CalChange: Record "Customized Calendar Change";
}

