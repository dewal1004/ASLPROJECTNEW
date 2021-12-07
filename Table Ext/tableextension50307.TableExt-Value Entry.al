tableextension 50307 tableextension50307 extends "Value Entry"
{
    // 
    // UNL-ASL3.60.01.005 (Santus) May 17, 2005
    fields
    {
        field(50026; "Old External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(50300; "Maintenance Code"; Code[10])
        {
        }
        field(50301; "Marked Rec"; Boolean)
        {
            Description = 'For Voyage P&L Reporting Marked current entrie to be reported, cleared at the end of D Rep.';
        }
        field(50302; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(50355; "Vessel Type"; Option)
        {
            OptionCaption = ' ,Short Voyage ';
            OptionMembers = " ","Short Voyage ";
        }
    }
    keys
    {
        key(ASLKey1; "Location Code", "Inventory Posting Group", "Posting Date", "Source Code")
        {
            SumIndexFields = "Valued Quantity";
        }
        key(ASLKey2; "Inventory Posting Group", "Item No.", "Posting Date", "Location Code", "External Document No.")
        {
            SumIndexFields = "Valued Quantity";
        }
        key(ASLKey3; "Document No.", "Gen. Prod. Posting Group")
        {
        }
        key(ASLKey4; "Item Ledger Entry Type", "Location Code", "External Document No.", "Gen. Prod. Posting Group", "Item No.", "Posting Date")
        {
        }
        key(ASLKey5; "Reason Code", "External Document No.", "Gen. Prod. Posting Group", "Posting Date", "Item Ledger Entry Type")
        {
        }
        key(ASLKey6; "External Document No.")
        {
        }
        key(ASLKey7; "Inventory Posting Group", "Posting Date", "Location Code", "External Document No.")
        {
            SumIndexFields = "Valued Quantity";
        }
        // key(Key8; "Gen. Prod. Posting Group", "Document No.", "Marked Rec")
        // {
        // }
    }

    procedure ItemName() Desc: Text[50]
    begin
        if item.Get("Item No.") then Desc := item.Description;
    end;


    //Unsupported feature: Property Modification (Id) on "GLSetup(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : 1100;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "UOMMgt(Variable 1003)".

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : 1103;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "GLSetupRead(Variable 1002)".

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetupRead : 1002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetupRead : 1102;
    //Variable type has not been exported.

    var
        DimMgt: Codeunit DimensionManagement;
        "--------": Integer;
        item: Record Item;
}

