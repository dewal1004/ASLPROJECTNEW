table 50039 "Operation Daily Radio"
{

    fields
    {
        field(1; Date; Date)
        {
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
            TableRelation = Location WHERE("Location Type" = CONST(Vessel));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(50300; "Voyage No."; Code[10])
        {
        }
        field(50301; "Catch Date"; Date)
        {
        }
        field(50303; "Fishing Ground"; Code[10])
        {
        }
        field(50304; "Sea Temperature"; Decimal)
        {
            MaxValue = 100;
            MinValue = 0;
        }
        field(50305; "Job No."; Code[10])
        {
            TableRelation = Job;
        }
        field(50317; "Global Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            Caption = 'Global Dimension 2 Code';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(50320; "Fish Hold Temp"; Decimal)
        {
        }
        field(50322; "Fuel Balance"; Decimal)
        {
        }
        field(50323; "R.P.M."; Decimal)
        {
        }
        field(50324; "Catch Sea Days"; Decimal)
        {
            Description = 'Total sea day on a day that there is a catch';
        }
        field(50330; "Day of Tide"; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; Date, Name, "Job No.")
        {
            Clustered = true;
        }
        key(Key2; Name, "Job No.")
        {
        }
    }

    fieldgroups
    {
    }
}

