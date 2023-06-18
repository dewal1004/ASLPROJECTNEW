page 90491 "Daily B/Up by Locatn (Vessel)x"
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

    local procedure InventoryDrillDown()
    begin
    end;

    local procedure UpdateMatrix()
    begin
    end;

    [Scope('OnPrem')]
    procedure "----------------"()
    begin
    end;

    local procedure FindPeriod(SearchText: Code[10])
    begin
    end;

    local procedure LookUpDimFilter(Dim: Code[20]; var Text: Text[250]): Boolean
    begin
    end;
}
