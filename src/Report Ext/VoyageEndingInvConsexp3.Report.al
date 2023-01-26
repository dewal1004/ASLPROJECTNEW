report 50047 "Voyage Ending Inv Cons exp3"
{
    // ItemUOV== Items Used On Vessel
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyageEndingInvConsexp3.rdlc';


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
            column(v; "Ending Date")
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
            column(Voyage_ConsumptionCaption; Voyage_ConsumptionCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job__Starting_Date_Captions; FieldCaption("Starting Date"))
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
            column(ItemUOV_InventoryCaption; ItemUOV.FieldCaption(Inventory))
            {
            }
            column(Job_Bill_to_Customer_No_; "Bill-to Customer No.")
            {
            }
            dataitem(ItemUOV; Item)
            {
                DataItemTableView = SORTING("No.");
                RequestFilterFields = "No.";
                column(ItemUOV__Inventory_Total_; "Inventory Total")
                {
                }
                column(ItemUOV__Inventory_Total2_; "Inventory Total2")
                {
                }
                column(ItemUOV__CRM___STR_; "CRM / STR")
                {
                }
                column(ItemUOV_Description; Description)
                {
                }
                column(ItemUOV__No__; "No.")
                {
                }
                column(ItemUOV_Inventory; ItemUOV.Inventory)
                {
                }
                column(ConsumptionCaption; ConsumptionCaptionLbl)
                {
                }
                column(ItemUOV__Inventory_Total_Caption; FieldCaption("Inventory Total"))
                {
                }
                column(ItemUOV__Inventory_Total2_Caption; FieldCaption("Inventory Total2"))
                {
                }
                column(ItemUOV__CRM___STR_Caption; FieldCaption("CRM / STR"))
                {
                }

                trigger OnAfterGetRecord()
                begin


                    count_current := count_current + 1;
                    /*d.OPEN('Processing item #1######### - #2### of #3### - #4### pct.');
                    d.UPDATE(1,ItemUOV."No." );
                    d.UPDATE(2,count_current);
                    d.UPDATE(3,count_record);
                    d.UPDATE(4,ROUND(count_current*100/count_record,0.01));*/



                    //SETFILTER("Location Filter",Job.Vessel);
                    CalcFields(Inventory);
                    if Inventory <> 0 then begin
                        Icount[2] := Icount[2] + 10;
                        JobJL.Init;
                        JobJL."Journal Template Name" := 'JOB';
                        JobJL."Journal Batch Name" := Job."No." + 'CONS';
                        JobJL."Line No." := Icount[2];
                        JobJL."Posting Date" := Today;
                        JobJL."Document Date" := Today;
                        JobJLX.Init;

                        //JobJL.SetUpNewLine(JobJL);
                        JobJL."Document No." := Job."No.";
                        JobJL."Job No." := Job."No.";
                        JobJL.Type := 1;
                        // JobJL."No." := "No.";
                        JobJL.Validate(JobJL."No.", "No.");
                        //  JobJL.VALIDATE(JobJL."Profit %"); ///AAA
                        JobJL.Description := Description;
                        JobJL.Validate(JobJL.Quantity, Inventory);
                        JobJL."Location Code" := Job.Vessel;
                        JobJL."External Document No." := Job.Vessel;
                        JobJL."Reason Code" := 'USAGEVES';
                        JobJL."Shortcut Dimension 2 Code" := Job."Global Dimension 2 Code";
                        JobJL."Shortcut Dimension 1 Code" := Job."Global Dimension 1 Code";
                        //JobJL."Variant Code":=Job."Global Dimension 2 Code";
                        JobJL."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                        JobJL."Gen. Bus. Posting Group" := 'CONSPJ';
                        JobJL."Phase Code" := Job.Vessel;// &  u
                        JobJL."Task Code" := ItemUOV."Item Category Code";// &
                        JobJL."Posting Date" := Job."Ending Date";
                        JobTask.SetRange("Job No.", JobJL."Job No.");
                        if JobTask.FindFirst then
                            Jobtask_No := JobTask."Job Task No.";
                        JobJL.Validate("Job Task No.", Jobtask_No);
                        if not JobJL.Insert then JobJL.Modify;
                    end;

                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("S/No.", "Gen. Prod. Posting Group");
                    SetRange("Date Filter", 0D, Job."Ending Date");
                    //SETRANGE("Global Dimension 2 Filter",Job."Global Dimension 2 Code");

                    SetFilter("Gen. Prod. Posting Group", '<>%1', 'FIS');
                    SetRange("Location Filter", Job.Vessel);
                    // SETRANGE("Inventory Entry Type Filter",4);

                    count_record := ItemUOV.Count;

                    JobJB.Init;
                    JobJB."Journal Template Name" := 'JOB';
                    JobJB.Name := Job."No." + 'CONS';
                    JobJB."Voyage No." := Job."Voyage No.";
                    JobJB."Job No." := Job.Vessel;
                    if Loc.Get(Job.Vessel) then JobJB."Vessel Name" := Loc.Name;
                    JobJB."No. Series" := '';
                    JobJB."Batch Type" := 3;
                    if not JobJB.Insert then JobJB.Modify;
                end;
            }

            trigger OnAfterGetRecord()
            begin

                Job.TestField(Job.Status, 2);
                Message('Sea Days is %1 ', Job."Sea Days");
                if not Confirm('has the ending date been Updated', false) then CurrReport.Quit;


                /*IF Item.GET("No.") THEN
                 Inventory := Item.Inventory;*/

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
        d: Dialog;
        JobJB: Record "Job Journal Batch";
        JobJL: Record "Job Journal Line";
        JobJL2: Record "Job Journal Line";
        JobJLX: Record "Job Journal Line";
        Loc: Record Location;
        Icount: array[2] of Integer;
        LocCd: Code[20];
        I: Code[20];
        RES: Record Resource;
        JNo: Code[20];
        JobSetup: Record "Jobs Setup";
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        InctvCat: Code[20];
        Ended: Boolean;
        count_record: Decimal;
        count_current: Decimal;
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Voyage_ConsumptionCaptionLbl: Label 'Voyage Consumption';
        ConsumptionCaptionLbl: Label 'Consumption';
        Inventory: Decimal;
        Item: Record Item;
        JobTask: Record "Job Task";
        Jobtask_No: Code[20];
}

