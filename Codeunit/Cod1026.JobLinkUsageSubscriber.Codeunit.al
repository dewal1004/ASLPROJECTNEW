codeunit 50029 JobLinkUsageSubscriber
{
  EventSubscriberInstance = StaticAutomatic;

  [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Link Usage",'OnBeforeMatchUsageSpecified' , '', true, true)]
  local procedure MyProcedure()
  begin
    //The fn was renamed
    // JobPlanningLine.SetBypassQtyPostedValidation(true);
  end;
}

