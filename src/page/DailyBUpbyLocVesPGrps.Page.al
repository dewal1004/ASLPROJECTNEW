page 51180 "Daily B/Up by Loc/Ves PGrps"
{
    // Code
    // //

    PageType = Card;
    SaveValues = true;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING("S/No.")
                      WHERE("Statistics Group" = FILTER(> 0),
                            "In Use" = CONST(true));
    Caption = 'Daily B/Up by Loc/Ves PGrps';
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
