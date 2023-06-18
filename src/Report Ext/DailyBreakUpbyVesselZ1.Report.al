report 99042 "Daily BreakUp by VesselZ1"
{
    // //
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/DailyBreakUpbyVesselZ1.rdlc';
    Caption = 'Daily BreakUp by VesselZ1';
    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(LocGroup; LocGroup)
            {
            }
            column(SeaRange_18_; SeaRange[18])
            {
            }
            column(SeaRange_17_; SeaRange[17])
            {
            }
            column(SeaRange_16_; SeaRange[16])
            {
            }
            column(SeaRange_15_; SeaRange[15])
            {
            }
            column(SeaRange_14_; SeaRange[14])
            {
            }
            column(SeaRange_13_; SeaRange[13])
            {
            }
            column(SeaRange_12_; SeaRange[12])
            {
            }
            column(SeaRange_11_; SeaRange[11])
            {
            }
            column(SeaRange_10_; SeaRange[10])
            {
            }
            column(SeaRange_9_; SeaRange[9])
            {
            }
            column(SeaRange_8_; SeaRange[8])
            {
            }
            column(SeaRange_7_; SeaRange[7])
            {
            }
            column(SeaRange_6_; SeaRange[6])
            {
            }
            column(SeaRange_5_; SeaRange[5])
            {
            }
            column(SeaRange_4_; SeaRange[4])
            {
            }
            column(SeaRange_3_; SeaRange[3])
            {
            }
            column(SeaRange_2_; SeaRange[2])
            {
            }
            column(SeaRange_1_; SeaRange[1])
            {
                //*** DecimalPlaces = 0 : 0;
            }
            column(SeaRange_23_; SeaRange[23])
            {
            }
            column(SeaRange_22_; SeaRange[22])
            {
            }
            column(SeaRange_21_; SeaRange[21])
            {
            }
            column(SeaRange_20_; SeaRange[20])
            {
            }
            column(SeaRange_19_; SeaRange[19])
            {
            }
            column(SeaRange_18__Control1000000061; SeaRange[18])
            {
            }
            column(SeaRange_17__Control1000000062; SeaRange[17])
            {
            }
            column(SeaRange_16__Control1000000063; SeaRange[16])
            {
            }
            column(SeaRange_15__Control1000000064; SeaRange[15])
            {
            }
            column(SeaRange_14__Control1000000065; SeaRange[14])
            {
            }
            column(SeaRange_13__Control1000000066; SeaRange[13])
            {
            }
            column(SeaRange_12__Control1000000067; SeaRange[12])
            {
            }
            column(SeaRange_11__Control1000000068; SeaRange[11])
            {
            }
            column(SeaRange_10__Control1000000069; SeaRange[10])
            {
            }
            column(SeaRange_9__Control1000000070; SeaRange[9])
            {
            }
            column(SeaRange_8__Control1000000071; SeaRange[8])
            {
            }
            column(SeaRange_7__Control1000000072; SeaRange[7])
            {
            }
            column(SeaRange_6__Control1000000073; SeaRange[6])
            {
            }
            column(SeaRange_5__Control1000000074; SeaRange[5])
            {
            }
            column(SeaRange_4__Control1000000075; SeaRange[4])
            {
            }
            column(SeaRange_3__Control1000000076; SeaRange[3])
            {
            }
            column(SeaRange_2__Control1000000077; SeaRange[2])
            {
            }
            column(SeaRange_1__Control1000000080; SeaRange[1])
            {
                //*** DecimalPlaces = 0 : 0;
            }
            column(FORMAT_TODAY_0_4__Control1000000099; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO_Control1000000101; CurrReport.PageNo())
            {
            }
            column(LocGroup_Control1000000102; LocGroup)
            {
            }
            column(Inventory_Posting_Group__Statistics_Group_; "Statistics Group")
            {
            }
            column(Inventory_Posting_Group_Category; Category)
            {
            }
            column(T001; T001)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(SeaRangeC_6_; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5_; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4_; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3_; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2_; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1_; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7_; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8_; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9_; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10_; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11_; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12_; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13_; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14_; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15_; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16_; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17_; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18_; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_23_; SeaRangeC[23])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_22_; SeaRangeC[22])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_21_; SeaRangeC[21])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_20_; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19_; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18__Control1000000081; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17__Control1000000082; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16__Control1000000083; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15__Control1000000084; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14__Control1000000085; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13__Control1000000086; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12__Control1000000087; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11__Control1000000088; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10__Control1000000089; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9__Control1000000090; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8__Control1000000091; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7__Control1000000092; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_6__Control1000000093; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5__Control1000000094; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4__Control1000000095; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3__Control1000000096; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2__Control1000000097; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1__Control1000000098; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_Group_Inventory_Control1000000023; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control17; Inventory)
            {
            }
            column(Inventory_Posting_GroupCaption; Inventory_Posting_GroupCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(SheetCaption; SheetCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(CurrReport_PAGENO_Control1000000101Caption; CurrReport_PAGENO_Control1000000101CaptionLbl)
            {
            }
            column(SheetCaption_Control1000000103; SheetCaption_Control1000000103Lbl)
            {
            }
            column(Inventory_Posting_Group__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_CategoryCaption; FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
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
        TotalFor: Label 'Total for ';
        SeaRange: array[100] of Text[30];
        SeaRangeC: array[100] of Decimal;
        T001: Text[50];
        LocGroup: Integer;
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        SheetCaptionLbl: Label 'Sheet';
        CurrReport_PAGENO_Control1000000101CaptionLbl: Label 'Page';
        SheetCaption_Control1000000103Lbl: Label 'Sheet';
}
