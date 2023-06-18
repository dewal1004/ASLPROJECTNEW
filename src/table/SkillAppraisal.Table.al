table 50017 "Skill Appraisal"
{
    Caption = 'Skill Appraisal';
    fields
    {
        field(1; "Skill code"; Code[10])
        {
        }
        field(2; "Skill Description"; Text[80])
        {
        }
        field(3; "1"; Boolean)
        {
        }
        field(4; "3"; Boolean)
        {
        }
        field(6; "5"; Boolean)
        {
        }
        field(7; "2"; Boolean)
        {
        }
        field(8; "4"; Boolean)
        {
        }
        field(9; "6"; Boolean)
        {
        }
        field(14; "7"; Boolean)
        {
        }
        field(15; Interview; Boolean)
        {
        }
        field(16; "Interview Text"; Boolean)
        {
        }
        field(17; Type; Option)
        {
            OptionCaption = ' ,Account (G/L),Item,Resource,Fixed Asset,Charge (Item),Skill,Performance';
            OptionMembers = " ","Account (G/L)",Item,Resource,"Fixed Asset","Charge (Item)",Skill,Performance;
        }
        field(18; Performance; Option)
        {
            OptionMembers = " ",Excellent,Good,"Average",Poor;

            trigger OnValidate()
            begin
                Points := 0;
                case Performance of
                    Performance::" ":
                        Points := 0;
                    Performance::Excellent:
                        Points := 4;
                    Performance::Good:
                        Points := 3;
                    Performance::Average:
                        Points := 2;
                end;
            end;
        }
        field(19; Points; Decimal)
        {
            Editable = false;
        }
        field(20; "Total Score"; Decimal)
        {
        }
        field(21; comment; Text[80])
        {
        }
        field(22; "Document Type"; Option)
        {
            OptionMembers = Coxswain,"Shrimp Master",Sailor,Skipper,"Engineering Supervisor","Marine Engineer",Mechanic,Carpenter,Welder,Security,Electronics,Others;
        }
        field(23; "Document No."; Code[10])
        {
        }
        field(51; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";

            trigger OnValidate()
            begin
                /*IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
                  IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
                    VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
                */
            end;
        }
        field(58; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(59; quantity; Decimal)
        {
            CalcFormula = Lookup("Sales Invoice Line".Quantity WHERE("Document No." = FIELD("Document Filter"),
                                                                      "No." = FIELD("Skill code")));
            FieldClass = FlowField;
            Editable = false;
        }
        field(60; "Document Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Skill code", "Skill Description")
        {
            Clustered = true;
        }
        key(Key2; Type)
        {
        }
    }

    fieldgroups
    {
    }
}
