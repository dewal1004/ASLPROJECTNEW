tableextension 50202 "tableextension50202" extends "Job Planning Line"
{
    // EP.01  20160214 Srikanth : Resource if selected then should not be available again.
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                if rec.Type = Type::Resource then begin
                    Res.GET("No.");
                    Res.TESTFIELD(Blocked, FALSE);
                    if res.Posted then
                        Error('Resource is Already Posted')
                    else
                        Res.Posted := TRUE;
                    Res.MODIFY;
                    "Unit Cost" := Res."Unit Cost";
                    "Unit Price" := Res."Unit Price";
                    "Gen. Prod. Posting Group" := Res."Gen. Prod. Posting Group";
                    "Resource Group" := Res."Resource Group No.";
                    ResourceExist;
                    FindIncPerct;
                    Validate("Unit of Measure Code", Res."Base Unit of Measure");
                    if Type <> Type::Text then
                        Validate(Quantity);
                end;
            end;
        }
        modify(Quantity)
        {
            trigger OnBeforeValidate()
            var
            begin
                Invsetup.Get;
                if Job.Get("Job No.") then begin
                    if Job."Sea Days" <> 0 then
                        DayFrac := Quantity / Job."Sea Days";
                    Job.SetFilter(Job."Location Filter", Invsetup."Default Cold Room");
                    Job.SetFilter(Job."No.", "Job No.");
                    Job.CalcSums(Job."Incentive (Pt. Based)", Job."Incentive (Pt. Based) Actual");
                    Validate(rec.Incentive, Job."Incentive (Pt. Based) Actual" * "Allocation %" * 0.01 * DayFrac);
                    //MODIFY(TRUE);
                    "Alloted %" := "Allocation %" * DayFrac;
                end;

            end;
        }
        //Unsupported feature: Property Insertion (ValidateTableRelation) on ""No."(Field 7)".


        //Unsupported feature: Code Modification on ""No."(Field 7).OnValidate".

        //trigger "(Field 7)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateModification(xRec."No." <> "No.");

        CheckUsageLinkRelations;
        #4..27
              Res.Get("No.");
              Res.CheckResourcePrivacyBlocked(false);
              Res.TestField(Blocked,false);
              Res.TestField("Gen. Prod. Posting Group");
              if Description = '' then
                Description := Res.Name;
              if "Description 2" = '' then
                "Description 2" := Res."Name 2";
              "Gen. Prod. Posting Group" := Res."Gen. Prod. Posting Group";
              "Resource Group No." := Res."Resource Group No.";
              Validate("Unit of Measure Code",Res."Base Unit of Measure");
            end;
          Type::Item:
            begin
        #42..73
              Description := StandardText.Description;
            end;
        end;

        if Type <> Type::Text then
          Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..30
              Res.Posted:=true;
              Res.Modify;
        #31..35
              "Unit Cost" := Res."Unit Cost";
              "Unit Price" := Res."Unit Price";
              "Gen. Prod. Posting Group" := Res."Gen. Prod. Posting Group";
              "Resource Group" := Res."Resource Group No.";
              ResourceExist;
              FindIncPerct;
              Validate("Unit of Measure Code",Res."Base Unit of Measure")
        #39..76
        if Type <> Type::Text then
          Validate(Quantity);
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 9).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Usage Link" then
          if not BypassQtyValidation then begin
            if ("Qty. Posted" > 0) and (Quantity < "Qty. Posted") then
              Error(QtyLessErr,FieldCaption(Quantity),FieldCaption("Qty. Posted"));
            if ("Qty. Posted" < 0) and (Quantity > "Qty. Posted") then
        #6..11
        if ("Qty. Transferred to Invoice" < 0) and (Quantity > "Qty. Transferred to Invoice") then
          Error(QtyGreaterErr,FieldCaption(Quantity),FieldCaption("Qty. Transferred to Invoice"));

        case Type of
          Type::Item:
            if not Item.Get("No.") then
        #18..38
        UpdateReservation(FieldNo(Quantity));

        UpdateAllAmounts;
        BypassQtyValidation := false;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //Added as per 3.0
        Invsetup.Get;
        if Job.Get("Job No.") then
        begin
          if Job."Sea Days"<>0 then
            DayFrac:=Quantity/Job."Sea Days";
          Job.SetFilter(Job."Location Filter",Invsetup."Default Cold Room");
          Job.SetFilter(Job."No.","Job No.");
          Job.CalcSums(Job."Incentive (Pt. Based)",Job."Incentive (Pt. Based) Actual");
          Validate(Incentive,Job."Incentive (Pt. Based) Actual"*"Allocation %"*0.01*DayFrac);
          //MODIFY(TRUE);
          "Alloted %":="Allocation %"*DayFrac;
          end;

        //Added as per 3.0

        if "Usage Link" then
          if not BypassQtyPostedValidation then begin
        #3..14
        BypassQtyPostedValidation := false;

        #15..41
        */
        //end;
        field(50300; Incentive; Decimal)
        {

            trigger OnValidate()
            begin
                "Net Inc" := Incentive + "Hook Inc" + "Add/Ded";
            end;
        }
        field(50301; "Hook Inc"; Decimal)
        {

            trigger OnValidate()
            begin
                "Net Inc" := Incentive + "Hook Inc" + "Add/Ded";
            end;
        }
        field(50302; "Add/Ded"; Decimal)
        {

            trigger OnValidate()
            begin
                "Net Inc" := Incentive + "Hook Inc" + "Add/Ded";
            end;
        }
        field(50303; "Net Inc"; Decimal)
        {
            Editable = false;
        }
        field(50305; "Alloted %"; Decimal)
        {
        }
        field(50308; "Allocation Quantity"; Decimal)
        {
        }
        field(50309; "Allocation %"; Decimal)
        {
            Caption = 'Allocation %';
            DecimalPlaces = 2 : 2;
        }
        field(50314; "Ending Date"; Date)
        {
            Caption = 'Ending Date';

            trigger OnValidate()
            begin

                case Type of
                    Type::Resource:
                        begin
                            Validate(Quantity, ("Ending Date" - "Starting Date"));
                        end;
                end;
            end;
        }
        field(50315; "Resource Group"; Code[20])
        {
        }
        field(50317; Counter; Integer)
        {
            CalcFormula = Count("Job Planning Line" WHERE("Job No." = FIELD("Job No."),
                                                           "No." = FILTER(<> '')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50318; "Ended Voyage"; Boolean)
        {
        }
        field(50319; "Starting Date"; Date)
        {

            trigger OnValidate()
            begin
                case Type of
                    Type::Resource:
                        begin
                            Validate(Quantity, ("Ending Date" - "Starting Date"));
                        end;
                end;
            end;
        }
        field(50320; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';

            trigger OnValidate()
            begin
                /*IF "Phase Code" <> '' THEN BEGIN
                  Phase.GET("Phase Code");
                  Description := Phase.Description;
                END;*/ //dik

            end;
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ValidateModification(true);
    CheckRelatedJobPlanningLineInvoice;

    #4..14
      TestField("Reserved Qty. (Base)",0);
    end;

    if "Schedule Line" then
      Job.UpdateOverBudgetValue("Job No.",false,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..17
    */
    trigger OnAfterDelete()
    begin
        if Res.Get("No.") then begin
            Res.Posted := false;
            Res.Modify;
        end;

        if "Schedule Line" then
            Job.UpdateOverBudgetValue("Job No.", false, "Total Cost (LCY)");
    end;


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LockTable;
    GetJob;
    if Job.Blocked = Job.Blocked::All then
    #4..6
    InitJobPlanningLine;
    if Quantity <> 0 then
      UpdateReservation(0);

    if "Schedule Line" then
      Job.UpdateOverBudgetValue("Job No.",false,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..9
    */
    trigger OnAfterInsert()
    begin
        Job.Get("Job No.");
        "Starting Date" := Job."Starting Date";
        "Ending Date" := Job."Ending Date";        //AAA-April2002

        if Res.Get("No.") then begin
            Res.Posted := true;
            Res.Modify;
        end;

    end;


    //Unsupported feature: Code Modification on "OnRename".

    //trigger OnRename()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Error(RecordRenameErr,FieldCaption("Job No."),FieldCaption("Job Task No."),TableCaption);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    trigger OnAfterRename()
    begin
        case Type of
            Type::Resource:
                begin
                    if Res.Get("No.") then begin
                        Res.Posted := false;
                        Res.Modify;
                        Commit;
                    end;
                end
        end;

        Error(RecordRenameErr, FieldCaption("Job No."), FieldCaption("Job Task No."), TableCaption);

    end;

    //Unsupported feature: Property Modification (Name) on "SetBypassQtyValidation(PROCEDURE 32)".



    //Unsupported feature: Code Modification on "SetBypassQtyValidation(PROCEDURE 32)".

    //procedure SetBypassQtyValidation();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    BypassQtyValidation := Bypass;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    BypassQtyPostedValidation := Bypass;
    */
    //end;

    procedure FindIncPerct()
    begin
        if Res.Get("No.") then
            if ResGr.Get(Res."Resource Group No.") then
                if not ResGr."Crew(Juniour)" then
                    "Allocation %" := ResGr.IncentivePect
                else begin
                    Job.Get("Job No.");
                    OperatnSetup.Get;
                    if Job."No. of Deck Hands" <> 0 then
                        "Allocation %" := OperatnSetup."Crew Share Percentage" / Job."No. of Deck Hands";
                end;
        //Level:=ResGr.Level;
    end;

    local procedure ResourceExist()
    begin
        JobPlanLine.SetFilter("No.", Res."No.");
        JobPlanLine.SetRange("Job No.", "Job No.");
        if JobPlanLine.FindFirst then begin
            Error('Resource Already Exist', FieldCaption("Line No."), "No.");
        end;
    end;


    //Unsupported feature: Property Modification (Id) on "BypassQtyValidation(Variable 1035)".

    //var
    //>>>> ORIGINAL VALUE:
    //BypassQtyValidation : 1035;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BypassQtyValidation : 1043;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "NotPossibleJobPlanningLineErr(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //NotPossibleJobPlanningLineErr : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NotPossibleJobPlanningLineErr : 1100;
    //Variable type has not been exported.

    var
        ResGr: Record "Resource Group";

    var
        OperatnSetup: Record "Jobs Setup";
        Invsetup: Record "Inventory Setup";

    var
        "---": Integer;
        Incent: Decimal;
        //"Starting Date": Date;
        JobPlanLine: Record "Job Planning Line";
        DayFrac: Decimal;
        Resouce: Text;
        Res: Record Resource;
        Job: Record Job;

    var
        BypassQtyPostedValidation: Boolean;
        RecordRenameErr: Text;
}

