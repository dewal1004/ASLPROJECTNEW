tableextension 50226 "tableextension50226" extends "Workflow Step Buffer"
{
    //Unsupported feature: Code Modification on "UpdateRecFromWorkflowStep(PROCEDURE 33)".

    //procedure UpdateRecFromWorkflowStep();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if not GetWorkflowStep(WorkflowStep) then
      exit;

    "Response Description" := WorkflowStep.GetDescription;
    "Previous Workflow Step ID" := WorkflowStep."Previous Workflow Step ID";
    Argument := WorkflowStep.Argument;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    "Response Description" := WorkflowStep.GetResponseDescription;
    "Previous Workflow Step ID" := WorkflowStep."Previous Workflow Step ID";
    Argument := WorkflowStep.Argument;
    */
    //end;
}
