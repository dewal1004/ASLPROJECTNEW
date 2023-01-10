table 50053 "Dynamics Procurement Header"
{

    fields
    {
        field(1; "DPS No."; Code[20])
        {

            trigger OnValidate()
            begin
                if "DPS No." <> xRec."DPS No." then begin
                    InveSetup.Get;
                    NoSeriesMgt.TestManual(InveSetup."DPS No. Series");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Process Date"; Date)
        {
        }
        field(3; "Location Code"; Code[20])
        {
            TableRelation = Location.Code;
        }
        field(4; "Item Filter"; Text[50])
        {
            TableRelation = Item."No.";
            ValidateTableRelation = false;
        }
        field(5; "Inventory Group Filter"; Text[50])
        {
            TableRelation = "Inventory Posting Group";
            ValidateTableRelation = false;
        }
        field(6; "Gen. Product Posting Group"; Text[50])
        {
            TableRelation = "Gen. Product Posting Group".Code;
            ValidateTableRelation = false;
        }
        field(7; "Maxmum Order Period"; DateFormula)
        {
        }
        field(8; "Process By"; Code[20])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(9; "Process By Name"; Text[50])
        {
        }
        field(10; "Base Date"; Date)
        {
        }
        field(11; "Update Record"; Boolean)
        {

            trigger OnValidate()
            begin
                TestField("Base Date");
                TestField("Maxmum Order Period");
                TestField(Processed, false);
            end;
        }
        field(12; Processed; Boolean)
        {

            trigger OnValidate()
            begin
                if Approved then begin
                    UserSecID := DATABASE.UserSecurityId;
                    if UserRec.Get(UserSecID) then
                        "Process By Name" := UserRec."Full Name";
                    "Process Date" := Today;
                end else begin
                    "Process By Name" := '';
                    "Process Date" := 0D;
                end;
            end;
        }
        field(13; "Location Filter"; Code[10])
        {
            TableRelation = Location.Code;
            ValidateTableRelation = false;
        }
        field(14; "Surggest Items"; Boolean)
        {

            trigger OnValidate()
            begin
                if "Surggest Items" then begin
                    DPSLine.SetRange(DPSLine."DPS Code", "DPS No.");
                    TestField("Base Date");
                    //TESTFIELD("Inventory Group Filter");
                    if DPSLine.FindSet then Error('DPS Line(s) already EXISTS');
                    if "Item Filter" <> '' then
                        ItemRec.SetFilter(ItemRec."No.", '%1', "Item Filter");
                    if "Gen. Product Posting Group" <> '' then
                        ItemRec.SetFilter(ItemRec."Gen. Prod. Posting Group", '%1', "Gen. Product Posting Group");
                    if "Inventory Group Filter" <> '' then
                        ItemRec.SetFilter(ItemRec."Inventory Posting Group", '%1', "Inventory Group Filter");
                    if ItemRec.FindFirst then
                        repeat
                            LineNo := LineNo + 1000;
                            DPSLine.Init;
                            DPSLine."DPS Code" := "DPS No.";
                            DPSLine."Line No." := LineNo;
                            DPSLine."Base Date" := "Base Date";
                            DPSLine."Location Code" := "Location Code";
                            DPSLine.Validate(DPSLine."Item No.", ItemRec."No.");
                            DPSLine.Insert;
                        until ItemRec.Next = 0;
                end;
            end;
        }
        field(15; "No. Series"; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(16; "Send For Approval"; Boolean)
        {

            trigger OnValidate()
            begin
                if "Send For Approval" = true then begin
                    UserSecID := DATABASE.UserSecurityId;
                    if UserRec.Get(UserSecID) then
                        "Send For Approval By" := UserRec."Full Name";
                    "Send for Approval Time" := CurrentDateTime;
                end else begin
                    "Send For Approval By" := '';
                    "Send for Approval Time" := 0DT;
                end;
            end;
        }
        field(17; "Send For Approval By"; Text[80])
        {
        }
        field(18; Approved; Boolean)
        {

            trigger OnValidate()
            begin
                if Approved then begin
                    CalcFields("Approved Line items", "Total Line Items");
                    if "Approved Line items" = 0 then
                        Error('Sorry you have not approve any item in this Requisition')
                    else
                        if "Approved Line items" <> "Total Line Items" then
                            if not
Confirm('You have not approved all item in this Requision Continue to Approve', false) then
                                Error('Please Approved further');
                    UserSecID := DATABASE.UserSecurityId;
                    if UserRec.Get(UserSecID) then
                        "Approved By" := UserRec."Full Name";
                    "Approved Time" := CurrentDateTime;
                end else begin
                    "Approved By" := '';
                    "Approved Time" := 0DT;
                end;
                /* DPSLine.SETRANGE(DPSLine."DPS Code","DPS No.");
                 IF DPSLine.FINDSET THEN
                   DPSLine.MODIFYALL(DPSLine.Approved,TRUE,TRUE);
                */

            end;
        }
        field(19; "Approved By"; Text[80])
        {
        }
        field(20; "Approved Time"; DateTime)
        {
        }
        field(21; "Send for Approval Time"; DateTime)
        {
        }
        field(22; "Sent To For Approval"; Code[50])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(23; Supplier; Code[20])
        {
            TableRelation = Vendor."No.";

            trigger OnValidate()
            begin
                if vendrec.Get(Supplier) then
                    "Supplier Name" := vendrec.Name
                else
                    "Supplier Name" := '';
            end;
        }
        field(24; "Supplier Name"; Text[50])
        {
        }
        field(25; "Return To For Process"; Code[20])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                UserRec.SetRange(UserRec."User Name", "Return To For Process");
                if UserRec.FindFirst then
                    "Return To Name" := UserRec."Full Name"
                else
                    "Return To Name" := '';
            end;
        }
        field(26; "Return To Name"; Text[50])
        {
        }
        field(27; "Return Time"; DateTime)
        {
        }
        field(28; "Approved Line items"; Integer)
        {
            CalcFormula = Count("Dynamics Procurement Register" WHERE(Approved = CONST(true),
                                                                       "DPS Code" = FIELD("DPS No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; "Total Line Items"; Integer)
        {
            CalcFormula = Count("Dynamics Procurement Register" WHERE("DPS Code" = FIELD("DPS No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Unapproved Line Items"; Integer)
        {
            CalcFormula = Count("Dynamics Procurement Register" WHERE(Approved = CONST(false),
                                                                       "DPS Code" = FIELD("DPS No.")));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "DPS No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        if "DPS No." = '' then begin
            InveSetup.Get;
            InveSetup.TestField("DPS No. Series");
            NoSeriesMgt.InitSeries(InveSetup."DPS No. Series", xRec."No. Series", 0D, "DPS No.", "No. Series");
        end;
        "Base Date" := Today;
    end;

    var
        ItemRec: Record Item;
        DPSLine: Record "Dynamics Procurement Register";
        LineNo: Integer;
        InveSetup: Record "Inventory Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        UserRec: Record User;
        Text0001: Label 'Purchase Order No. ''%1'' has been Created for %2 ';
        vendrec: Record Vendor;
        UserSecID: Guid;
        UserSetup: Record "User Setup";

    ////[Scope('OnPrem')]
    procedure AssistEdit(OldDPS: Record "Dynamics Procurement Header"): Boolean
    var
        DPSRec: Record "Dynamics Procurement Header";
    begin
        with DPSRec do begin
            DPSRec := Rec;
            InveSetup.Get;
            InveSetup.TestField(InveSetup."DPS No. Series");
            if NoSeriesMgt.SelectSeries(InveSetup."DPS No. Series", OldDPS."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("DPS No.");
                Rec := DPSRec;
                exit(true);
            end;
        end;
    end;

    // //[Scope('OnPrem')]
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
        UserRec.SetRange("User Name", UserId);
        if UserRec.FindFirst then;

        ReqLines.SetRange(ReqLines."Supply by", Supplier);
        ReqLines.SetFilter(ReqLines."Approved Order Quantity", '<>%1', 0);
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
            PurchInv."Posting Description" := 'Supply Request from DPS ' + "DPS No.";
            PurchInv."Your Reference" := "DPS No.";

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
                    //PurchInvline.VALIDATE(PurchInvline."Direct Unit Cost",ReqLines."Unit Price");
                    //PurchInvline.VALIDATE(PurchInvline."Expected Receipt Date",TODAY);
                    PurchInvline.Modify;
                    ReqLines.processed := true;
                    UserSecID := DATABASE.UserSecurityId;
                    if UserRec.Get(UserSecID) then
                        ReqLines."process By" := UserRec."Full Name";
                    //ReqLines."Processed Date":= CURRENTDATETIME;
                    ReqLines."Order No." := DocNo;
                    ReqLines.Modify;
                until ReqLines.Next = 0;
            Message(Text0001, DocNo, ReqLines."Supplier Name");
        end;
    end;
}

