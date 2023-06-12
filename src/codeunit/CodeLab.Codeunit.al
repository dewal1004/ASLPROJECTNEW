codeunit 70000 "CodeLab"
{

    local procedure MyProcedure()
    var
        Customers: record Customer;
        MaxFieldLen: Integer;
    begin
        MaxFieldLen := MaxStrLen(Customers."Name 2");
    end;
}