page 50089 "Lost Days (Vessel)"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = Location;
    SourceTableView = WHERE ("Location Type" = CONST (Vessel));

    layout
    {
    }

    actions
    {
    }

    var
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        RoundingFactor: Option "None","1","1000","1000000";
        AmountType: Option "Net Change","Balance at Date","Current Voyage";
        ClosingEntryFilter: Option Include,Exclude;
        "--------": Integer;
        ItemLedgerEntry: Record "Item Ledger Entry";
        GLAcc: Record Item;
        "Port/Sea": Boolean;
        ShowColumnName: Boolean;
        MatrixHeader: Text[250];
        headerT: Text[30];
        BU: Code[10];
        Values: Decimal;

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
}

