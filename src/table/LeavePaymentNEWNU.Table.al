table 60022 "Leave Payment-NEW NU*"
{
    Caption = 'Leave Payment-NEW NU*';
    //DrillDownPageID = 60010;

    fields
    {
        field(1; "Entry no"; Integer)
        {
        }
        field(2; "Leave Plan  Serial No"; Code[10])
        {
            TableRelation = "Leave Plan DELETE NU*"."Serial No" WHERE("Entry Type" = FILTER(Actual));
        }
        field(3; "Document No"; Code[10])
        {
        }
        field(4; "Amount Paid"; Decimal)
        {
        }
        field(5; "Payment Date"; Date)
        {
        }
        field(6; "Total Days Paid For"; Integer)
        {
        }
        field(7; "Leave Period"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "Leave Plan  Serial No")
        {
            Clustered = true;
            SumIndexFields = "Amount Paid";
        }
        key(Key2; "Entry no")
        {
            SumIndexFields = "Amount Paid";
        }
        key(Key3; "Leave Period")
        {
            SumIndexFields = "Amount Paid";
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        if LeavePayRec.Find('+') then
            "Entry no" := LeavePayRec."Entry no" + 10
        else
            "Entry no" := 10;
    end;

    var
        LeavePayRec: Record "Leave Payment-NEW NU*";
}
