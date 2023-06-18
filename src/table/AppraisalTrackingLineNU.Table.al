table 50057 "Appraisal Tracking Line NU*"
{
    Caption = 'Sales Cr. Memo Tracking Line';
    // DrillDownPageID = 6525;
    // LookupPageID = 6525;

    fields
    {
        field(1; "Item Tracking No."; Integer)
        {
            Caption = 'Item Tracking No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(11; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Editable = false;
            TableRelation = Location;
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(15; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            TableRelation = "Serial No. Information"."Serial No." WHERE("Item No." = FIELD("Item No."),
                                                                         "Variant Code" = FIELD("Variant Code"));
            ValidateTableRelation = false;
        }
        field(18; Positive; Boolean)
        {
            Caption = 'Positive';
            Editable = false;
        }
        field(19; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(20; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(5400; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            TableRelation = "Lot No. Information"."Lot No." WHERE("Item No." = FIELD("Item No."),
                                                                   "Variant Code" = FIELD("Variant Code"));
            ValidateTableRelation = false;
        }
        field(5401; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
        }
        field(5402; "Bin Code"; Code[10])
        {
            Caption = 'Bin Code';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Item Tracking No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Quantity;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description)
        {
        }
    }
}
