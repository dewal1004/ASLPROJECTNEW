page 60017 "Leave Analysis By Date"
{
    Editable = true;
    PageType = Card;
    SaveValues = true;
    SourceTable = Employee;

    layout
    {
    }

    actions
    {
    }

    var
        AccountingPeriod: Record "Accounting Period";
        PeriodFormManagement: Codeunit PeriodFormManagement;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        LeaveType: Option ACTUAL,PLAN;
        ClosingEntryFilter: Option Include,Exclude;
        RoundingFactor: Option "None","1","1000","1000000";
        AmountType: Option "Net Change","Balance At Date";

    local procedure SetDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;
}

