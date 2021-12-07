table 50052 "Dynamics Procurement Register"
{

    fields
    {
        field(1; "Line No."; Integer)
        {
        }
        field(2; "Item No."; Code[20])
        {
            TableRelation = Item."No.";

            trigger OnValidate()
            begin
                if ItemRec.Get("Item No.") then begin
                    DPSHeader.Get("DPS Code");
                    "Location Code" := DPSHeader."Location Code";
                    if "Base Date" = 0D then
                        "Base Date" := DPSHeader."Base Date";
                    M1Date := CalcDate('-1M', "Base Date");
                    M3Date := CalcDate('-3M', "Base Date");
                    M6Date := CalcDate('-6M', "Base Date");
                    M12Date := CalcDate('-1Y', "Base Date");
                    Description := ItemRec.Description;
                    "Maximum Stock" := ItemRec."Maximum Inventory";
                    "Inventory Group" := ItemRec."Inventory Posting Group";
                    "Item Category" := ItemRec."Item Category Code";
                    ItemLedg.SetCurrentKey("Item No.", "Location Code", "Posting Date", Positive);
                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', M1Date, "Base Date");
                    if ItemLedg.FindFirst then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last Month Consumption" := -ItemLedg.Quantity;
                    end else
                        "Last Month Consumption" := 0;

                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', M3Date, "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last 3 Months Consumption" := -ItemLedg.Quantity;
                    end else
                        "Last 3 Months Consumption" := 0;
                    if "Last 3 Months Consumption" <> 0 then
                        "Ave. 3 Month Consumption" := "Last 3 Months Consumption" / 3;

                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', M6Date, "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last 6 Month Consumption" := -ItemLedg.Quantity;
                    end else
                        "Last 6 Month Consumption" := 0;
                    if "Last 6 Month Consumption" <> 0 then
                        "Ave. 6 Month Consumption" := "Last 6 Month Consumption" / 6;

                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', M12Date, "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last One Year Consumption" := -ItemLedg.Quantity;
                    end else
                        "Last One Year Consumption" := 0;
                    if "Last One Year Consumption" <> 0 then
                        "Ave. One Year Consumption" := "Last One Year Consumption" / 12;
                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', (CalcDate('-2Y', "Base Date")), "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last 2 Years Consumption" := -ItemLedg.Quantity;
                        if "Last 2 Years Consumption" <> 0 then
                            "Last 2 Years Monthly Average" := "Last 2 Years Consumption" / 24
                        else
                            "Last 2 Years Monthly Average" := 0;
                    end else
                        "Last 2 Years Consumption" := 0;

                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', (CalcDate('-3Y', "Base Date")), "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last 3 Years Consumption" := -ItemLedg.Quantity;
                    end else
                        "Last 3 Years Consumption" := 0;

                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', (CalcDate('-4Y', "Base Date")), "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last 4 Years Consumption" := -ItemLedg.Quantity;
                    end else
                        "Last 4 Years Consumption" := 0;

                    ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                    if "Location Code" <> '' then
                        ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                    ItemLedg.SetFilter(ItemLedg.Positive, '%1', false);
                    ItemLedg.SetFilter(ItemLedg."Posting Date", '%1..%2', (CalcDate('-5Y', "Base Date")), "Base Date");
                    if ItemLedg.FindSet then begin
                        ItemLedg.CalcSums(ItemLedg.Quantity);
                        "Last 5 Years Consumption" := -ItemLedg.Quantity;
                        if "Last 5 Years Consumption" <> 0 then
                            "Last 5 Years Monthly Average" := "Last 5 Years Consumption" / 60
                        else
                            "Last 5 Years Monthly Average" := 0;
                    end else
                        "Last 5 Years Consumption" := 0;
                end;
                ItemRec.SetFilter(ItemRec."Location Filter", "Location Code");
                ItemRec.SetFilter(ItemRec."No.", '%1', "Item No.");
                ItemRec.SetFilter(ItemRec."Date Filter", '..%1', "Base Date");
                ItemRec.CalcFields(ItemRec."Net Change", ItemRec."Qty. on Purch. Order", ItemRec."MR Approved Qty", ItemRec."MR Pending  Qty");
                "Available Quantity" := ItemRec."Net Change";
                "Pending Requisition" := ItemRec."MR Approved Qty";
                "Unit Price" := ItemRec."Last Direct Cost";
                ItemLedg.Reset;
                ItemLedg.SetCurrentKey(ItemLedg."Item No.", ItemLedg."Location Code", ItemLedg."Posting Date", ItemLedg."Entry Type");
                ItemLedg.SetRange(ItemLedg."Item No.", "Item No.");
                if "Location Code" <> '' then
                    ItemLedg.SetRange(ItemLedg."Location Code", "Location Code");
                ItemLedg.SetFilter(ItemLedg.Positive, '%1', true);
                ItemLedg.SetFilter(ItemLedg."Entry Type", '%1', ItemLedg."Entry Type"::Purchase);
                if ItemLedg.FindLast then begin
                    ItemLedg.CalcFields(ItemLedg."Cost Amount (Actual)");
                    if ItemLedg."Cost Amount (Actual)" > 0 then
                        "Unit Price" := ItemLedg."Cost Amount (Actual)" / ItemLedg.Quantity
                    else
                        "Unit Price" := ItemRec."Last Direct Cost";
                end;
                if "Available Quantity" <> 0 then begin
                    if "Ave. One Year Consumption" <> 0 then
                        "Available Stock Months" := Round(("Available Quantity" / "Ave. One Year Consumption"), 1.1, '=')
                    else
                        "Available Stock Months" := 999;
                    if ("Available Stock Months" > 0) and ("Available Stock Months" <= 6) then "Item Status" := "Item Status"::"Fast Moving";
                    if ("Available Stock Months" > 6) and ("Available Stock Months" <= 12) then "Item Status" := "Item Status"::"Slow Moving";
                    if ("Available Stock Months" > 12) and ("Available Stock Months" <= 24) then "Item Status" := "Item Status"::"Non Moving";
                    if "Available Stock Months" > 24 then "Item Status" := "Item Status"::Obsolete;
                end;
                Validate("Maximum Stock Period", DPSHeader."Maxmum Order Period");
            end;
        }
        field(3; Description; Text[50])
        {
        }
        field(4; "Location Code"; Code[20])
        {
            TableRelation = Location.Code;

            trigger OnValidate()
            begin
                Validate("Item No.");
            end;
        }
        field(5; "Available Quantity"; Decimal)
        {
        }
        field(6; "Pending Quantity"; Decimal)
        {
        }
        field(7; "Pending Requisition"; Decimal)
        {
        }
        field(8; "Last Month Consumption"; Decimal)
        {
        }
        field(9; "Last 3 Months Consumption"; Decimal)
        {
        }
        field(10; "Last 6 Month Consumption"; Decimal)
        {
        }
        field(11; "Last One Year Consumption"; Decimal)
        {
        }
        field(12; "Ave. 3 Month Consumption"; Decimal)
        {
        }
        field(13; "Ave. 6 Month Consumption"; Decimal)
        {
        }
        field(14; "Ave. One Year Consumption"; Decimal)
        {
        }
        field(15; "Maximum Stock"; Decimal)
        {
        }
        field(16; "Lead Time"; DateFormula)
        {

            trigger OnValidate()
            begin
                Validate(Update, true);
            end;
        }
        field(17; "Surgested Order Quantity"; Decimal)
        {
        }
        field(18; "Supply by"; Code[20])
        {
            TableRelation = Vendor."No.";

            trigger OnValidate()
            begin
                if SupRec.Get("Supply by") then
                    "Supplier Name" := SupRec.Name;
            end;
        }
        field(19; "Supplier Name"; Text[50])
        {
        }
        field(20; "Delivery Term"; DateFormula)
        {
        }
        field(21; "Order Date"; Date)
        {
        }
        field(22; "Expected Delivery date"; Date)
        {
        }
        field(23; "DPS Code"; Code[20])
        {
            TableRelation = "Dynamics Procurement Header"."DPS No.";
        }
        field(24; processed; Boolean)
        {
        }
        field(25; "process By"; Code[20])
        {
        }
        field(26; "Order No."; Code[20])
        {
            TableRelation = "Purchase Header"."No.";
        }
        field(27; "Base Date"; Date)
        {
        }
        field(28; "Item Category"; Code[20])
        {
            TableRelation = "Item Category".Code;
        }
        field(29; "Inventory Group"; Code[20])
        {
            TableRelation = "Inventory Posting Group".Code;
        }
        field(30; "Maximum Stock Period"; DateFormula)
        {

            trigger OnValidate()
            begin
                if "Maximum Stock" <> 0 then
                    if Confirm('Maximum Stock Has a Value, do you want it Updated', false) then
                        "Maximum Stock" := 0;
                Validate(Update, true);
            end;
        }
        field(31; Update; Boolean)
        {

            trigger OnValidate()
            begin
                if "Maximum Stock" = 0 then begin
                    /*  IF "Base Date" = 0D THEN "Base Date" := TODAY;
                      ItemLedg.SETCURRENTKEY("Item No.","Location Code","Posting Date",Positive);
                      IF "Location Code" <>'' THEN
                      ItemLedg.SETRANGE(ItemLedg."Location Code","Location Code");
                      ItemLedg.SETRANGE(ItemLedg."Item No.","Item No.");
                      ItemLedg.SETFILTER(ItemLedg.Positive,'%1',FALSE);
                      ItemLedg.SETFILTER(ItemLedg."Posting Date",'%1..%2',(CALCDATE(('-'+ FORMAT("Maximum Stock Period")),"Base Date")),"Base Date");
                      IF ItemLedg.FINDSET THEN
                      ItemLedg.CALCSUMS(ItemLedg.Quantity);
                      "Maxmum Stock" := -ItemLedg.Quantity;
                    END ELSE
                    ERROR('Maximum Stock Has A Value Put 0 in Maximum Stock to Recalculate');
                    */
                    LeadS := DelChr(Format("Lead Time"), '=', 'MDYC');
                    if Evaluate(LeadP, LeadS) then;
                    StocS := DelChr(Format("Maximum Stock Period"), '=', 'MDYC');
                    if Evaluate(StocP, StocS) then
                        if "Ave. One Year Consumption" <> 0 then
                            "Maximum Stock" := (StocP + LeadP) * "Ave. One Year Consumption";
                    if "Maximum Stock" > "Available Quantity" then
                        "Surgested Order Quantity" := "Maximum Stock" - "Available Quantity"
                    else
                        "Surgested Order Quantity" := 0;
                    "Line Amount" := "Surgested Order Quantity" * "Unit Price";
                    // validate("Approved Order Quantity","Surgested Order Quantity");
                end;

            end;
        }
        field(32; "Item Status"; Option)
        {
            OptionCaption = ' ,Fast Moving,Slow Moving,Not Moving,Obsolete';
            OptionMembers = " ","Fast Moving","Slow Moving","Non Moving",Obsolete;
        }
        field(33; "Last 2 Years Consumption"; Decimal)
        {
        }
        field(34; "Last 3 Years Consumption"; Decimal)
        {
        }
        field(35; "Last 4 Years Consumption"; Decimal)
        {
        }
        field(36; "Last 5 Years Consumption"; Decimal)
        {
        }
        field(37; "Available Stock Months"; Decimal)
        {
        }
        field(38; "Approved Order Quantity"; Decimal)
        {

            trigger OnValidate()
            begin
                "Line Amount" := "Approved Order Quantity" * "Unit Price";
            end;
        }
        field(39; "Last 2 Years Monthly Average"; Decimal)
        {
        }
        field(40; "Last 5 Years Monthly Average"; Decimal)
        {
        }
        field(41; Approved; Boolean)
        {

            trigger OnValidate()
            begin
                if Approved then begin
                    if "Approved Order Quantity" = 0 then
                        Validate("Approved Order Quantity", "Surgested Order Quantity");
                end;
            end;
        }
        field(42; "Unit Price"; Decimal)
        {

            trigger OnValidate()
            begin
                if "Approved Order Quantity" <> 0 then
                    "Line Amount" := "Unit Price" * "Approved Order Quantity";
            end;
        }
        field(43; "Line Amount"; Decimal)
        {
        }
        field(44; "Process Mode"; Option)
        {
            OptionCaption = ' ,Purchase Order,Delivery Systems';
            OptionMembers = " ","Purchase Order","Delivery Systems";
        }
    }

    keys
    {
        key(Key1; "DPS Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        DPSHeader.SetFilter(DPSHeader."DPS No.", '%1', "DPS Code");
        if DPSHeader.FindFirst then begin
            DPSHeader.TestField(DPSHeader."Base Date");
            "Base Date" := DPSHeader."Base Date";
            "Location Code" := DPSHeader."Location Code";
            "Maximum Stock Period" := DPSHeader."Maxmum Order Period";
        end;
    end;

    var
        ItemRec: Record Item;
        SupRec: Record Vendor;
        LocRec: Record Location;
        ItemLedg: Record "Item Ledger Entry";
        M1Date: Date;
        M3Date: Date;
        M6Date: Date;
        M12Date: Date;
        DPSHeader: Record "Dynamics Procurement Header";
        StocP: Integer;
        LeadP: Integer;
        LeadS: Text;
        StocS: Text;
        Text0001: Label 'Purchase Order No. ''%1'' has been Created for %2 ';

    //[Scope('Internal')]
    procedure CreatePurchInv()
    var
        Purchheader: Record "Purchase Header";
        PurchLine: Record "Purchase Line";
        LineNo: Integer;
        noseriesmgt: Codeunit NoSeriesManagement;
        DocNo: Code[20];
        PurchSetup: Record "Purchases & Payables Setup";
        PurchInv: Record "Purchase Header";
        PurchInvline: Record "Purchase Line";
        CustRec: Record Vendor;
        TotalVend: Integer;
        CheckPurchInv: Record "Purchase Header";
        CheckpostedPurchCmemo: Record "Purch. Cr. Memo Hdr.";
        Purchorder: Record "Purchase Header";
        Purchorderline: Record "Purchase Line";
        ReqLines: Record "Dynamics Procurement Register";
        UserRec: Record User;
    begin
        //TESTFIELD("Req. Type",6);
        UserRec.SetRange("User Name", UserId);
        if UserRec.FindFirst then;
        ReqLines.SetRange(ReqLines."Supply by", "Supply by");
        ReqLines.SetFilter(ReqLines."Approved Order Quantity", '<>%1', 0);
        ReqLines.SetFilter(ReqLines.Approved, '%1', true);
        ReqLines.SetFilter(ReqLines.processed, '%1', false);
        if not ReqLines.FindSet then
            Error('Notting To Process. No Line(s) is Ready for Process')
        else begin
            PurchSetup.Get;
            DocNo := noseriesmgt.GetNextNo(PurchSetup."Order Nos.", Today, true);
            PurchInv.Init;
            PurchInv."Document Type" := PurchInv."Document Type"::Order;
            PurchInv.Validate(PurchInv."No.", DocNo);
            PurchInv.Insert(true);
            PurchInv.Validate("Posting Date", Today);
            PurchInv.Validate(PurchInv."Buy-from Vendor No.", ReqLines."Supply by");
            PurchInv."Posting Description" := 'Supply Request from DPS ' + "DPS Code";
            PurchInv."Your Reference" := "DPS Code";
            PurchInv.Modify;

            LineNo := 0;
            if ReqLines.FindSet then
                repeat
                    LineNo += 10000;
                    PurchInvline."Document Type" := PurchInvline."Document Type"::Order;
                    PurchInvline."Document No." := DocNo;
                    PurchInvline."Line No." := LineNo;
                    PurchInvline.Insert(true);
                    PurchInvline.Validate(PurchInvline.Type, PurchInvline.Type::Item);
                    PurchInvline."Location Code" := ReqLines."Location Code";
                    PurchInvline.Validate("No.", ReqLines."Item No.");
                    PurchInvline.Validate(Quantity, ReqLines."Approved Order Quantity");
                    PurchInvline.Validate(PurchInvline."Direct Unit Cost", ReqLines."Unit Price");
                    //PurchInvline.VALIDATE(PurchInvline."Expected Receipt Date",TODAY);
                    PurchInvline.Modify;
                    ReqLines.processed := true;
                    UserRec.SetRange("User Name", UserId);
                    if UserRec.FindSet then
                        ReqLines."process By" := UserRec."Full Name";
                    //ReqLines.Process Date":= CURRENTDATETIME;
                    ReqLines."Order No." := DocNo;
                    ReqLines.Modify;
                until ReqLines.Next = 0;
            Message(Text0001, DocNo, ReqLines."Supplier Name");
        end;
    end;

    //[Scope('Internal')]
    procedure UpdatePurReq()
    var
        Purcreq: Record "Purchase Requisition1";
        DPSRec: Record "Dynamics Procurement Register";
        Purchreq: Record "Purchase Requisition1";
        "LineNo.": Integer;
    begin
        DPSRec.SetRange(DPSRec."DPS Code", "DPS Code");
        DPSRec.SetFilter(DPSRec.Approved, '%1', true);
        DPSRec.SetFilter(DPSRec.processed, '%1', false);
        if Purchreq.FindLast then "LineNo." := Purchreq."Puch.Req Line No.";
        if DPSRec.FindFirst then
            repeat
                ;
                "LineNo." += 10000;
                Purcreq.Init;
                Purcreq.Validate(Purcreq."Req No.", DPSRec."DPS Code");
                Purcreq.Validate(Purcreq."Item No.", DPSRec."Item No.");
                Purcreq.Description := DPSRec.Description;
                Purcreq."Req. Line No." := DPSRec."Line No.";
                Purcreq."Req Location" := DPSRec."Location Code";
                Purcreq.Quantity := DPSRec."Approved Order Quantity";
                Purcreq."Puch.Req Line No." := "LineNo.";
                // Purcreq."Req. By" := "1st Approval to";
                Purcreq.Insert;
                DPSRec."Order No." := 'PurchReg';
                DPSRec.Validate(DPSRec.processed, true);
                DPSRec.Modify;
            until DPSRec.Next = 0;
    end;
}

