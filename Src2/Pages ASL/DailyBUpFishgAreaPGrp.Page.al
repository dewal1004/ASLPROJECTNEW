page 50082 "Daily B/Up Fishg Area/PGrp"
{
    PageType = Card;
    SaveValues = true;
    UsageCategory = Administration;
    ApplicationArea= all;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING("S/No.")
                      WHERE(Category = FILTER('1' ..),
                            "In Use" = CONST(true));

    layout
    {
    }

    actions
    {
    }

    var
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        RoundingFactor: Option "None","1","1000","1000000";
        AmountType: Option "Net Change","Balance at Date";
        ClosingEntryFilter: Option Include,Exclude;
        "--------": Integer;
        ItemLedgerEntry: Record "Item Ledger Entry";
        GLAcc: Record Item;
        ShowInTransit: Boolean;
        ShowColumnName: Boolean;
        MatrixHeader: Text[250];

    local procedure FindPeriod(SearchText: Code[10])
    var
        Calendar: Record Date;
        PeriodFormManagement: Codeunit PeriodFormManagement;
        AccountingPeriod: Record "Accounting Period";
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;

    [Scope('OnPrem')]
    procedure UpdateMatrix()
    begin
    end;
}

