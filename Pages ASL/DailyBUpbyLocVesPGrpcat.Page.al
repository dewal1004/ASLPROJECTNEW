page 50111 "Daily B/Up by Loc/Ves PGrp cat"
{
    // Code
    // //

    PageType = Card;
    SaveValues = true;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING ("S/No.")
                      WHERE ("Statistics Group" = FILTER (> 0),
                            "In Use" = CONST (true));

    layout
    {
    }

    actions
    {
    }

    var
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        RoundingFactor: Option "None","1","1000","1000000";
        AmountType: Option "Net Change","Balance at Date","In Period";
        ClosingEntryFilter: Option Include,Exclude;
        "--------": Integer;
        ItemLedgerEntry: Record "Item Ledger Entry";
        GLAcc: Record Item;
        ShowInTransit: Boolean;
        ShowColumnName: Boolean;
        ShowAllVess: Boolean;
        MatrixHeader: Text[250];
        B: Code[10];
        VessReptd: Integer;

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

    [Scope('Internal')]
    procedure UpdateMatrix()
    begin
    end;

    local procedure FindPeriod2(SearchText: Code[10])
    var
        Calendar: Record Date;
        PeriodFormManagement: Codeunit PeriodFormManagement;
        AccountingPeriod: Record "Accounting Period";
    begin
    end;

    local procedure Bin(SearchText: Code[10])
    var
        Calendar: Record Date;
        PeriodFormManagement: Codeunit PeriodFormManagement;
        AccountingPeriod: Record "Accounting Period";
    begin
    end;
}

