page 50408 "G/L Balance by Dimension (Inv)"
{
    Caption = 'G/L Balance by Dimension';
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
        Text000: Label '<Sign><Integer Thousand><Decimals,2>';
        Text001: Label 'Period';
        Text002: Label '%1 is not a valid line definition.';
        Text003: Label '%1 is not a valid column definition.';
        GLSetup: Record "General Ledger Setup";
        GLAcc: Record "G/L Account";
        DimCodAmtBuf: Record "Dimension Code Amount Buffer" temporary;
        CurrExchRate: Record "Currency Exchange Rate";
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
        ShowColumnName: Boolean;
        DateFilter: Text[250];
        InternalDateFilter: Text[250];
        ExcludeClosingDateFilter: Text[250];
        GLAccFilter: Code[250];
        BudgetFilter: Code[250];
        BusUnitFilter: Code[250];
        GlobalDim1Filter: Code[250];
        GlobalDim2Filter: Code[250];
        MatrixHeader: Text[50];
        MatrixAmount: Decimal;
        PeriodInitialized: Boolean;
        CurrExchDate: Date;

    local procedure DimCodeToOption(DimCode: Code[20]): Integer
    var
        BusUnit: Record "Business Unit";
    begin
    end;

    local procedure FindRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2"; var DimCodeBuf: Record "Dimension Code Buffer"; Which: Text[250]): Boolean
    var
        BusUnit: Record "Business Unit";
        Period: Record Date;
        DimVal: Record "Dimension Value";
        PeriodFormMgt: Codeunit PeriodFormManagement;
        Found: Boolean;
    begin
    end;

    local procedure NextRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2"; var DimCodeBuf: Record "Dimension Code Buffer"; Steps: Integer): Integer
    var
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
        Period: Record Date;
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

    local procedure LookUpCode(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2"; DimCode: Text[30]; "Code": Text[30])
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

    local procedure SetCommonFilters(var TheGLAcc: Record "G/L Account")
    begin
    end;

    local procedure SetDimFilters(var TheGLAcc: Record "G/L Account"; LineOrColumn: Option Line,Column)
    var
        DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4";
        DimCodeBuf: Record "Dimension Code Buffer";
    begin
    end;

    local procedure DrillDown(SetColFilter: Boolean)
    var
        GLEntry: Record "G/L Entry";
        GLBudgetEntry: Record "G/L Budget Entry";
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
}

