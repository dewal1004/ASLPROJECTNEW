pageextension 50204 "pageextension50204" extends "Job Planning Lines"
{
    layout
    {

        modify("Planning Date")
        {
            //Caption = 'Starting Date';
            Visible = false;
        }
        modify("Planned Delivery Date")
        {
            //Caption = 'Ending Date';
            Editable = EndingDateEditable;
            Visible = false;
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
        /*modify("No.")
        {
            trigger OnAfterValidate()
            Var res: Record Resource;
        IF Res.GET("No.") THEN
                BEGIN
                    Res.Selected := TRUE;
                    Res.MODIFY;
                END;
        }
        */
        //end;
        addafter("Line Type")
        {
            field("Starting Date"; "Starting Date")
            {
                ApplicationArea = All;
            }
            field("Ending Date"; "Ending Date")
            {
                ApplicationArea = All;
            }
        }
        addafter(Description)
        {
            field("Resource Group"; "Resource Group")
            {
                ApplicationArea = All;
            }
            field("Allocation %"; "Allocation %")
            {
                ApplicationArea = All;
            }
            field("Allocation Quantity"; "Allocation Quantity")
            {
                ApplicationArea = All;
            }
            field("Alloted %"; "Alloted %")
            {
                ApplicationArea = All;
            }
            field(Incentive; Incentive)
            {
                Editable = true;
                ApplicationArea = All;
            }
            field("Hook Inc"; "Hook Inc")
            {
                ApplicationArea = All;
            }
            field("Add/Ded"; "Add/Ded")
            {
                ApplicationArea = All;
            }
            field("Net Inc"; "Net Inc")
            {
                ApplicationArea = All;
            }
        }
        addafter("Posted Line Amount (LCY)")
        {
            field(Status; Status)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter("Job Actual to Budget")
        {
            action("Crew List")
            {
                Caption = 'Çrew List';
                ApplicationArea = All;
                RunObject = report "Crew List";
                RunPageOnRec = true;
            }
            action("Catch Incentive")
            {
                Caption = 'Catch Incentive';
                ApplicationArea = All;
                RunObject = report "Catch Incentive";
                RunPageOnRec = true;
            }


            //Unsupported feature: Property Modification (RunObject) on ""Job Actual to Budget"(Action 1903776506)".

        }
        // modify("Job Analysis")
        // {

        //     //Unsupported feature: Property Modification (Name) on ""Job Analysis"(Action 1901542506)".

        //     Caption = 'Catch Incentive';

        //     //Unsupported feature: Property Modification (RunObject) on ""Job Analysis"(Action 1901542506)".

        // }
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

