report 50048 "Voyage Consumptn Summa"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyageConsumptnSumma.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.";
            column(Job_No_; "No.")
            {
            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemTableView = SORTING("Entry Type", "Item No.", "Posting Date", "Location Code") WHERE("Item No." = FILTER('A' .. 'Z'), "Remaining Quantity" = FILTER(<> 0));
                RequestFilterFields = "Entry Type", "Item No.";
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
                column(Item_Ledger_Entry__Entry_Type_; "Entry Type")
                {
                }
                column(Item_Ledger_Entry__Item_No__; "Item No.")
                {
                }
                column(Item_Ledger_Entry__Item_No___Control14; "Item No.")
                {
                }
                column(Item_Ledger_Entry_Description; Description)
                {
                }
                column(Item_Ledger_Entry__Remaining_Quantity_; "Remaining Quantity")
                {
                }
                column(Cost_Amount__Actual___Quantity; "Cost Amount (Actual)" / Quantity)
                {
                }
                column(Item_Ledger_Entry_Quantity; Quantity)
                {
                }
                column(Item_Ledger_Entry__Remaining_Quantity__Control29; "Remaining Quantity")
                {
                }
                column(Item_Ledger_Entry__Cost_Amount__Actual__; "Cost Amount (Actual)")
                {
                }
                column(Item_Ledger_Entry_Quantity_Control31; Quantity)
                {
                }
                column(Item_Ledger_Entry_Description_Control1000000000; Description)
                {
                }
                column(Item_Ledger_Entry__Item_No___Control1000000001; "Item No.")
                {
                }
                column(Remaining_Quantity___Cost_Amount__Actual____Quantity; ("Remaining Quantity" * "Cost Amount (Actual)") / Quantity)
                {
                }
                column(Cost_Amount__Actual___Quantity_Control1000000003; "Cost Amount (Actual)" / Quantity)
                {
                }
                column(Amount; Amount)
                {
                }
                column(UnitC; UnitC)
                {
                }
                column(TotalFor___FIELDCAPTION__Entry_Type__; TotalFor + FieldCaption("Entry Type"))
                {
                }
                column(Item_Ledger_Entry__Remaining_Quantity__Control33; "Remaining Quantity")
                {
                }
                column(Item_Ledger_Entry__Cost_Amount__Actual___Control34; "Cost Amount (Actual)")
                {
                }
                column(Item_Ledger_Entry_Quantity_Control35; Quantity)
                {
                }
                column(Amount_Control1000000006; Amount)
                {
                }
                column(Remaining_Quantity___Cost_Amount__Actual____Quantity_Control1000000007; ("Remaining Quantity" * "Cost Amount (Actual)") / Quantity)
                {
                }
                column(Cost_Amount__Actual___Quantity_Control1000000008; "Cost Amount (Actual)" / Quantity)
                {
                }
                column(Item_Ledger_Entry_Quantity_Control1000000009; Quantity)
                {
                }
                column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000010; "Cost Amount (Actual)")
                {
                }
                column(UnitC_Control1000000011; UnitC)
                {
                }
                column(Item_Ledger_Entry__Remaining_Quantity__Control1000000012; "Remaining Quantity")
                {
                }
                column(Item_Ledger_EntryCaption; Item_Ledger_EntryCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(Item_Ledger_Entry__Item_No___Control14Caption; FieldCaption("Item No."))
                {
                }
                column(Item_Ledger_Entry_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Item_Ledger_Entry__Remaining_Quantity_Caption; FieldCaption("Remaining Quantity"))
                {
                }
                column(Unit_CostCaption; Unit_CostCaptionLbl)
                {
                }
                column(Item_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
                {
                }
                column(Item_Ledger_Entry__Entry_Type_Caption; FieldCaption("Entry Type"))
                {
                }
                column(Item_Ledger_Entry__Item_No__Caption; FieldCaption("Item No."))
                {
                }
                column(Item_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    UnitC := "Cost Amount (Actual)" / Quantity;
                    Amount := ("Remaining Quantity" * "Cost Amount (Actual)") / Quantity;
                    CurrReport.CreateTotals(UnitC, Amount);

                    Icount[2] := Icount[2] + 10;
                    JobJl.Init;
                    JobJl."Journal Template Name" := 'JOB';
                    JobJl."Journal Batch Name" := Job."No." + 'CONS';
                    JobJl."Line No." := Icount[2];
                    JobJl."Posting Date" := Today;
                    JobJl."Document Date" := Today;
                    JobJLX.Init;

                    //JobJL.SetUpNewLine(JobJL);
                    JobJl."Document No." := Job."No.";
                    JobJl."Job No." := Job."No.";
                    JobJl.Type := 1;
                    JobJl.Validate(JobJl."No.");
                    JobJl.Description := Description;
                    JobJl.Validate(JobJl.Quantity, "Remaining Quantity");
                    //  JobJL.VALIDATE(JobJL."Unit Cost",("Adjusted Cost"/Quantity));
                    JobJl."Location Code" := Job.Vessel;
                    JobJl."External Document No." := Job."Voyage No.";
                    if not JobJl.Insert then JobJl.Modify;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Item No.");
                    SetCurrentKey("Item No.", "Location Code", "Posting Date", "Remaining Quantity");
                    SetRange("Posting Date", 0D, Job."Ending Date");
                    SetRange("Location Code", Job.Vessel);

                    JobJB.Init;
                    JobJB."Journal Template Name" := 'JOB';
                    JobJB.Name := Job."No." + 'CONS';
                    JobJB."Voyage No." := Job."Voyage No.";
                    JobJB."Job No." := Job.Vessel;
                    JobJB."No. Series" := '';
                    if not JobJB.Insert then JobJB.Modify;
                end;
            }

            trigger OnPreDataItem()
            begin
                Icount[2] := 10000;
                JNo := GetFilter("No.");
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        Itemis: Record Item;
        UnitC: Decimal;
        Amount: Decimal;
        JobJB: Record "Job Journal Batch";
        JobJl: Record "Job Journal Line";
        Icount: array[2] of Integer;
        JNo: Code[10];
        JobJLX: Record "Job Journal Line";
        Item_Ledger_EntryCaptionLbl: Label 'Item Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Unit_CostCaptionLbl: Label 'Unit Cost';
}

