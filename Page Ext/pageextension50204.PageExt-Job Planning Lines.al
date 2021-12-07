pageextension 50204 pageextension50204 extends "Job Planning Lines"
{
    layout
    {
        modify("Planning Date")
        {

            //Unsupported feature: Property Modification (Name) on ""Planning Date"(Control 7)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Planning Date"(Control 7)".

            Caption = 'Starting Date';
        }
        modify("Planned Delivery Date")
        {

            //Unsupported feature: Property Modification (Name) on ""Planned Delivery Date"(Control 3)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Planned Delivery Date"(Control 3)".

            Caption = 'Ending Date';
            Editable = EndingDateEditable;
        }

        //Unsupported feature: Code Modification on ""No."(Control 23).OnAfterValidate".

        //trigger "(Control 23)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        NoOnAfterValidate;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        NoOnAfterValidate;
        {IF Res.GET("No.") THEN
          BEGIN
            Res.Selected:=TRUE;
            Res.MODIFY;
          END;}
        */
        //end;
        addafter(Description)
        {
            field("Resource Group"; "Resource Group")
            {
            }
            field("Allocation Quantity"; "Allocation Quantity")
            {
            }
            field("Alloted %"; "Alloted %")
            {
            }
            field(Incentive; Incentive)
            {
            }
            field("Hook Inc"; "Hook Inc")
            {
            }
            field("Add/Ded"; "Add/Ded")
            {
            }
            field("Net Inc"; "Net Inc")
            {
            }
        }
        addafter("Posted Line Amount (LCY)")
        {
            field(Status; Status)
            {
            }
        }
    }
    actions
    {
        modify("Job Actual to Budget")
        {

            //Unsupported feature: Property Modification (Name) on ""Job Actual to Budget"(Action 1903776506)".

            Caption = 'Crew List';

            //Unsupported feature: Property Modification (RunObject) on ""Job Actual to Budget"(Action 1903776506)".

        }
        modify("Job Analysis")
        {

            //Unsupported feature: Property Modification (Name) on ""Job Analysis"(Action 1901542506)".

            Caption = 'Catch Incentive';

            //Unsupported feature: Property Modification (RunObject) on ""Job Analysis"(Action 1901542506)".

        }
    }


    //Unsupported feature: Property Modification (Id) on "CanSendToCalendar(Variable 1004)".

    //var
    //>>>> ORIGINAL VALUE:
    //CanSendToCalendar : 1004;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CanSendToCalendar : 1104;
    //Variable type has not been exported.

    var
        EndingDateEditable: Boolean;
        Res: Record Resource;


    //Unsupported feature: Code Modification on "OnInit".

    //trigger OnInit()
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    UnitCostEditable := true;
    LineAmountEditable := true;
    LineDiscountPctEditable := true;
    #4..12
    DocumentNoEditable := true;
    CurrencyDateEditable := true;
    PlanningDateEditable := true;

    JobTaskNoVisible := true;

    CanSendToCalendar := MailManagement.IsSMTPEnabled and not SMTPMailSetup.IsEmpty;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..15
    EndingDateEditable := true;
    #16..19
    */
    //end;
}

