report 50169 "Consumptions Vessel Wise VJ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ConsumptionsVesselWiseVJ.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Location Code", "Item No.", "Item Ledger Entry Type") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'));
            RequestFilterFields = "Location Code", "Item No.", "Item Ledger Entry Type";
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
            column(Value_Entry__GETFILTERS; "Value Entry".GetFilters)
            {
            }
            column(Value_Entry__Location_Code_; "Location Code")
            {
            }
            column(Value_Entry__Item_Ledger_Entry_Type_; "Item Ledger Entry Type")
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_Entry_Description; Description)
            {
            }
            column(Value_Entry__Cost_Amount__Actual___ACY__; "Cost Amount (Actual) (ACY)")
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L__ACY__; "Cost Posted to G/L (ACY)")
            {
            }
            column(TotalFor___FIELDCAPTION__Item_Ledger_Entry_Type__; TotalFor + FieldCaption("Item Ledger Entry Type"))
            {
            }
            column(Value_Entry__Cost_Amount__Actual___ACY___Control1000000037; "Cost Amount (Actual) (ACY)")
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L__ACY___Control1000000038; "Cost Posted to G/L (ACY)")
            {
            }
            column(VQtyCost_3_; VQtyCost[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(VQtyCost2_3_; VQtyCost2[3])
            {
            }
            column(Value_Entry__Item_No___Control1000000011; "Item No.")
            {
            }
            column(ITEM_REC_Description; ITEM_REC.Description)
            {
            }
            column(Vessel_Consumption_ReportCaption; Vessel_Consumption_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Value_Entry_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Value_Entry__Cost_Amount__Actual___ACY__Caption; Value_Entry__Cost_Amount__Actual___ACY__CaptionLbl)
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L__ACY__Caption; Value_Entry__Cost_Posted_to_G_L__ACY__CaptionLbl)
            {
            }
            column(Value_Entry__Location_Code_Caption; FieldCaption("Location Code"))
            {
            }
            column(Value_Entry__Item_No___Control1000000011Caption; FieldCaption("Item No."))
            {
            }
            column(Value_Entry__Item_Ledger_Entry_Type_Caption; FieldCaption("Item Ledger Entry Type"))
            {
            }
            column(Value_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Item Ledger Entry Type");
                //CurrReport.CREATETOTALS(VQtyCost[3],VQtyCost2[3],VQtyCost[4],VQtyCost2[4]);


                if (CurrReport.TotalsCausedBy = "Value Entry".FieldNo("Item Ledger Entry Type"))
                and ("Item Ledger Entry Type" <> 0)
                then begin
                    VQtyCost["Item Ledger Entry Type"] := Abs("Value Entry"."Valued Quantity");
                    VQtyCost2["Item Ledger Entry Type"] := Abs("Value Entry"."Cost Amount (Actual)");
                end;
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
        VQtyCost: array[5] of Decimal;
        VQtyCost2: array[5] of Decimal;
        ITEM_REC: Record Item;
        Vessel_Consumption_ReportCaptionLbl: Label 'Vessel Consumption Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Value_Entry__Cost_Amount__Actual___ACY__CaptionLbl: Label 'Consumed Qty.';
        Value_Entry__Cost_Posted_to_G_L__ACY__CaptionLbl: Label 'Consumed Cost';
}

