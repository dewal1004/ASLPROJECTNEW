codeunit 70001 "Install"
{
    Subtype = Install;

    trigger OnRun()
    begin
    end;

    trigger OnInstallAppPerCompany()
    var
    begin

        UpdateRoutingQualityMeasure()
    end;

    local procedure UpdateRoutingQualityMeasure()
    var
        RoutingQualityMeasure: Record "Routing Quality Measure";
    begin
        if RoutingQualityMeasure.FindSet() then
            repeat
                if RoutingQualityMeasure."Version Code" <> '' then begin
                    RoutingQualityMeasure."Version CodeTemp" := RoutingQualityMeasure."Version Code";
                    RoutingQualityMeasure."Version Code" := '';
                    RoutingQualityMeasure.Modify();
                end;
            until RoutingQualityMeasure.Next() = 0;
    end;
}

// codeunit 50105 RewardsInstallCode
// {
//     // Set the codeunit to be an install codeunit.
//     Subtype = Install;

//     // This trigger includes code for company-related operations.
//     trigger OnInstallAppPerCompany();
//     var
//         Reward : Record Reward;
//     begin
//         // If the "Reward" table is empty, insert the default rewards.
//         if Reward.IsEmpty() then begin
//             InsertDefaultRewards();
//         end;
//     end;

//     // Insert the GOLD, SILVER, BRONZE reward levels
//     procedure InsertDefaultRewards();
//     begin
//         InsertRewardLevel('GOLD', 'Gold Level', 20);
//         InsertRewardLevel('SILVER', 'Silver Level', 10);
//         InsertRewardLevel('BRONZE', 'Bronze Level', 5);
//     end;

//     // Create and insert a reward level in the "Reward" table.
//     procedure InsertRewardLevel(ID : Code[30]; Description : Text[250]; Discount : Decimal);
//     var
//         Reward : Record Reward;
//     begin
//         Reward.Init();
//         Reward."Reward ID" := ID;
//         Reward.Description := Description;
//         Reward."Discount Percentage" := Discount;
//         Reward.Insert();
//     end;

// }