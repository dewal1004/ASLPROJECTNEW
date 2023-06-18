tableextension 50225 "tableextension50225" extends "Workflow Step"
{
    //Unsupported feature: Code Modification on "OpenEventConditions(PROCEDURE 17)".

    //procedure OpenEventConditions();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestField(Type,Type::"Event");
    TestField("Function Name");

    #4..11
    if UserClickedOK and (ReturnFilters <> CurrentEventFilters) then begin
      CheckEditingIsAllowed;
      if ReturnFilters = WorkflowEvent.CreateDefaultRequestPageFilters then
        DeleteEventConditions
      else begin
        if IsNullGuid(Argument) then
          CreateEventArgument(WorkflowStepArgument,Rec);
        WorkflowStepArgument.SetEventFilters(ReturnFilters);
      end;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..14
        DeleteEventArgument(Rec)
    #16..21
    */
    //end;

    //Unsupported feature: Code Modification on "CompareEventRule(PROCEDURE 21)".

    //procedure CompareEventRule();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestField("Workflow Code");
    TestField(ID);
    WorkflowStep.TestField("Workflow Code");
    WorkflowStep.TestField(ID);

    FindWorkflowRules(ThisWorkflowRule);
    WorkflowStep.FindWorkflowRules(OtherWorkflowRule);

    exit((ThisWorkflowRule.Count <= 1) and (ThisWorkflowRule.Count = OtherWorkflowRule.Count) and
      (ThisWorkflowRule."Field No." = OtherWorkflowRule."Field No.") and
      (ThisWorkflowRule.Operator = OtherWorkflowRule.Operator))
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
    exit((ThisWorkflowRule.Count = 1 ) and (ThisWorkflowRule.Count = OtherWorkflowRule.Count) and
      (ThisWorkflowRule."Field No." = OtherWorkflowRule."Field No.") and
      (ThisWorkflowRule.Operator = OtherWorkflowRule.Operator))
    */
    //end;

    //Unsupported feature: Code Modification on "GetDescription(PROCEDURE 1)".

    //procedure GetDescription();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case Type of
      WorkflowStep.Type::"Event":
        if WorkflowEvent.Get("Function Name") then
          exit(WorkflowEvent.Description);
      WorkflowStep.Type::Response:
        if WorkflowStepArgument.Get(Argument) then
          exit(WorkflowResponseHandling.GetDescription(WorkflowStepArgument));
    end;
    exit('');
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    case Type of
      WorkflowStep.Type::"Event":
        exit(GetEventDescription);
      WorkflowStep.Type::Response:
        exit(GetResponseDescription);
      else
        exit('');
    end;
    */
    //end;

    //Unsupported feature: Code Modification on "FindWorkflowRules(PROCEDURE 19)".

    //procedure FindWorkflowRules();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestField("Workflow Code");
    TestField(ID);
    WorkflowRule.SetRange("Workflow Code","Workflow Code");
    WorkflowRule.SetRange("Workflow Step ID",ID);
    WorkflowRule.SetRange("Workflow Step Instance ID",ZeroGuid);
    exit(WorkflowRule.FindSet);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    exit(not WorkflowRule.IsEmpty);
    */
    //end;

    //Unsupported feature: Code Modification on "HasParentEvent(PROCEDURE 23)".

    //procedure HasParentEvent();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    WorkflowStep.SetRange(ID,"Previous Workflow Step ID");
    WorkflowStep.SetRange("Workflow Code","Workflow Code");
    WorkflowStep.SetRange(Type,WorkflowStep.Type::"Event");

    if WorkflowStep.FindFirst then
    #6..12
      until WorkflowStep.Next = 0;

    exit(false);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    WorkflowStep.SetRange(ID,"Previous Workflow Step ID");
    #3..15
    */
    //end;

    local procedure DeleteEventArgument(var WorkflowStep: Record "Workflow Step")
    var
        WorkflowStepArgument: Record "Workflow Step Argument";
        ZeroGUID: Guid;
    begin
        WorkflowStep.TestField(Type, WorkflowStep.Type::"Event");

        WorkflowStepArgument.Get(WorkflowStep.Argument);
        WorkflowStepArgument.Delete(true);

        WorkflowStep.Argument := ZeroGUID;
        WorkflowStep.Modify(true);
    end;

    procedure GetEventDescription(): Text[250]
    var
        WorkflowEvent: Record "Workflow Event";
    begin
        if Type <> Type::"Event" then
            exit('');

        if not WorkflowEvent.Get("Function Name") then
            exit('');

        exit(WorkflowEvent.Description);
    end;

    procedure GetResponseDescription(): Text[250]
    var
        WorkflowStepArgument: Record "Workflow Step Argument";
        WorkflowResponseHandling: Codeunit "Workflow Response Handling";
    begin
        if Type <> Type::Response then
            exit('');

        if not WorkflowStepArgument.Get(Argument) then
            exit('');

        exit(WorkflowResponseHandling.GetDescription(WorkflowStepArgument));
    end;

    //Unsupported feature: Deletion (VariableCollection) on "GetDescription(PROCEDURE 1).WorkflowEvent(Variable 1001)".

    //Unsupported feature: Deletion (VariableCollection) on "GetDescription(PROCEDURE 1).WorkflowStepArgument(Variable 1003)".

    //Unsupported feature: Deletion (VariableCollection) on "GetDescription(PROCEDURE 1).WorkflowResponseHandling(Variable 1002)".
}
