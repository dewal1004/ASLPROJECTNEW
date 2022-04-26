table 60032 "Scholarship Register NU*"
{
    //*** DrillDownPageID = 60047;
    //*** LookupPageID = 60047;

    fields
    {
        field(1; "Reg No"; Integer)
        {
        }
        field(2; "Employee No"; Code[10])
        {
            NotBlank = true;
            TableRelation = Employee;
        }
        field(3; "Institution Group"; Code[4])
        {
            NotBlank = true;
            TableRelation = "Education Institute Grp NU*"."Group Code";
        }
        field(4; Institution; Code[6])
        {
            NotBlank = true;
            TableRelation = "Educational Institute NU*"."Institute Code" WHERE("Institute Grp" = FIELD("Institution Group"));
        }
        field(5; "Course Group"; Code[10])
        {
            NotBlank = true;
            TableRelation = "Scholarship Courses Grp NU*".Code;
        }
        field(6; "Course Code"; Code[10])
        {
            NotBlank = true;
            TableRelation = "Scholarship Courses NU*"."Course Code" WHERE(Group = FIELD("Course Group"));
        }
        field(7; Duration; Code[10])
        {
            DateFormula = true;

            trigger OnValidate()
            begin
                if (Duration <> '') and ("Start Date" <> 0D) then "End Date" := CalcDate('+' + Duration + ' -1D', "Start Date");
                if (Duration <> '') and ("Start Date" = 0D) and ("End Date" <> 0D) then
                    "Start Date" := CalcDate('-' + Duration + ' -1D', "End Date")
;
            end;
        }
        field(8; "Start Date"; Date)
        {

            trigger OnValidate()
            begin
                if ("Start Date" = 0D) then exit;
                if ("End Date" <> 0D) and ("End Date" < "Start Date") then Error('The End DATE MUST be Further in Time than the START DATE');

                if (Duration <> '') then
                    "End Date" := CalcDate('+' + Duration + ' -1D', "Start Date")
                else
                    if ("End Date" <> 0D) then Duration := Format("End Date" - "Start Date" + 1) + 'D';
            end;
        }
        field(9; "End Date"; Date)
        {

            trigger OnValidate()
            begin
                if ("End Date" = 0D) then exit;
                if ("Start Date" <> 0D) and ("End Date" < "Start Date") then Error('The End DATE MUST be Further in Time than the START DATE');

                if (Duration <> '') then
                    "Start Date" := CalcDate('-' + Duration + ' +1D', "End Date")
                else
                    if ("Start Date" <> 0D) then Duration := Format("End Date" - "Start Date" + 1) + 'D';
            end;
        }
        field(11; "Date Last Paid"; Date)
        {
            CalcFormula = Max("Scholarship Payment NU*"."Date Paid" WHERE("Employee No" = FIELD("Employee No"),
                                                                           "Register No" = FIELD("Reg No")));
            FieldClass = FlowField;
        }
        field(12; "Date Authorized"; Date)
        {
        }
        field(13; "Amount Authorized"; Decimal)
        {
            BlankZero = true;

            trigger OnValidate()
            begin
                if xRec.Registered then Error('You Cannot Modify A Registered Record!');
            end;
        }
        field(14; "Bonding Date"; Date)
        {
        }
        field(15; Registered; Boolean)
        {
            Editable = false;
        }
        field(16; Comment; Text[100])
        {
        }
        field(17; "Actual Completion Date"; Date)
        {
        }
        field(18; Completed; Boolean)
        {
        }
        field(19; "Amount Paid"; Decimal)
        {
            CalcFormula = Sum("Scholarship Payment NU*".Amount WHERE("Register No" = FIELD("Reg No"),
                                                                      Amount = FILTER(> 0)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Amount Refunded"; Decimal)
        {
            CalcFormula = Sum("Scholarship Payment NU*".Amount WHERE("Register No" = FIELD("Reg No"),
                                                                      Amount = FILTER(< 0)));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Reg No", "Employee No")
        {
            Clustered = true;
        }
        key(Key2; "Course Code", "Employee No")
        {
        }
        key(Key3; "Employee No")
        {
        }
        key(Key4; "Employee No", Institution, "Course Code", Duration)
        {
        }
        key(Key5; "Amount Authorized")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        PayRec.SetRange("Register No", "Reg No");
        PayRec.DeleteAll(true);
    end;

    trigger OnInsert()
    begin
        if SchRec.Find('+') then
            RecNo := SchRec."Reg No" + 1
        else
            RecNo := 1;

        "Reg No" := RecNo;
        "Date Authorized" := Today;
    end;

    trigger OnModify()
    begin
        if xRec.Registered then Error('You Cannot Modify A Registered Record!');
    end;

    var
        RecNo: Integer;
        SchRec: Record "Scholarship Register NU*";
        PayRec: Record "Scholarship Payment NU*";

    [Scope('OnPrem')]
    procedure AmountAuthorized("Regist. No": Integer): Decimal
    var
        Registrec: Record "Scholarship Register NU*";
    begin
        if Registrec.Get("Regist. No") then
            exit(Registrec."Amount Authorized")
        else
            exit(0);
    end;

    [Scope('OnPrem')]
    procedure AmountPaid("Regist. No": Integer): Decimal
    var
        Registrec: Record "Scholarship Register NU*";
    begin
        if Registrec.Get("Regist. No") then begin
            Registrec.CalcFields("Amount Paid");
            exit(Registrec."Amount Paid");
        end
        else
            exit(0);
    end;
}

