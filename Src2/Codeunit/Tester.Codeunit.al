codeunit 50000 "Tester"
{

    trigger OnRun()
    begin
        //EmploymentContract.DELETEALL;
        Message('Done');
    end;

    var
        EmploymentContract: Record "Company Information";
}

