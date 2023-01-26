report 50013 "Job - Transaction Detail 2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/JobTransactionDetail2.rdlc';
    Caption = 'Job - Transaction Detail';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Job_TABLECAPTION__________JobFilter; JobFilter)
            {
            }
            column(Value_Entry__TABLECAPTION__________JobLedgEntryFilter; "Value Entry".TableCaption + ': ' + JobLedgEntryFilter)
            {
            }
            column(GTot; GTot)
            {
            }
            column(T_3_; T[3])
            {
            }
            column(Job__No__; Job."No.")
            {
            }
            column(Job_Description; Job.Description)
            {
            }
            column(Job___Transaction_DetailCaption; Job___Transaction_DetailCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Item_No__Caption; "Value Entry".FieldCaption("Item No."))
            {
            }
            column(Valued_Quantity_Caption; Valued_Quantity_CaptionLbl)
            {
            }
            column(Value_Entry__Document_No__Caption; "Value Entry".FieldCaption("Document No."))
            {
            }
            column(Value_Entry__Posting_Date_Caption; "Value Entry".FieldCaption("Posting Date"))
            {
            }
            column(ItemNameCaption; ItemNameCaptionLbl)
            {
            }
            column(Cost_Posted_to_G_L_Caption; Cost_Posted_to_G_L_CaptionLbl)
            {
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Source No.", "Gen. Prod. Posting Group");
                RequestFilterFields = "Posting Date", "Gen. Prod. Posting Group", "Item Ledger Entry Type";
                column(Value_Entry__Value_Entry___Gen__Prod__Posting_Group_; "Value Entry"."Gen. Prod. Posting Group")
                {
                }
                column(Value_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Value_Entry__Document_No__; "Document No.")
                {
                }
                column(Value_Entry__Item_No__; "Item No.")
                {
                }
                column(Valued_Quantity_; -"Valued Quantity")
                {
                }
                column(ItemName; ItemName)
                {
                }
                column(LocationCode_ValueEntry; "Value Entry"."Location Code")
                {
                }
                column(ItemLedgerEntryQuantity_ValueEntry; "Value Entry"."Item Ledger Entry Quantity")
                {
                }
                column(Cost_Posted_to_G_L_; -"Cost Posted to G/L")
                {
                }
                column(Cost_Posted_to_G_L__Control1000000011; -"Cost Posted to G/L")
                {
                }
                column(GrpTot________Value_Entry___Gen__Prod__Posting_Group_; GrpTot + '   ' + "Value Entry"."Gen. Prod. Posting Group")
                {
                }
                column(Cost_Posted_to_G_L__Control1000000001; "Cost Posted to G/L")
                {
                }
                column(OTot; OTot)
                {
                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Value_Entry_Source_No_; "Source No.")
                {
                }

                trigger OnPreDataItem()
                begin
                    T[1] := -"Cost Posted to G/L";
                end;
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING(Type, "Country/Region Code", "Source Code", "Posting Date") WHERE("Source Code" = CONST('PURCHASES'));
                column(Job_Ledger_Entry__Amt__Posted_to_G_L_; "Amt. Posted to G/L")
                {
                }
                column(Job_Ledger_Entry_Description; Description)
                {
                }
                column(Job_Ledger_Entry__Total_Cost_; "Total Cost")
                {
                }
                column(Job_Ledger_Entry__Unit_of_Measure_Code_; "Unit of Measure Code")
                {
                }
                column(Job_Ledger_Entry_Quantity; Quantity)
                {
                }
                column(Job_Ledger_Entry__No__; "No.")
                {
                }
                column(Job_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Job_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Job_Ledger_Entry__Total_Cost__Control1000000024; "Total Cost")
                {
                }
                column(Purchases_to_JobCaption; Purchases_to_JobCaptionLbl)
                {
                }
                column(Job_Ledger_Entry_Job_No_; "Job No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /*"Job Ledger Entry".SETFILTER
                        ("Job Ledger Entry"."Gen. Prod. Posting Group",
                        "Value Entry".GETFILTER("Value Entry"."Gen. Prod. Posting Group"));*/

                    T[2] := "Total Cost";
                    T[3] := T[1] + T[2];

                end;

                trigger OnPreDataItem()
                begin
                    "Job Ledger Entry".SetFilter
                       ("Job Ledger Entry"."Gen. Prod. Posting Group",
                       "Value Entry".GetFilter("Value Entry"."Gen. Prod. Posting Group"));
                end;
            }

            trigger OnPreDataItem()
            begin
                T[3] := T[1] + T[2];
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
            }
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
        JobFilter := Job.GetFilters;
        //JobLedgEntryFilter := "Value Entry".GETFILTERS;
    end;

    var
        TotalCostTotal: array[2] of Decimal;
        TotalPriceTotal: array[2] of Decimal;
        TotalAmtPostedToGL: array[2] of Decimal;
        TotalAmtRecognized: array[2] of Decimal;
        i: Integer;
        JobFilter: Text;
        JobLedgEntryFilter: Text[250];
        Gen_Pro_pst_group_rec: Record "Gen. Product Posting Group";
        GrpTot: Label 'Group Total for  ';
        OTot: Label 'Overall Total';
        GTot: Label 'Grand Total';
        T: array[3] of Decimal;
        Job___Transaction_DetailCaptionLbl: Label 'Job - Transaction Detail';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Valued_Quantity_CaptionLbl: Label 'Valued Quantity';
        ItemNameCaptionLbl: Label 'Desciption';
        Cost_Posted_to_G_L_CaptionLbl: Label 'Amount Posted to G/L';
        Purchases_to_JobCaptionLbl: Label 'Purchases to Job';
}

