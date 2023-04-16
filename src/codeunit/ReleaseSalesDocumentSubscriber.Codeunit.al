codeunit 50015 "ReleaseSalesDocumentSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReopenSalesDoc', '', true, true)]
    local procedure MyProcedure()
    var
        Usersetup: Record "User Setup";

    begin
        Usersetup.Get(UserId);
        if Usersetup."Return Release To Open" = false then
            Error('You are not allowed to reopen this Document');
    end;
}