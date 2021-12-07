table 50094 "Inventory Posting Group2"
{
    Caption = 'Inventory Posting Group';
    LookupPageID = "Inventory Posting Groups";

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(50300; "Group Type"; Option)
        {
            OptionMembers = " ",Operation;
        }
        field(50301; Category; Code[15])
        {
        }
        field(50302; "Statistics Group"; Integer)
        {
        }
        field(50303; "Group Code"; Code[10])
        {
        }
        field(50304; "Points/KG"; Decimal)
        {
        }
        field(50364; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(50365; "Global Dimension 1 Filter"; Code[20])
        {
            CaptionClass = '1,3,1';
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50366; "Global Dimension 2 Filter"; Code[20])
        {
            CaptionClass = '1,3,2';
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50367; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(50368; Inventory; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                     "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                     "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                     "Location Code" = FIELD ("Location Filter"),
                                                                     "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                     "Variant Code" = FIELD ("Variant Filter"),
                                                                    //  Field5403 = FIELD ("Bin Filter"), ***
                                                                     "Posting Date" = FIELD ("Date Filter"),
                                                                     "Source Code" = FIELD ("Source Filter"),
                                                                     "Source No." = FIELD ("Source No.  Filter")));
            Caption = 'Inventory Total';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50369; Points; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Sales Amount (Actual)" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                           "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                           "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                           "Location Code" = FIELD ("Location Filter"),
                                                                           "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                           "Variant Code" = FIELD ("Variant Filter"),
                                                                        //    Field5403 = FIELD ("Bin Filter"),
                                                                           "Posting Date" = FIELD ("Date Filter"),
                                                                           "Source Code" = FIELD ("Source Filter"),
                                                                           "Source No." = FIELD ("Source No.  Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50378; Inventory1; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                     "Location Code" = FIELD ("Location Filter"),
                                                                     "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Inventory Total';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50379; Inventory2; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                     "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                     "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                     "Location Code" = FIELD ("Location Filter"),
                                                                     "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                     "Variant Code" = FIELD ("Variant Filter"),
                                                                    //  Field5403 = FIELD ("Bin Filter"),
                                                                     "Posting Date" = FIELD ("Date Filter"),
                                                                     "Source Code" = FILTER (<> ''),
                                                                     "Source No." = FIELD ("Source No.  Filter")));
            Caption = 'Inventory Total';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50389; "Drop Shipment Filter"; Boolean)
        {
            Caption = 'Drop Shipment Filter';
            FieldClass = FlowFilter;
        }
        field(55423; "Bin Filter"; Code[10])
        {
            Caption = 'Bin Filter';
            FieldClass = FlowFilter;
            // TableRelation = Table5400.Field2 WHERE (Field1 = FIELD ("Location Filter")); ****
        }
        field(55424; "Variant Filter"; Code[10])
        {
            Caption = 'Variant Filter';
            FieldClass = FlowFilter;
            TableRelation = "Item Variant".Code;
        }
        field(55425; "Source Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Job;
        }
        field(55426; "In Use"; Boolean)
        {
        }
        field(55427; "S/No."; Integer)
        {
        }
        field(55428; "Source No.  Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Job;
        }
        field(55429; "Inventory total1"; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                     "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                     "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                     "Location Code" = FILTER (<> 'CRM-ASL'),
                                                                     "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                     "Variant Code" = FIELD ("Variant Filter"),
                                                                    //  Field5403 = FIELD ("Bin Filter"),
                                                                     "Posting Date" = FIELD ("Date Filter"),
                                                                     "Source Code" = FIELD ("Source Filter"),
                                                                     "Source Code" = FILTER (<> ''),
                                                                     "Valued Quantity" = FILTER (> 0)));
            Caption = 'Inventory Total Vessel';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(55430; "Inventory total2"; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                     "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                     "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                     "Location Code" = FILTER (<> 'CRM-ASL'),
                                                                     "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                     "Variant Code" = FIELD ("Variant Filter"),
                                                                    //  Field5403 = FIELD ("Bin Filter"),
                                                                     "Posting Date" = FIELD ("Date Filter"),
                                                                     "Source Code" = FILTER (<> ''),
                                                                     "External Document No." = FILTER ('')));
            Caption = 'Inventory Total Fishing Grd';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(55431; Reasoncodefilter; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(55432; Inventory3; Decimal)
        {
            CalcFormula = - Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                      "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                      "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                      "Location Code" = FIELD ("Location Filter"),
                                                                      "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                      "Variant Code" = FIELD ("Variant Filter"),
                                                                    //   Field5403 = FIELD ("Bin Filter"),
                                                                      "Posting Date" = FIELD ("Date Filter"),
                                                                      "Source Code" = FILTER (<> ''),
                                                                      "Source No." = FIELD ("Source No.  Filter"),
                                                                      "Valued Quantity" = FILTER (< 0)));
            FieldClass = FlowField;
        }
        field(55433; "Inventory total3"; Decimal)
        {
            CalcFormula = - Sum ("Value Entry"."Valued Quantity" WHERE ("Inventory Posting Group" = FIELD (Code),
                                                                      "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                      "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                      "Location Code" = FILTER (<> 'CRM-ASL'),
                                                                      "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                      "Variant Code" = FIELD ("Variant Filter"),
                                                                    //   Field5403 = FIELD ("Bin Filter"),
                                                                      "Posting Date" = FIELD ("Date Filter"),
                                                                      "Source Code" = FIELD ("Source Filter"),
                                                                      "Source Code" = FILTER (<> ''),
                                                                      "Valued Quantity" = FILTER (< 0)));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Statistics Group")
        {
        }
        key(Key3; Category)
        {
        }
        key(Key4; "Statistics Group", Category, "S/No.")
        {
        }
        key(Key5; "S/No.")
        {
        }
        key(Key6; "S/No.", "Statistics Group")
        {
        }
    }

    fieldgroups
    {
    }
}

