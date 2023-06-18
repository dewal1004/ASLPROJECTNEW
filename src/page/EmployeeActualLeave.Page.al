page 60022 "Employee Actual Leave"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = Employee;
    Caption = 'Employee Actual Leave';
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

    local procedure SetDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    begin
    end;
}
