table 50106 "AGO Table"
{
    // UNL-ASL3.60.01.009 (Santus) June 14, 2005

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Job No.';
            NotBlank = true;
            TableRelation = Job;

            trigger OnValidate()
            begin
                if "No." <> '' then begin
                    Job.Get("No.");
                    ETD := Job."Starting Date";
                    ETA := Job."Ending Date";
                    Vessel := Job.Vessel;
                end;
            end;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; ETD; Date)
        {
            Caption = 'ETD';
        }
        field(4; ETA; Date)
        {
            Caption = 'ETA';
        }
        field(6; Comments; Text[30])
        {
            Caption = 'Comments';
        }
        field(7; "Quantity Supplied"; Decimal)
        {
            BlankZero = false;
            Caption = 'Quantity Supplied';
            DecimalPlaces = 0 : 5;
        }
        field(9; "Quantity Purchased 1"; Decimal)
        {
            BlankZero = false;
        }
        field(10; "Quantity Consumed"; Decimal)
        {
            BlankZero = false;
        }
        field(11; Tick; Boolean)
        {
            CalcFormula = Exist("Human Resource Comment Line"
                          WHERE("Table Name" = CONST("Employee Absence"),
                                 "Table Line No." = FIELD("Entry No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Start ROB"; Decimal)
        {
            BlankZero = false;
        }
        field(13; "END ROB"; Decimal)
        {
            BlankZero = false;
        }
        field(14; "Quantity Purchased 2"; Decimal)
        {
            BlankZero = false;
        }
        field(15; "Rate 1"; Decimal)
        {
            BlankZero = false;
        }
        field(16; "Rate 2"; Decimal)
        {
            BlankZero = false;
        }
        field(17; "Transfer 1"; Decimal)
        {
            BlankZero = false;
        }
        field(18; "Transfer 2"; Decimal)
        {
            BlankZero = false;
        }
        field(19; "Drain Qty"; Decimal)
        {
            BlankZero = false;
        }
        field(20; "Sea Days"; Decimal)
        {
            BlankZero = false;
        }
        field(21; "Engr Days"; Decimal)
        {
            BlankZero = false;
        }
        field(22; Vessel; Text[30])
        {
            Caption = 'Vessel';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        AGORec.SetRange(AGORec."Entry No.");
        if AGORec.FindLast() then
            "Entry No." := AGORec."Entry No." + 1
        else
            "Entry No." := 1;
    end;

    var
        AGORec: Record "AGO Table";
        Deptrec: Record "Dimension Value";
        EmployeeAbsence: Record "Employee Absence";
        Job: Record Job;
        approved: Boolean;
        DatDif: array[2] of Decimal;
        DayCount: Decimal;
        //?? approv: Record "Object"; //is this tab existing on Vrs  14?
        fieldval: Text[30];
}

