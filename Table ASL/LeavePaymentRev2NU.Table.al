table 60020 "Leave Payment Rev 2 NU*"
{
    //DrillDownPageID = 60098;
    //LookupPageID = 60098;

    fields
    {
        field(1; "Entry no"; Integer)
        {
        }
        field(2; "Leave Period"; Integer)
        {
        }
        field(3; "Employee No."; Code[20])
        {
            TableRelation = Employee."No.";
        }
        field(4; "Document No"; Code[10])
        {
        }
        field(5; "Amount Paid"; Decimal)
        {

            trigger OnValidate()
            begin
                CalcFields("Amount Due");
                CalcFields("Total Paid for Leave");
                if ("Amount Due" < "Total Paid for Leave" + "Amount Paid") then begin
                    LeaveRec.SetRange(LeaveRec."Serial No", "Leave Plan No.");
                    LeaveRec.CalcFields(LeaveRec."Amount Paid");
                    Message('You cannot pay More than %1 for this Leave', Format("Amount Due" - "Total Paid for Leave"));
                    "Amount Paid" := "Amount Due" - "Total Paid for Leave";
                end;

                LeaveRec.SetRange(LeaveRec."Serial No", xRec."Leave Plan No.");
                if LeaveRec.Find('-') then begin
                    "Leave Period" := LeaveRec."Leave Period";
                    "Employee No." := LeaveRec."Employee No.";
                    "Payment Date" := Today;
                end;


                if "Amount Paid" = 0 then Rec.Delete;
            end;
        }
        field(6; "Payment Date"; Date)
        {
        }
        field(7; "Total Days Paid For"; Integer)
        {
        }
        field(8; "Leave Plan No."; Code[10])
        {

            trigger OnValidate()
            begin
                /*
                LeaveRec.SETRANGE(LeaveRec."Serial No",xRec."Leave Plan No.");
                
                IF LeaveRec.find('-') THEN
                  BEGIN
                    "Leave Period" := LeaveRec."Leave Period";
                    "Employee No." := LeaveRec."Employee No.";
                  END;
                */

            end;
        }
        field(9; "Amount Due"; Decimal)
        {
            CalcFormula = Sum ("Leave Plan Lines Rev 2 NU*"."Amount Due" WHERE ("Serial No" = FIELD ("Leave Plan No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Total Paid for Leave"; Decimal)
        {
            CalcFormula = Sum ("Leave Payment Rev 2 NU*"."Amount Paid" WHERE ("Leave Plan No." = FIELD ("Leave Plan No.")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Leave Plan No.", "Entry no")
        {
            Clustered = true;
            SumIndexFields = "Amount Paid";
        }
        key(Key2; "Leave Period", "Employee No.")
        {
            SumIndexFields = "Amount Paid";
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        LeavePayRec.Reset;

        if LeavePayRec.Find('+') then
            "Entry no" := LeavePayRec."Entry no" + 10
        else
            "Entry no" := 10;
    end;

    var
        LeavePayRec: Record "Leave Payment Rev 2 NU*";
        LeaveRec: Record "Leave Plan Lines Rev 2 NU*";
}

