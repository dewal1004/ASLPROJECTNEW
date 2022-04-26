codeunit 52007 "MPBudget-Open"
{
    TableNo = "Employment Contract";

    trigger OnRun()
    begin
        if GetFilter("Budget Filter") = '' then
            SearchForName := true
        else begin
            MPBudget.SetFilter(Name, GetFilter("Budget Filter"));
            SearchForName := not MPBudget.Find('-');
            MPBudget.SetRange(Name);
        end;
        if SearchForName then begin
            if not MPBudget.Find('-') then begin
                MPBudget.Init;
                MPBudget.Name := 'DEFAULT';
                MPBudget.Description := 'Default Budget';
                MPBudget.Insert;
            end;
            SetFilter("Budget Filter", MPBudget.Name);
        end;
    end;

    var
        MPBudget: Record "MP Budget Name";
        SearchForName: Boolean;
}

