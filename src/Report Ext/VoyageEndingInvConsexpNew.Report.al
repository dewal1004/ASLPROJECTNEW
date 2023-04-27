report 50183 "Voyage Ending Inv Cons exp-New"
{
    // Item.Inventory
    // ItemUOV== Items Used On Vessel
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyageEndingInvConsexpNew.rdlc';


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
            column(Calculated_Inventory_on_BoardCaption; Calculated_Inventory_on_BoardCaptionLbl)
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
                DataItemTableView = SORTING("S/No.") WHERE("Statistics Group" = FILTER(0 .. 3));
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
                    SetRange("Date Filter", 0D, Job."Ending Date");
                    //SETRANGE("Location Filter",Job.Vessel);
                    CalcFields(Inventory);
                    if Inventory <> 0 then begin
                        Icount[1] := Icount[1] + 10000;
                        JobJL.Init;
                        JobJL."Journal Template Name" := 'JOB';
                        JobJL."Journal Batch Name" := JobJB.Name;
                        JobJL."Line No." := Icount[1];
                        JobJL."Posting Date" := Today;
                        JobJL."Document Date" := Today;
                        JobJLX.Init;

                        //  JobJL.SetUpNewLine(JobJL);
                        JobJL."Document No." := Job."No.";
                        JobJL."Job No." := Job."No.";
                        JobJL.Type := 1;
                        JobJL.Validate(JobJL."No.", "No.");
                        WorkTypeCode("No.");
                        JobJL.Description := Description;
                        JobJL.Validate(JobJL.Quantity, Inventory);
                        JobJL.Validate(JobJL."Unit Cost", 0);  //Sept 30,2002 Unit Cost is Zero
                        JobJL."Reconciliation Catch Quantity" := Inventory;
                        JobJL."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                        JobJL."Location Code" := Job.Vessel;
                        JobJL."External Document No." := Job."Voyage No.";
                        JobJL."Shortcut Dimension 2 Code" := Job."Global Dimension 2 Code";
                        JobJL."Shortcut Dimension 1 Code" := Job."Global Dimension 1 Code";
                        //  JobJL."Variant Code":=Job."Global Dimension 2 Code";
                        //  JobJL."Phase Code":=  Job.Vessel;
                        //  JobJL."Task Code":="Product Group Code";
                        //  JobJL."Step Code":='0';
                        JobJL."Work Type Code" := "Item Category Code";
                        JobJL."Source Code" := Job.Vessel;
                        if not JobJL.Insert then JobJL.Modify;

                        //Take Catches to Store
                        JobJL2.Init;
                        JobJL2 := JobJL;
                        JobJL2."Line No." := JobJL2."Line No." - 5000;

                        LocCd := 'ASL';
                        JobJL2."Location Code" := 'CRM-' + LocCd;
                        JobJL2."Reconciliation Catch Quantity" := JobJL2.Quantity * -1;
                        JobJL2.Validate(JobJL2.Quantity, 0);
                        JobJL2."Shortcut Dimension 2 Code" := 'ATLANTIC';
                        JobJL2."Variant Code" := '';
                        if not JobJL2.Insert then JobJL2.Modify;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("S/No.", "Gen. Prod. Posting Group");
                    //SETRANGE("Global Dimension 2 Filter",Job."Global Dimension 2 Code");  //To be used when more that one buss unit is reintroduced
                    SetRange("Date Filter", 0D, Job."Ending Date");
                    SetRange("Location Filter", Job.Vessel);
                    SetRange("Gen. Prod. Posting Group", 'FIS');

                    JobJB.Init;
                    JobJB."Journal Template Name" := 'JOB';
                    JobJB.Name := Job."No." + 'EXPT';
                    JobJB."Voyage No." := Job."Voyage No.";
                    JobJB."Job No." := Job.Vessel;
                    if Loc.Get(Job.Vessel) then JobJB."Vessel Name" := Loc.Name else JobJB."Vessel Name" := Job.Vessel;
                    JobJB."No. Series" := '';
                    JobJB."Batch Type" := 1;
                    if not JobJB.Insert then JobJB.Modify;
                end;
            }
            dataitem(ItemMrkt; Item)
            {
                DataItemTableView = SORTING("S/No.") WHERE("Statistics Group" = FILTER(4));
                column(ItemMrkt__No__; "No.")
                {
                }
                column(ItemMrkt_Description; Description)
                {
                }
                column(ItemMrkt_Inventory; Inventory)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    SetRange("Date Filter", 0D, Job."Ending Date");
                    CalcFields(Inventory);
                    if Inventory <> 0 then begin
                        Icount[2] := Icount[2] + 10000;
                        JobJL.Init;
                        JobJL."Journal Template Name" := 'JOB';
                        JobJL."Journal Batch Name" := JobJB.Name;
                        JobJL."Line No." := Icount[2];
                        JobJL."Posting Date" := Today;
                        JobJL."Document Date" := Today;
                        JobJLX.Init;

                        //  JobJL.SetUpNewLine(JobJL);
                        JobJL."Document No." := Job."No.";
                        JobJL."Job No." := Job."No.";
                        JobJL.Type := 1;
                        JobJL.Validate(JobJL."No.", "No.");
                        WorkTypeCode("No.");
                        JobJL.Description := Description;
                        JobJL.Validate(JobJL.Quantity, Inventory);
                        JobJL.Validate(JobJL."Unit Cost", 0);  //Sept 30,2002 Unit Cost is Zero
                        JobJL."Reconciliation Catch Quantity" := Inventory;
                        JobJL."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                        JobJL."Location Code" := Job.Vessel;
                        JobJL."External Document No." := Job."Voyage No.";
                        JobJL."Shortcut Dimension 2 Code" := Job."Global Dimension 2 Code";
                        JobJL."Shortcut Dimension 1 Code" := Job."Global Dimension 1 Code";
                        //  JobJL."Variant Code":=Job."Global Dimension 2 Code";
                        // JobJL."Phase Code":=  Job.Vessel;
                        //  JobJL."Task Code":="Product Group Code";
                        //  JobJL."Step Code":='0';
                        JobJL."Work Type Code" := "Item Category Code";
                        JobJL."Source Code" := Job.Vessel;
                        if not JobJL.Insert then JobJL.Modify;

                        //Take Catches to Store
                        JobJL2.Init;
                        JobJL2 := JobJL;
                        JobJL2."Line No." := JobJL2."Line No." - 5000;

                        LocCd := 'ASL';
                        JobJL2."Location Code" := 'CRM-' + LocCd;
                        JobJL2."Reconciliation Catch Quantity" := JobJL2.Quantity * -1;
                        JobJL2.Validate(JobJL2.Quantity, 0);
                        JobJL2."Shortcut Dimension 2 Code" := 'ATLANTIC';
                        JobJL2."Variant Code" := '';
                        if not JobJL2.Insert then JobJL2.Modify;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("S/No.", "Gen. Prod. Posting Group");
                    //SETRANGE("Global Dimension 2 Filter",Job."Global Dimension 2 Code");  //To be used when more that one buss unit is reintroduced
                    SetRange("Location Filter", Job.Vessel);
                    SetRange("Date Filter", 0D, Job."Ending Date");
                    SetRange("Gen. Prod. Posting Group", 'FIS');

                    JobJB.Init;
                    JobJB."Journal Template Name" := 'JOB';
                    JobJB.Name := Job."No." + 'MRKT';
                    JobJB."Voyage No." := Job."Voyage No.";
                    JobJB."Job No." := Job.Vessel;
                    if Loc.Get(Job.Vessel) then JobJB."Vessel Name" := Loc.Name else JobJB."Vessel Name" := Job.Vessel;
                    JobJB."No. Series" := '';
                    JobJB."Batch Type" := 2;
                    if not JobJB.Insert then JobJB.Modify;
                end;
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Allocation %", "Resource Group") ORDER(Descending) WHERE(Type = CONST(Resource));
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
                column(Job_Budget_Line_Type; Type)
                {
                }
                column(Job_Budget_Line_Variant_Code; "Variant Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if Selection = 2 then begin
                        if RES.Get("No.") then begin
                            RES.Posted := false;
                            RES.Modify;
                            "Ended Voyage" := true;
                            Validate("Ending Date", Job."Ending Date");
                            Modify;
                        end;
                        if JobJB.Get('RECURRING', Job.Vessel) then JobJB.Delete;
                    end
                    else
                        CurrReport.Break;
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
                //"Voyage Ended":=TRUE;
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

    trigger OnPreReport()
    begin
        Selection := StrMenu(Text000, 2);
    end;

    var
        JobJB: Record "Job Journal Batch";
        JobJL: Record "Job Journal Line";
        JobJL2: Record "Job Journal Line";
        JobJLX: Record "Job Journal Line";
        JobSetup: Record "Jobs Setup";
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        items: Record Item;
        InvPostGrp: Record "Inventory Posting Group";
        RES: Record Resource;
        Ended: Boolean;
        Icount: array[2] of Integer;
        LocCd: Code[10];
        I: Code[10];
        JNo: Code[10];
        InctvCat: Code[20];
        Loc: Record Location;
        Selection: Integer;
        Text000: Label 'Break Voyage, End Voyage';
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Calculated_Inventory_on_BoardCaptionLbl: Label 'Calculated Inventory on Board';
        Resource_on_BoardCaptionLbl: Label 'Resource on Board';

    [Scope('OnPrem')]
    procedure WorkTypeCode(var Nos: Code[10])
    begin
        if items.Get(Nos) then
            if InvPostGrp.Get(items."Inventory Posting Group") then
                JobJL."Work Type Code Sort" := InvPostGrp.Category;
    end;
}

