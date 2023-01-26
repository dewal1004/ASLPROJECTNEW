report 50113 "Voyage Ending Inv Cons exp3!"
{
    // ItemUOV== Items Used On Vessel
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyageEndingInvConsexp3.50113.rdlc';


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
            column(Voyage_ConsumptionCaption; Voyage_ConsumptionCaptionLbl)
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
            column(ItemUOV_InventoryCaption; ItemUOV.FieldCaption(Inventory))
            {
            }
            column(Job_Bill_to_Customer_No_; "Bill-to Customer No.")
            {
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
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = SORTING("Location Code", "Source Code", "Item No.") ORDER(Ascending);
            column(Item_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
            column(Item_Ledger_Entry_Item_No_; "Item No.")
            {
            }
            dataitem(ItemUOV; Item)
            {
                DataItemLink = "No." = FIELD("Item No.");
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
                column(ItemUOV_Inventory; Inventory)
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
                    /*
                    count_current:=count_current+1;
                    d.OPEN('Processing item #1#########-processing #2###');
                    d.UPDATE(1,ItemUOV."No." );
                    d.UPDATE(2,count_current);
                    
                    CALCFIELDS(Inventory);
                    IF Inventory<>0 THEN
                    BEGIN
                      Icount[2]:=Icount[2]+10;
                      JobJL.INIT;
                      JobJL."Journal Template Name":='JOB';
                      JobJL."Journal Batch Name":=Job."No."+'CONS';
                      JobJL."Line No.":=Icount[2];
                      JobJL."Posting Date":=WORKDATE;
                      JobJL."Document Date":=WORKDATE;
                      JobJLX.INIT;
                    
                    //JobJL.SetUpNewLine(JobJL);
                      JobJL."Document No.":=Job."No.";
                      JobJL."Job No.":=Job."No.";
                      JobJL.Type:=1;
                      JobJL.VALIDATE(JobJL."No.","No.");
                      JobJL.VALIDATE(JobJL."Profit %");
                      JobJL.Description:=Description;
                      JobJL.VALIDATE(JobJL.Quantity,Inventory);
                      JobJL."Location Code":=Job.Vessel;
                      JobJL."External Document No.":=Job.Vessel;
                      JobJL."Reason Code":='USAGEVES';
                      JobJL."Shortcut Dimension 2 Code":=Job."Global Dimension 2 Code";
                      JobJL."Shortcut Dimension 1 Code":=Job."Global Dimension 1 Code";
                      JobJL."Gen. Prod. Posting Group":="Gen. Prod. Posting Group";
                      JobJL."Gen. Bus. Posting Group":='CONSPJ';
                      IF NOT JobJL.INSERT THEN JobJL.MODIFY;
                    END;
                    
                    */

                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("S/No.", "Gen. Prod. Posting Group");
                    SetRange("Date Filter", 0D, CalcDate('-1D', Job."Ending Date"));
                    //MESSAGE('Date Used is %1',CALCDATE('-1D',Job."Ending Date"));
                    //SETRANGE("Global Dimension 2 Filter",Job."Global Dimension 2 Code");

                    SetFilter("Gen. Prod. Posting Group", '<>%1', 'FIS');
                    SetRange("Location Filter", Job.Vessel);

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
                if old_record = "Item Ledger Entry"."Item No." then CurrReport.Skip;
                old_record := "Item Ledger Entry"."Item No.";
            end;

            trigger OnPreDataItem()
            begin
                "Item Ledger Entry".SetRange("Item Ledger Entry"."Location Code", Job.Vessel);
                "Item Ledger Entry".SetRange("Item Ledger Entry"."Source Code", 'TRANSFER');
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
        old_record: Code[20];
        d: Dialog;
        JobJB: Record "Job Journal Batch";
        JobJL: Record "Job Journal Line";
        JobJL2: Record "Job Journal Line";
        JobJLX: Record "Job Journal Line";
        Loc: Record Location;
        Icount: array[2] of Integer;
        LocCd: Code[10];
        I: Code[10];
        RES: Record Resource;
        JNo: Code[250];
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
}

