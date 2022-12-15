table 60008 "Leave Plan DELETE NU*"
{
   // DrillDownPageID = 60007;
    //LookupPageID = 60007;

    fields
    {
        field(1; "Employee No"; Code[10])
        {
            NotBlank = true;
            TableRelation = Employee."No.";
        }
        field(2; "Entry Type"; Option)
        {
            OptionMembers = " ",Plan,Actual;
           // TableRelation = Table60015;
        }
        field(3; "Leave Category"; Code[30])
        {
            TableRelation = "Leave Categories NU*";
        }
        field(4; "Line No."; Integer)
        {
        }
        field(5; "Start Date"; Date)
        {

            trigger OnValidate()
            begin

                if "Start Date" = 0D then begin
                    "No. Days" := 0;
                    exit;
                end;

                if ("End Date" < "Start Date") and ("End Date" <> 0D) then
                    Error(FieldCaption("Start Date") + ' Must be on or after ' + FieldCaption("End Date"));

                if "End Date" <> 0D then
                    Validate("No. Days", "End Date" - "Start Date" + 1)
                else
                    if "No. Days" <> 0 then
                        "End Date" := CalcDate('+' + Format("No. Days") + 'D', "Start Date")
            end;
        }
        field(6; "End Date"; Date)
        {

            trigger OnValidate()
            begin
                if "End Date" = 0D then begin
                    "No. Days" := 0;
                    exit;
                end;

                if ("End Date" < "Start Date") and ("Start Date" <> 0D) then
                    Error(FieldCaption("End Date") + 'Must be on or before ' + FieldCaption("Start Date"));

                if "Start Date" <> 0D then
                    Validate("No. Days", "End Date" - "Start Date" + 1)
                else
                    if "No. Days" <> 0 then
                        "Start Date" := CalcDate('-' + Format("No. Days") + 'D', "End Date")
            end;
        }
        field(7; "No. Days"; Integer)
        {

            trigger OnValidate()
            begin

                if "No. Days" = 0 then exit;

                if ("Start Date" = 0D) and ("End Date" = 0D) then exit;

                if "Start Date" <> 0D then
                    "End Date" := CalcDate('+' + Format("No. Days" - 1) + 'D', "Start Date")
                else
                    "Start Date" := CalcDate('-' + Format("No. Days" - 1) + 'D', "End Date");

                //GenPCode.ExplodeLeavePlan(Rec);
                //VALIDATE(Exploded,TRUE);
            end;
        }
        field(8; Exploded; Boolean)
        {
        }
        field(9; "Region Code"; Code[10])
        {
        }
        field(10; "Global Dimension 1 Code"; Code[10])
        {
        }
        field(11; "Global Dimension 2 Code"; Code[10])
        {
        }
        field(12; "Serial No"; Code[10])
        {
        }
        field(13; "No Series"; Code[10])
        {
            TableRelation = "No. Series".Code;
        }
    }

    keys
    {
        key(Key1; "Serial No")
        {
            Clustered = true;
        }
        key(Key2; "Employee No", "Start Date")
        {
        }
        key(Key3; "Line No.")
        {
        }
        key(Key4; "Employee No")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin

        LeavPRec.SetRange(LeavPRec."Employee No", "Employee No");
        LeavPRec.SetRange(LeavPRec."Entry Type", "Entry Type");
        LeavPRec.SetRange(LeavPRec."Leave Category", "Leave Category");
        //LeavPRec.SETRANGE(LeavPRec."Line No.","Line No.");

        if LeavPRec.Find('+') then
            "Line No." := LeavPRec."Line No." + 1
        else
            "Line No." := 1;

        if "Serial No" = '' then begin
            HumanResSetup.Get;
            HumanResSetup.TestField("Leave Plan No");
            NoSeriesMgt.InitSeries(HumanResSetup."Leave Plan No", xRec."No Series", 0D, "Serial No", "No Series");
        end;
    end;

    var
        LeavPRec: Record "Leave Plan DELETE NU*";
        HumanResSetup: Record "Human Resources Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        //GenPCode: Codeunit "General Purpose Codeunit";
}

