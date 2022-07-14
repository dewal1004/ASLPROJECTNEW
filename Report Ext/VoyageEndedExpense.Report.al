report 50046 "Voyage Ended Expense"
{
    // Item.Inventory
    // ItemUOV== Items Used On Vessel
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyageEndedExpense.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;


    dataset
    {
        dataitem(Job; Job)
        {
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
            dataitem(ItemUOV; Item)
            {
                DataItemTableView = SORTING("No.");
                RequestFilterFields = "No.";
                column(ItemUOV_Inventory; Inventory)
                {
                }
                column(ItemUOV_Description; Description)
                {
                }
                column(ItemUOV__No__; "No.")
                {
                }
                column(Ivt; Ivt)
                {
                }
                column(ConsumptionCaption; ConsumptionCaptionLbl)
                {
                }

                trigger OnPreDataItem()
                begin
                    //CurrReport.NEWPAGE;
                    ItemUOV.SetRange(ItemUOV."Date Filter", 0D, Job."Ending Date");
                    ItemUOV.SetRange(ItemUOV."Global Dimension 2 Filter", Job."Global Dimension 2 Code");
                    ItemUOV.SetRange(ItemUOV."Location Filter", Job.Vessel);
                    ItemUOV.SetFilter(ItemUOV."Gen. Prod. Posting Group", '<>%1', 'FIS');
                    ItemUOV.SetRange(ItemUOV."Inventory Entry Type Filter", 3);
                end;
            }
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
        Ivt: Integer;
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ConsumptionCaptionLbl: Label 'Consumption';
}

