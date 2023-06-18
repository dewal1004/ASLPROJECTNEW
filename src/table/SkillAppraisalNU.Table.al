table 60017 "Skill Appraisal. NU*"
{
    LookupPageID = PurchReceiptLines;
    Caption = 'Skill Appraisal. NU*';
    fields
    {
        field(1; "Skill code"; Code[10])
        {
        }
        field(2; "Skill Description"; Text[80])
        {
        }
        field(3; skipper; Boolean)
        {
        }
        field(4; Coxswain; Boolean)
        {
        }
        field(5; "Shrimp Master"; Boolean)
        {
        }
        field(6; Sailor; Boolean)
        {
        }
        field(7; "Marine Engineer"; Boolean)
        {
        }
        field(8; "Engineering Supervisor"; Boolean)
        {
        }
        field(9; Mechanic; Boolean)
        {
        }
        field(10; Carpenter; Boolean)
        {
        }
        field(11; Welder; Boolean)
        {
        }
        field(12; Security; Boolean)
        {
        }
        field(13; Electronics; Boolean)
        {
        }
        field(14; Others; Boolean)
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
