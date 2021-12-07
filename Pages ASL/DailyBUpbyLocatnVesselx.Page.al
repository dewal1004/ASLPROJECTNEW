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

    var
        ItemLedgerEntry: Record "Item Ledger Entry";
        MatrixHeader: Text[250];
        ShowColumnName: Boolean;
        ShowInTransit: Boolean;
        "-----------------": Integer;
        GLSetup: Record "General Ledger Setup";
        GLAcc: Record Item;
        DimCodAmtBuf: Record "Dimension Code Amount Buffer" temporary;
        LineDimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4";
        ColumnDimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4";
        LineDimCode: Text[30];
        ColumnDimCode: Text[30];
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AmountType: Option "Net Change","Balance at Date";
        RoundingFactor: Option "None","1","1000","1000000";
        AmountField: Option Amount,"Debit Amount","Credit Amount";
        ShowActualBudg: Option "Actual Amounts","Budgeted Amounts",Variance,"Variance%","Index%";
        ShowInAddCurr: Boolean;
        ClosingEntryFilter: Option Include,Exclude;
        DateFilter: Text[250];
        InternalDateFilter: Text[250];
        ExcludeClosingDateFilter: Text[250];
        GLAccFilter: Code[250];
        BudgetFilter: Code[250];
        BusUnitFilter: Code[250];
        GlobalDim1Filter: Code[250];
        GlobalDim2Filter: Code[250];
        MatrixAmount: Decimal;
        PeriodInitialized: Boolean;
        CurrExchDate: Date;

    local procedure InventoryDrillDown()
    var
        Period: Record Date;
    begin
    end;

    local procedure UpdateMatrix()
    begin
    end;

    [Scope('Internal')]
    procedure "----------------"()
    begin
    end;

    local procedure FindPeriod(SearchText: Code[10])
    var
        Period: Record Date;
        PeriodFormMgt: Codeunit PeriodFormManagement;
    begin
    end;

    local procedure LookUpDimFilter(Dim: Code[20]; var Text: Text[250]): Boolean
    var
        DimVal: Record "Dimension Value";
    begin
    end;
}

