table 50300 "Fishing Area +"
{
    LookupPageID = "Fishing Area";
    Caption = 'Fishing Area +';
    fields
    {
        field(1; "No."; Code[10])
        {
        }
        field(2; "Code"; Code[10])
        {
        }
        field(3; Category; Integer)
        {
        }
        field(50302; "Voyage Sea Days"; Decimal)
        {
            Editable = false;

            trigger OnValidate()
            begin
                //VSDVal:=Location."Voyage Sea Days";
            end;
        }
        field(50305; VSDVal; Decimal)
        {
            Editable = false;
        }
        field(50328; "date filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "No.", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}
