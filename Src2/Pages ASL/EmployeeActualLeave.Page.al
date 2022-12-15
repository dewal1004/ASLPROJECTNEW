page 60022 "Employee Actual Leave"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = Employee;

    layout
    {
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LookupMode := true;
    end;

    var
        AccountingPeriod: Record "Accounting Period";
        PeriodFormManagement: Codeunit PeriodFormManagement;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        LeaveType: Option Plan,Actual;
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

