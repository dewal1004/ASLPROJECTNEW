page 60492 "Daily B/Up by Fishg Areax"
{
    Caption = 'Items by Location';
    PageType = Card;
    SaveValues = true;
    SourceTable = Item;

    layout
    {
    }

    actions
    {
    }

    var
        ItemLedgerEntry: Record "Item Ledger Entry";
        MatrixHeader: Text[250];
        ShowColumnName: Boolean;
        ShowInTransit: Boolean;

    local procedure InventoryDrillDown()
    begin
    end;

    local procedure UpdateMatrix()
    begin
    end;
}

