codeunit 50029 "JobLinkUsageSubscriber"
{
  EventSubscriberInstance = StaticAutomatic;

  [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Link Usage",'OnBeforeMatchUsageSpecified' , '', true, true)]
  local procedure MyProcedure() var JobPlanningLine: record "Job Planning Line";
  begin
    //The fn was renamed
    //JobPlanningLine.SetBypassQtyPostedValidation(true);
  end;
}

