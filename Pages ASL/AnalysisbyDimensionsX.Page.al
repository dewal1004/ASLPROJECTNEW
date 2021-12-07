page 50554 "Analysis by Dimensions X"
{
    Caption = 'Analysis by Dimensions';
    DataCaptionExpression = AnalysisViewCode;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SaveValues = true;
    SourceTable = "Dimension Code Buffer";

    layout
    {
    }

    actions
    {
    }

    var
        Text000: Label 'Period';
        Text001: Label '<Sign><Integer Thousand><Decimals,2>';
        Text002: Label 'You have not yet defined an analysis view.';
        Text003: Label '%1 is not a valid line definition.';
        Text004: Label '%1 is not a valid column definition.';
        Text005: Label '1,6,,Dimension 1 Filter';
        Text006: Label '1,6,,Dimension 2 Filter';
        Text007: Label '1,6,,Dimension 3 Filter';
        Text008: Label '1,6,,Dimension 4 Filter';
        GLSetup: Record "General Ledger Setup";
        GLAcc: Record "G/L Account";
        AnalysisView: Record "Analysis View";
        AnalysisViewEntry: Record "Analysis View Entry";
        AnalysisViewBudgetEntry: Record "Analysis View Budget Entry";
        AVBreakdownBuffer: Record "Dimension Code Amount Buffer" temporary;
        CurrExchRate: Record "Currency Exchange Rate";
        AnalysisViewCode: Code[10];
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
        ShowOppositeSign: Boolean;
        ClosingEntryFilter: Option Include,Exclude;
        ShowColumnName: Boolean;
        DateFilter: Text[250];
        InternalDateFilter: Text[250];
        ExcludeClosingDateFilter: Text[250];
        GLAccFilter: Code[250];
        BudgetFilter: Text[250];
        Dim1Filter: Code[250];
        Dim2Filter: Code[250];
        Dim3Filter: Code[250];
        Dim4Filter: Code[250];
        MatrixHeader: Text[50];
        MatrixAmount: Decimal;
        PeriodInitialized: Boolean;
        CurrExchDate: Date;
        BusUnitFilter: Code[250];

    local procedure DimCodeToOption(DimCode: Code[20]): Integer
    var
        BusUnit: Record "Business Unit";
    begin
    end;

    local procedure FindRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4"; var DimCodeBuf: Record "Dimension Code Buffer"; Which: Text[250]): Boolean
    var
        GLAcc: Record "G/L Account";
        BusUnit: Record "Business Unit";
        Period: Record Date;
        DimVal: Record "Dimension Value";
        PeriodFormMgt: Codeunit PeriodFormManagement;
        Found: Boolean;
    begin
    end;

    local procedure NextRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4"; var DimCodeBuf: Record "Dimension Code Buffer"; Steps: Integer): Integer
    var
        GLAcc: Record "G/L Account";
        BusUnit: Record "Business Unit";
        Period: Record Date;
        DimVal: Record "Dimension Value";
        PeriodFormMgt: Codeunit PeriodFormManagement;
        ResultSteps: Integer;
    begin
    end;

    local procedure CopyGLAccToBuf(var TheGLAcc: Record "G/L Account"; var TheDimCodeBuf: Record "Dimension Code Buffer")
    begin
    end;

    local procedure CopyPeriodToBuf(var ThePeriod: Record Date; var TheDimCodeBuf: Record "Dimension Code Buffer")
    begin
    end;

    local procedure CopyBusUnitToBuf(var TheBusUnit: Record "Business Unit"; var TheDimCodeBuf: Record "Dimension Code Buffer")
    begin
    end;

    local procedure CopyDimValueToBuf(var TheDimVal: Record "Dimension Value"; var TheDimCodeBuf: Record "Dimension Code Buffer")
    begin
    end;

    local procedure FindPeriod(SearchText: Code[10])
    var
        Calendar: Record Date;
        PeriodFormMgt: Codeunit PeriodFormManagement;
    begin
    end;

    local procedure CalculateClosingDateFilter()
    var
        AccountingPeriod: Record "Accounting Period";
        FirstRec: Boolean;
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;

    local procedure GetDimSelection(OldDimSelCode: Text[30]): Text[30]
    begin
    end;

    local procedure LookUpCode(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4"; DimCode: Text[30]; "Code": Text[30])
    var
        GLAcc: Record "G/L Account";
        BusUnit: Record "Business Unit";
        DimVal: Record "Dimension Value";
    begin
    end;

    local procedure LookUpDimFilter(Dim: Code[20]; var Text: Text[250]): Boolean
    var
        DimVal: Record "Dimension Value";
    begin
    end;

    local procedure SetCommonFilters(var TheAnalysisViewEntry: Record "Analysis View Entry")
    begin
    end;

    local procedure SetDimFilters(var TheAnalysisViewEntry: Record "Analysis View Entry"; LineOrColumn: Option Line,Column)
    var
        DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4";
        DimCodeBuf: Record "Dimension Code Buffer";
    begin
    end;

    local procedure SetCommonBudgetFilters(var TheAnalysisViewBudgetEntry: Record "Analysis View Budget Entry")
    begin
    end;

    local procedure SetDimBudgetFilters(var TheAnalysisViewBudgetEntry: Record "Analysis View Budget Entry"; LineOrColumn: Option Line,Column)
    var
        DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4";
        DimCodeBuf: Record "Dimension Code Buffer";
    begin
    end;

    local procedure DrillDown(SetColFilter: Boolean)
    begin
    end;

    local procedure ValidateAnalysisViewCode()
    begin
    end;

    local procedure ValidateLineDimCode()
    var
        BusUnit: Record "Business Unit";
    begin
    end;

    local procedure ValidateColumnDimCode()
    var
        BusUnit: Record "Business Unit";
    begin
    end;

    local procedure CalcAmount(SetColFilter: Boolean): Decimal
    var
        Amount: Decimal;
        ColumnCode: Code[20];
    begin
    end;

    local procedure CalcActualAmount(SetColFilter: Boolean): Decimal
    var
        Amount: Decimal;
    begin
    end;

    local procedure CalcBudgAmount(SetColFilter: Boolean): Decimal
    var
        Amount: Decimal;
    begin
    end;

    local procedure GetCaptionClass(AnalysisViewDimType: Integer): Text[250]
    begin
    end;
}

