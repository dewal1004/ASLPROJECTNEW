page 50092 "Actual Catch"
{
    // Code
    // //

    PageType = Card;
    SaveValues = true;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING("S/No.")

                      WHERE("Statistics Group" = FILTER(> 0),
                            "In Use" = CONST(true));
    UsageCategory = Documents;
    ApplicationArea = All;
    Caption = 'Actual Catch';
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

    local procedure FindPeriod2(SearchText: Code[10])
    begin
    end;

    local procedure Bin(SearchText: Code[10])
    begin
    end;
}
