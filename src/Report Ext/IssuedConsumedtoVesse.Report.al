report 50171 "Issued Consumed to Vesse"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/IssuedConsumedtoVesse.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

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
            column(Value_Entry__Valued_Quantity_; "Valued Quantity")
            {
            }
            column(Value_Entry__Cost_Amount__Actual__; "Cost Amount (Actual)")
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
            column(Value_Entry__Valued_Quantity__Control1000000035; "Valued Quantity")
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000036; "Cost Amount (Actual)")
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
            column(VQtyCost_4_; VQtyCost[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(VQtyCost2_4_; VQtyCost2[4])
            {
            }
            column(Value_Entry__Item_No___Control1000000011; "Item No.")
            {
            }
            column(Value_Entry__Valued_Quantity__Control1000000000; "Valued Quantity")
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000007; "Cost Amount (Actual)")
            {
            }
            column(ITEM_REC_Description; ITEM_REC.Description)
            {
            }
            column(TotalFor___FIELDCAPTION__Location_Code__; TotalFor + FieldCaption("Location Code"))
            {
            }
            column(Value_Entry__Valued_Quantity__Control1000000045; "Valued Quantity")
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000046; "Cost Amount (Actual)")
            {
            }
            column(VQtyCost_4__Control1000000016; VQtyCost[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(VQtyCost2_4__Control1000000019; VQtyCost2[4])
            {
            }
            column(VQtyCost_3__Control1000000022; VQtyCost[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(VQtyCost2_3__Control1000000025; VQtyCost2[3])
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
            column(Value_Entry__Valued_Quantity_Caption; Value_Entry__Valued_Quantity_CaptionLbl)
            {
            }
            column(Value_Entry__Cost_Amount__Actual__Caption; Value_Entry__Cost_Amount__Actual__CaptionLbl)
            {
            }
            column(Value_Entry__Cost_Amount__Actual___ACY__Caption; Value_Entry__Cost_Amount__Actual___ACY__CaptionLbl)
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L__ACY__Caption; Value_Entry__Cost_Posted_to_G_L__ACY__CaptionLbl)
            {
            }
            column(Var__Cost_Caption; Var__Cost_CaptionLbl)
            {
            }
            column(Var__Qty_Caption; Var__Qty_CaptionLbl)
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
        Value_Entry__Valued_Quantity_CaptionLbl: Label 'Issued Quantity';
        Value_Entry__Cost_Amount__Actual__CaptionLbl: Label 'Issued Cost   ';
        Value_Entry__Cost_Amount__Actual___ACY__CaptionLbl: Label 'Consumed Qty.';
        Value_Entry__Cost_Posted_to_G_L__ACY__CaptionLbl: Label 'Consumed Cost';
        Var__Cost_CaptionLbl: Label 'Var. Cost.';
        Var__Qty_CaptionLbl: Label 'Var. Qty.';
}

