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

    local procedure DimCodeToOption(DimCode: Code[20]): Integer
    begin
    end;

    local procedure FindRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2"; var DimCodeBuf: Record "Dimension Code Buffer"; Which: Text[250]): Boolean
    begin
    end;

    local procedure NextRec(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2"; var DimCodeBuf: Record "Dimension Code Buffer"; Steps: Integer): Integer
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

    local procedure LookUpCode(DimOption: Option "G/L Account",Period,"Business Unit","Dimension 1","Dimension 2"; DimCode: Text[30]; "Code": Text[30])
    begin
    end;

    local procedure LookUpDimFilter(Dim: Code[20]; var Text: Text[250]): Boolean
    begin
    end;

    local procedure SetCommonFilters(var TheGLAcc: Record "G/L Account")
    begin
    end;

    local procedure SetDimFilters(var TheGLAcc: Record "G/L Account"; LineOrColumn: Option Line,Column)
    begin
    end;

    local procedure DrillDown(SetColFilter: Boolean)
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
}
