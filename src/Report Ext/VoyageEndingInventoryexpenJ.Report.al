report 70043 "Voyage Ending Inventory expenJ"
{
    // Item.Inventory
    // ItemUOV== Items Used On Vessel
    // //
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyageEndingInventoryexpenJ.rdlc';


    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.", Points, "Ending Date";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Job__No__; "No.")
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Global_Dimension_2_Code_; "Global Dimension 2 Code")
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Calculated_CatchCaption; Calculated_CatchCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Global_Dimension_2_Code_Caption; FieldCaption("Global Dimension 2 Code"))
            {
            }
            column(Job_Bill_to_Customer_No_; "Bill-to Customer No.")
            {
            }
            dataitem(Item; Item)
            {
                DataItemTableView = SORTING("S/No.");
                column(Item_Inventory; Inventory)
                {
                }
                column(Item__No__; "No.")
                {
                }
                column(Item_Description; Description)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    CalcFields(Inventory);
                    if Inventory <> 0 then begin
                        Icount[1] := Icount[1] + 10;
                        JobJL.Init;
                        JobJL."Journal Template Name" := 'JOB';
                        JobJL."Journal Batch Name" := Job."No.";
                        JobJL."Line No." := Icount[1];
                        JobJL."Posting Date" := Today;
                        JobJL."Document Date" := Today;
                        JobJLX.Init;

                        // JobJL.SetUpNewLine(JobJL);
                        JobJL."Document No." := Job."No.";
                        JobJL."Job No." := Job."No.";
                        JobJL.Type := 1;
                        JobJL.Validate(JobJL."No.", "No.");
                        JobJL.Description := Description;
                        JobJL.Validate(JobJL.Quantity, Inventory);
                        JobJL."Reconciliation Catch Quantity" := Inventory;
                        JobJL."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                        JobJL."Location Code" := Job.Vessel;
                        JobJL."Shortcut Dimension 2 Code" := Job."Global Dimension 2 Code";
                        JobJL."Shortcut Dimension 1 Code" := Job."Global Dimension 1 Code";
                        JobJL."Variant Code" := Job."Global Dimension 2 Code";
                        JobJL."Reason Code" := Job.Vessel;
                        JobJL."Reason Code" := "Item Category Code";
                        JobJL."Reason Code" := '0';
                        JobJL."Work Type Code" := "Item Category Code";
                        JobJL."Source Code" := 'JETTY';
                        if not JobJL.Insert then JobJL.Modify;

                        //Take Catches to Store
                        JobJL2.Init;
                        JobJL2 := JobJL;
                        JobJL2."Line No." := JobJL2."Line No." - 5;

                        //Determine Location Code
                        LocCd := 'ICF';
                        if Job."Global Dimension 2 Code" = 'ATLANTIC' then LocCd := 'ASL';
                        if Job."Global Dimension 2 Code" = 'COSMOS' then LocCd := 'COS';
                        if Job."Global Dimension 2 Code" = 'SAVANNAH' then LocCd := 'SSC';


                        LocCd := 'ASL';
                        JobJL2."Location Code" := 'CRM-' + LocCd;
                        JobJL2.Validate(JobJL2.Quantity, JobJL2.Quantity * -1);
                        JobJL2."Reconciliation Catch Quantity" := JobJL2.Quantity;
                        JobJL2."Shortcut Dimension 2 Code" := 'ATLANTIC';
                        JobJL2."Variant Code" := '';
                        if not JobJL2.Insert then JobJL2.Modify;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    //Item.SETRANGE(Item."Date Filter",0D,Job."Ending Date");
                    SetCurrentKey("S/No.", "Gen. Prod. Posting Group");
                    SetRange("Global Dimension 2 Filter", Job."Global Dimension 2 Code");
                    SetRange("Location Filter", Job.Vessel);
                    SetRange("Gen. Prod. Posting Group", 'FIS');

                    JobJB.Init;
                    JobJB."Journal Template Name" := 'JOB';
                    JobJB.Name := Job."No.";
                    JobJB."Voyage No." := Job."Voyage No.";
                    JobJB."Job No." := Job.Vessel;
                    JobJB."No. Series" := '';
                    if not JobJB.Insert then JobJB.Modify;
                end;
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Allocation %", "No.") ORDER(Descending) WHERE(Type = CONST(Resource));
                column(Job_Budget_Line__No__; "No.")
                {
                }
                column(Job_Budget_Line__Resource_Group_; "Resource Group")
                {
                }
                column(Resource_on_BoardCaption; Resource_on_BoardCaptionLbl)
                {
                }
                column(Job_Budget_Line__No__Caption; FieldCaption("No."))
                {
                }
                column(Job_Budget_Line__Resource_Group_Caption; FieldCaption("Resource Group"))
                {
                }
                column(Job_Budget_Line_Job_No_; "Job No.")
                {
                }
                column(Job_Budget_Line_Phase_Code; JobJB."Reason Code")
                {
                }
                column(Job_Budget_Line_Task_Code; JobJB.Description)
                {
                }
                column(Job_Budget_Line_Step_Code; JobJB."Voyage No.")
                {
                }
                column(Job_Budget_Line_Type; Type)
                {
                }
                column(Job_Budget_Line_Variant_Code; "Variant Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if RES.Get("No.") then begin
                        RES.Posted := false;
                        RES.Modify;
                        "Ended Voyage" := true;
                        Validate("Ending Date", Job."Ending Date");
                        Modify;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.NewPage;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Job.TestField(Job.Status, 2);
                Message('Sea Days is %1 ', Job."Sea Days");
                if not Confirm('has the ending date been Updated', false) then CurrReport.Quit;
            end;

            trigger OnPostDataItem()
            begin
                "Voyage Ended" := true;
                Modify();
            end;

            trigger OnPreDataItem()
            begin
                Icount[1] := 10000;
                Icount[2] := 10000;
                JNo := Job.GetFilter(Job."No.");
                if JNo = '' then Error('Please, remember to enter the Job No.');
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        JobJB: Record "Job Journal Batch";
        JobJL: Record "Job Journal Line";
        JobJL2: Record "Job Journal Line";
        JobJLX: Record "Job Journal Line";
        Icount: array[2] of Integer;
        LocCd: Code[10];
        I: Code[10];
        RES: Record Resource;
        JNo: Code[10];
        JobSetup: Record "Jobs Setup";
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        InctvCat: Code[20];
        Ended: Boolean;
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Calculated_CatchCaptionLbl: Label 'Calculated Catch';
        Resource_on_BoardCaptionLbl: Label 'Resource on Board';
}

