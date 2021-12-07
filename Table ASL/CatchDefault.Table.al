table 50038 "Catch Default"
{

    fields
    {
        field(1; "No."; Code[10])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                if Product.Get("No.") then
                    "Statistics Group" := Product."Statistics Group";
                Description := Product.Description;
                fine := Evaluate("S/No.", "No.");
            end;
        }
        field(2; "Pack Size"; Code[10])
        {
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
        }
        field(3; Brand; Code[10])
        {
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = CONST (Brands));
        }
        field(6; Description; Text[30])
        {
        }
        field(16; "Statistics Group"; Integer)
        {
            Caption = 'Statistics Group';
        }
        field(17; "In Use"; Boolean)
        {
            InitValue = true;
        }
        field(18; "S/No."; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Statistics Group")
        {
        }
        key(Key3; "S/No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Product: Record Item;
        fine: Boolean;
}

