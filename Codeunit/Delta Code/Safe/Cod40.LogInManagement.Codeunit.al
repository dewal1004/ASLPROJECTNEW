codeunit 50018 LogInManagementSubscriber
{
    trigger OnRun()
    begin

    end;

    PROCEDURE OpenSettings();
    BEGIN
        PAGE.Run(PAGE::"User Settings");
    END;

}