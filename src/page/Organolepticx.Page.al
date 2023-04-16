page 90090 "Organolepticx"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = "G/L Account";

    layout
    {
    }

    actions
    {
    }

    var
        PeriodFormManagement: Codeunit PeriodFormManagement;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AmountType: Option "Net Change","Balance at Date";
        RoundingFactor: Option "None","1","1000","1000000";

    local procedure SetDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;

    local procedure EvaluateAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;
}

