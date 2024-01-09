codeunit 50034 "ItemCostManagementSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ItemCostManagement, 'OnBeforeCheckUpdateLastDirectCost', '', true, true)]
    local procedure ItemCostManagementOnBeforeCheckUpdateLastDirectCost(var Item: Record Item)
    begin
        Item."Last Direct Cost3" := Item."Last Direct Cost2";
        Item."Last Direct Cost2" := Item."Last Direct Cost";
    end;
}
