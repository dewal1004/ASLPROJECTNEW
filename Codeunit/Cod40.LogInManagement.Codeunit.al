codeunit 50018 LogInManagementSubscriber
{
    trigger OnRun()
    begin

    end;

    PROCEDURE OpenSettings();
    BEGIN
        PAGE.Run(PAGE::"User Setup");
    END;

}