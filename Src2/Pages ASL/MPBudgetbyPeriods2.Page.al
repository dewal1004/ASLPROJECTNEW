page 50032 "MP Budget by Periods2"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = "Employment Contract";

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
        EmpGrp: Record "Employment Contract";

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

