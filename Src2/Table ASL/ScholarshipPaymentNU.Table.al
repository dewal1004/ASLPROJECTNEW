table 60033 "Scholarship Payment NU*"
{
    //***DrillDownPageID = 60050;
    //***LookupPageID = 60050;

    fields
    {
        field(1; "Rec No"; Integer)
        {
            BlankZero = true;
        }
        field(2; "Employee No"; Code[10])
        {
            TableRelation = Employee."No.";
        }
        field(3; "Register No"; Integer)
        {
            BlankZero = true;
            NotBlank = true;
            TableRelation = "Scholarship Register NU*"."Reg No" WHERE ("Employee No" = FIELD ("Employee No"));
        }
        field(4; Amount; Decimal)
        {
            BlankZero = true;

            trigger OnValidate()
            begin
                RegRec.SetRange(RegRec."Reg No", "Register No");
                if RegRec.Find('-') then begin
                    SchPayRec.SetCurrentKey("Register No", "Employee No", "Rec No");
                    SchPayRec.SetRange(SchPayRec."Register No", "Register No");
                    SchPayRec.SetRange(SchPayRec."Rec No", "Rec No");
                    if SchPayRec.Find('-') then begin
                        SchPayRec.CalcSums(SchPayRec.Amount);
                        AmtPaid := SchPayRec.Amount;
                    end
                    else
                        AmtPaid := 0;

                    RegRec.CalcFields(RegRec."Amount Paid", RegRec."Amount Refunded");
                    Ramt := RegRec."Amount Authorized" - RegRec."Amount Paid" - RegRec."Amount Refunded";
                    Diff := Amount - xRec.Amount;

                    if (Diff > Ramt) then begin
                        Message('You cannot pay more than amount authorised\\' +
                               'Total Paid is %1 You want To Pay %2  Amount Authorised is %3\\' +
                               'Remaining Balance to be paid is %4',
                               RegRec."Amount Paid", Amount, RegRec."Amount Authorized", Ramt);

                        Amount := Ramt + xRec.Amount;
                    end;

                end;
            end;
        }
        field(5; "Date Paid"; Date)
        {
        }
        field(6; "Document No"; Code[10])
        {
        }
        field(7; Comment; Text[100])
        {
        }
    }

    keys
    {
        key(Key1; "Register No", "Employee No", "Rec No")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Employee No", "Register No")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "Date Paid", "Employee No")
        {
            SumIndexFields = Amount;
        }
        key(Key4; "Rec No", "Register No")
        {
            SumIndexFields = Amount;
        }
        key(Key5; "Register No", Amount)
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        SchPayRec.SetCurrentKey("Rec No", "Register No");
        if SchPayRec.Find('+') then
            RecNo := SchPayRec."Rec No" + 10
        else
            RecNo := 10;

        "Rec No" := RecNo;
        "Date Paid" := Today;
    end;

    var
        SchPayRec: Record "Scholarship Payment NU*";
        RecNo: Integer;
        RegRec: Record "Scholarship Register NU*";
        PayRec: Record "Scholarship Payment NU*";
        Ramt: Decimal;
        AutAmt: Decimal;
        AmtPaid: Decimal;
        Diff: Decimal;
}

