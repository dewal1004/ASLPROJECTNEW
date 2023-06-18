page 50082 "Daily B/Up Fishg Area/PGrp"
{
    PageType = Card;
    SaveValues = true;
    UsageCategory = Administration;
    ApplicationArea = all;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING("S/No.")
                      WHERE(Category = FILTER('1' ..),
                            "In Use" = CONST(true));
    Caption = 'Daily B/Up Fishg Area/PGrp';
    layout
    {
    }

    actions
    {
    }

    local procedure FindPeriod(SearchText: Code[10])
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    begin
    end;

    [Scope('OnPrem')]
    procedure UpdateMatrix()
    begin
    end;
}
