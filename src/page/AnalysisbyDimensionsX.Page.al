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
        AnalysisViewCode: Code[10];

    local procedure DimCodeToOption(DimCode: Code[20]): Integer
    begin
    end;

    local procedure FindRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4"; var DimCodeBuf: Record "Dimension Code Buffer"; Which: Text[250]): Boolean
    begin
    end;

    local procedure NextRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4"; var DimCodeBuf: Record "Dimension Code Buffer"; Steps: Integer): Integer
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
    begin
    end;

    local procedure CalculateClosingDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    begin
    end;

    local procedure GetDimSelection(OldDimSelCode: Text[30]): Text[30]
    begin
    end;

    local procedure LookUpCode(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2","Dimension 3","Dimension 4"; DimCode: Text[30]; "Code": Text[30])
    begin
    end;

    local procedure LookUpDimFilter(Dim: Code[20]; var Text: Text[250]): Boolean
    begin
    end;

    local procedure SetCommonFilters(var TheAnalysisViewEntry: Record "Analysis View Entry")
    begin
    end;

    local procedure SetDimFilters(var TheAnalysisViewEntry: Record "Analysis View Entry"; LineOrColumn: Option Line,Column)
    begin
    end;

    local procedure SetCommonBudgetFilters(var TheAnalysisViewBudgetEntry: Record "Analysis View Budget Entry")
    begin
    end;

    local procedure SetDimBudgetFilters(var TheAnalysisViewBudgetEntry: Record "Analysis View Budget Entry"; LineOrColumn: Option Line,Column)
    begin
    end;

    local procedure DrillDown(SetColFilter: Boolean)
    begin
    end;

    local procedure ValidateAnalysisViewCode()
    begin
    end;

    local procedure ValidateLineDimCode()
    begin
    end;

    local procedure ValidateColumnDimCode()
    begin
    end;

    local procedure CalcAmount(SetColFilter: Boolean): Decimal
    begin
    end;

    local procedure CalcActualAmount(SetColFilter: Boolean): Decimal
    begin
    end;

    local procedure CalcBudgAmount(SetColFilter: Boolean): Decimal
    begin
    end;

    local procedure GetCaptionClass(AnalysisViewDimType: Integer): Text[250]
    begin
    end;
}
