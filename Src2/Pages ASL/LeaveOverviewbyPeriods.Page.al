page 50161 "Leave Overview by Periods"
{
    Caption = 'Leave Overview by Periods';
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
        PeriodFormMgt: Codeunit PeriodFormManagement;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AbsenceAmountType: Option "Balance at Date","Net Change";

    local procedure SetDateFilter()
    begin
    end;
}

