table 50045 "Purchase Requisition1"
{
    DrillDownPageID = "Purchase Requist List";
    LookupPageID = "Purchase Requist List";

    fields
    {
        field(1; "Req No."; Code[20])
        {
            TableRelation = "Store Requisition Header New"."Req. No" WHERE("Req. Type" = CONST(Purchase));
            ValidateTableRelation = false;
        }
        field(2; "Req Department"; Code[20])
        {
        }
        field(3; "Req Location"; Code[20])
        {
            TableRelation = Location.Code;
        }
        field(4; "Item No."; Code[20])
        {
            TableRelation = Item."No.";

            trigger OnValidate()
            begin
                if itemrec.Get("Item No.") then
                    Description := itemrec.Description;
                PPI.SetCurrentKey(PPI."Posting Date");
                PPI.SetFilter(PPI."No.", '%1', "Item No.");
                if PPI.FindLast then begin
                    "Last Price1" := PPI."Unit Cost (LCY)";
                    "LPrice1 Date" := PPI."Posting Date";
                    "LPrice1 InvoiceNo" := PPI."Document No.";
                    PPI.Next(-1);
                    "Last Price2" := PPI."Unit Cost (LCY)";
                    "LPrice2 Date" := PPI."Posting Date";
                    "LPrice2 InvoiceNo" := PPI."Document No.";
                    PPI.Next(-1);
                    "Last Price3" := PPI."Unit Cost (LCY)";
                    "LPrice3 Date" := PPI."Posting Date";
                    "LPrice3 InvoiceNo" := PPI."Document No.";
                    PPI.Next(-1);
                end;
            end;
        }
        field(5; Description; Text[250])
        {
        }
        field(6; Quantity; Decimal)
        {
        }
        field(7; "Unit Price"; Decimal)
        {
        }
        field(8; "Req. By"; Code[20])
        {
        }
        field(9; "Req. By Name"; Text[50])
        {
        }
        field(10; "Req. Date"; Date)
        {
        }
        field(11; "Req. Proc. Date"; Date)
        {
        }
        field(12; "Supply By"; Code[20])
        {
            TableRelation = Vendor."No.";

            trigger OnValidate()
            begin
                if VendRec.Get("Supply By") then
                    "Supplier Name" := VendRec.Name;
            end;
        }
        field(13; "Supplier Name"; Text[50])
        {
        }
        field(14; "Req. Line No."; Integer)
        {
        }
        field(15; "Sent to Security"; Boolean)
        {
        }
        field(16; "Security Check By"; Code[20])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(17; "Security Check Time"; DateTime)
        {
        }
        field(18; "Security Check Quantity"; Decimal)
        {

            trigger OnValidate()
            begin
                if "Security Check Quantity" > Quantity then begin
                    Error('Excess Supply');
                end
                else
                    "Shortage Supplied  Quantity" := Quantity - "Security Check Quantity";
            end;
        }
        field(19; "QCC Check"; Boolean)
        {

            trigger OnValidate()
            begin
                UserRec.SetCurrentKey("User Name");
                UserRec.SetRange("User Name", "QCC Check  By");
                if UserRec.FindSet then
                    "QCC Check  Name" := UserRec."Full Name";
                "QCC Check Time" := CurrentDateTime;
            end;
        }
        field(20; "QCC Check  By"; Code[20])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(21; "QCC Check  Name"; Text[50])
        {
        }
        field(22; "QCC Check Quantity"; Decimal)
        {

            trigger OnValidate()
            begin
                if "QCC Check Quantity" > "Security Check Quantity" then begin
                    Error('Quantity More than  Decleared Quantity');
                end
                else
                    "QCC Rejected Quantity" := "Security Check Quantity" - "QCC Check Quantity";
            end;
        }
        field(23; "QCC Check Time"; DateTime)
        {
        }
        field(24; Process; Boolean)
        {

            trigger OnValidate()
            begin
                "Process By" := UserId;
                UserRec.SetRange("User Name", "Process By");
                if UserRec.FindSet then
                    "Process By Name" := UserRec."Full Name";
                "Process Time" := CurrentDateTime;
            end;
        }
        field(25; "Process By"; Code[20])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(26; "Process By Name"; Text[50])
        {
        }
        field(27; "Invoice No."; Code[20])
        {
        }
        field(28; "Last Price1"; Decimal)
        {
        }
        field(29; "Last Price2"; Decimal)
        {
        }
        field(30; "Last Price3"; Decimal)
        {
        }
        field(31; "LPrice1 InvoiceNo"; Code[20])
        {
            TableRelation = "Purch. Inv. Header"."No.";
        }
        field(32; "LPrice1 Date"; Date)
        {
        }
        field(33; "LPrice2 InvoiceNo"; Code[20])
        {
            TableRelation = "Purch. Inv. Header"."No.";
        }
        field(34; "LPrice2 Date"; Date)
        {
        }
        field(35; "LPrice3 InvoiceNo"; Code[20])
        {
            TableRelation = "Purch. Inv. Header"."No.";
        }
        field(36; "LPrice3 Date"; Date)
        {
        }
        field(37; "Security checked"; Boolean)
        {

            trigger OnValidate()
            begin
                UserRec.SetCurrentKey("User Name");
                UserRec.SetRange("User Name", "Security Check By");
                if UserRec.FindSet then
                    "Security Checked By Name" := UserRec."Full Name";
                "Security Check Time" := CurrentDateTime;
            end;
        }
        field(38; "Security Checked By Name"; Text[50])
        {
        }
        field(39; "Security Comment"; Text[100])
        {
        }
        field(40; "QCC Comment"; Text[100])
        {
        }
        field(41; "Sent For QCC"; Boolean)
        {

            trigger OnValidate()
            begin
                TestField("Security checked");
                TestField("Security Check Quantity");
            end;
        }
        field(42; "Procurement Mgr. Action"; Option)
        {
            OptionCaption = ' ,Approved,Returned,On Hold';
            OptionMembers = " ",Approved,Returned,"On Hold";

            trigger OnValidate()
            begin
                if "Procurement Mgr. Action" = "Procurement Mgr. Action"::Approved then
                    "Fully Supply" := "QCC Check Quantity" = Quantity
                else
                    "Fully Supply" := false;
            end;
        }
        field(43; "QCC Rejected Quantity"; Decimal)
        {
        }
        field(44; "Quantity To Return"; Decimal)
        {

            trigger OnValidate()
            begin
                if "Quantity To Return" < "QCC Rejected Quantity" then begin
                    if not Confirm('The Quantity to Return is Not the same as Rejected Quantity. Continue to Return', false) then
                        Error('Please Check the Qcc Rejected Quantity');
                end else
                    if "Quantity To Return" > "QCC Rejected Quantity" then Error('You can not Return more than Qcc Rejected Quantity');
            end;
        }
        field(45; "Shortage Supplied  Quantity"; Decimal)
        {
        }
        field(46; "Return to Security"; Boolean)
        {
        }
        field(47; "Security Returned"; Boolean)
        {

            trigger OnValidate()
            begin
                if not Confirm('Hope You have Printed the Waybill', false) then
                    Error('Please make sure you Update Quantity to return for all line then Print Waybill');
                "Retuned Date" := CurrentDateTime;
                UserRec.SetRange("User Name", UserId);
                if UserRec.FindSet then
                    "Security Return Name" := UserRec."Full Name";
            end;
        }
        field(48; "Security Return Quantity"; Decimal)
        {

            trigger OnValidate()
            begin
                if "Security Return Quantity" <> "Quantity To Return" then
                    Error('Please put correct Quantity to Return');
            end;
        }
        field(49; "Process Time"; DateTime)
        {
        }
        field(50; "Retuned Date"; DateTime)
        {
        }
        field(51; "Security Return by"; Code[20])
        {
        }
        field(52; "Security Return Name"; Text[50])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(53; Printed; Boolean)
        {
        }
        field(54; "Awaiting Supply"; Boolean)
        {

            trigger OnValidate()
            begin
                if "Awaiting Supply" then begin
                    TestField("Fully Supply", false);

                end;
            end;
        }
        field(55; "Puch.Req Line No."; Integer)
        {
        }
        field(56; "Fully Supply"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Req No.", "Req. Line No.", "Puch.Req Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        PPI: Record "Purch. Inv. Line";
        J: Integer;
        Lprice: Decimal;
        itemrec: Record Item;
        UserRec: Record User;
        Reqhead: Record "Store Requisition Header New";
        Text0001: Label 'Purchase Invoice No %1 has been Raised for %2';
        VendRec: Record Vendor;
        purreq: Record "Purchase Requisition1";

    [Scope('OnPrem')]
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
        ReqLines: Record "Purchase Requisition1";
        UserRec: Record User;
    begin
        //TESTFIELD("Req. Type",6);
        UserRec.SetRange("User Name", UserId);
        if UserRec.FindFirst then;

        ReqLines.SetRange(ReqLines."Supply By", "Supply By");
        ReqLines.SetFilter(ReqLines."QCC Check Quantity", '<>%1', 0);
        ReqLines.SetFilter(ReqLines."QCC Check", '%1', true);
        ReqLines.SetFilter(ReqLines.Process, '%1', false);
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
            PurchInv.Validate(PurchInv."Buy-from Vendor No.", "Supply By");
            PurchInv."Posting Description" := Description;
            PurchInv."Your Reference" := "Req No.";

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
                    PurchInvline."Location Code" := ReqLines."Req Location";
                    PurchInvline.Validate("No.", ReqLines."Item No.");
                    PurchInvline.Validate(Quantity, ReqLines."QCC Check Quantity");
                    PurchInvline.Validate(PurchInvline."Direct Unit Cost", ReqLines."Unit Price");
                    //PurchInvline.VALIDATE(PurchInvline."Expected Receipt Date",TODAY);
                    PurchInvline.Modify;
                    ReqLines.Process := true;
                    UserRec.SetRange("User Name", UserId);
                    if UserRec.FindSet then
                        ReqLines."Process By Name" := UserRec."Full Name";
                    ReqLines."Process Time" := CurrentDateTime;
                    ReqLines."Invoice No." := DocNo;
                    ReqLines.Modify;
                until ReqLines.Next = 0;
            "Invoice No." := DocNo;
            Message(Text0001, DocNo, "Supplier Name");
        end;
        /*Process := TRUE;
        "Process By" := UserRec."Full Name";
        MODIFY;
        */

    end;
}

