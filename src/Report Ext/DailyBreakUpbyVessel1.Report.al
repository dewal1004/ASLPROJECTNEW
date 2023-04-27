report 50242 "Daily BreakUp by Vessel 1"
{
    // //
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/DailyBreakUpbyVessel1.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


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
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(LocGroup; LocGroup)
            {
            }
            column(SeaRange_1_; SeaRange[1])
            {

            }
            column(SeaRange_2_; SeaRange[2])
            {
            }
            column(SeaRange_3_; SeaRange[3])
            {
            }
            column(SeaRange_4_; SeaRange[4])
            {
            }
            column(SeaRange_5_; SeaRange[5])
            {
            }
            column(SeaRange_6_; SeaRange[6])
            {
            }
            column(SeaRange_7_; SeaRange[7])
            {
            }
            column(SeaRange_8_; SeaRange[8])
            {
            }
            column(SeaRange_9_; SeaRange[9])
            {
            }
            column(SeaRange_10_; SeaRange[10])
            {
            }
            column(SeaRange_11_; SeaRange[11])
            {
            }
            column(SeaRange_12_; SeaRange[12])
            {
            }
            column(SeaRange_13_; SeaRange[13])
            {
            }
            column(SeaRange_14_; SeaRange[14])
            {
            }
            column(SeaRange_15_; SeaRange[15])
            {
            }
            column(SeaRange_16_; SeaRange[16])
            {
            }
            column(SeaRange_17_; SeaRange[17])
            {
            }
            column(SeaRange_18_; SeaRange[18])
            {
            }
            column(SeaRange_20_; SeaRange[20])
            {
            }
            column(SeaRange_19_; SeaRange[19])
            {
            }
            column(SeaRange_1__Control1000000019; SeaRange[1])
            {

            }
            column(SeaRange_2__Control1000000020; SeaRange[2])
            {
            }
            column(SeaRange_3__Control1000000021; SeaRange[3])
            {
            }
            column(SeaRange_4__Control1000000022; SeaRange[4])
            {
            }
            column(SeaRange_5__Control1000000023; SeaRange[5])
            {
            }
            column(SeaRange_6__Control1000000024; SeaRange[6])
            {
            }
            column(SeaRange_7__Control1000000025; SeaRange[7])
            {
            }
            column(SeaRange_8__Control1000000026; SeaRange[8])
            {
            }
            column(SeaRange_9__Control1000000027; SeaRange[9])
            {
            }
            column(SeaRange_10__Control1000000028; SeaRange[10])
            {
            }
            column(SeaRange_11__Control1000000029; SeaRange[11])
            {
            }
            column(SeaRange_12__Control1000000030; SeaRange[12])
            {
            }
            column(SeaRange_13__Control1000000031; SeaRange[13])
            {
            }
            column(SeaRange_14__Control1000000032; SeaRange[14])
            {
            }
            column(SeaRange_15__Control1000000033; SeaRange[15])
            {
            }
            column(SeaRange_16__Control1000000034; SeaRange[16])
            {
            }
            column(SeaRange_17__Control1000000035; SeaRange[17])
            {
            }
            column(SeaRange_18__Control1000000018; SeaRange[18])
            {
            }
            column(SeaRange_19__Control1000000037; SeaRange[19])
            {
            }
            column(SeaRange_20__Control1000000038; SeaRange[20])
            {
            }
            column(SeaRange_21_; SeaRange[21])
            {
            }
            column(SeaRange_22_; SeaRange[22])
            {
            }
            column(SeaRange_20__Control1000000139; SeaRange[20])
            {
            }
            column(SeaRange_19__Control1000000141; SeaRange[19])
            {
            }
            column(SeaRange_18__Control1000000142; SeaRange[18])
            {
            }
            column(SeaRange_17__Control1000000143; SeaRange[17])
            {
            }
            column(SeaRange_16__Control1000000144; SeaRange[16])
            {
            }
            column(SeaRange_15__Control1000000145; SeaRange[15])
            {
            }
            column(SeaRange_14__Control1000000146; SeaRange[14])
            {
            }
            column(SeaRange_13__Control1000000147; SeaRange[13])
            {
            }
            column(SeaRange_12__Control1000000148; SeaRange[12])
            {
            }
            column(SeaRange_11__Control1000000149; SeaRange[11])
            {
            }
            column(SeaRange_10__Control1000000150; SeaRange[10])
            {
            }
            column(SeaRange_9__Control1000000151; SeaRange[9])
            {
            }
            column(SeaRange_8__Control1000000152; SeaRange[8])
            {
            }
            column(SeaRange_7__Control1000000153; SeaRange[7])
            {
            }
            column(SeaRange_6__Control1000000154; SeaRange[6])
            {
            }
            column(SeaRange_5__Control1000000155; SeaRange[5])
            {
            }
            column(SeaRange_4__Control1000000156; SeaRange[4])
            {
            }
            column(SeaRange_3__Control1000000157; SeaRange[3])
            {
            }
            column(SeaRange_2__Control1000000158; SeaRange[2])
            {
            }
            column(SeaRange_1__Control1000000159; SeaRange[1])
            {

            }
            column(SeaRange_22__Control1000000116; SeaRange[22])
            {
            }
            column(SeaRange_21__Control1000000118; SeaRange[21])
            {
            }
            column(SeaRange_20__Control1000000119; SeaRange[20])
            {
            }
            column(SeaRange_19__Control1000000120; SeaRange[19])
            {
            }
            column(SeaRange_18__Control1000000121; SeaRange[18])
            {
            }
            column(SeaRange_17__Control1000000122; SeaRange[17])
            {
            }
            column(SeaRange_16__Control1000000123; SeaRange[16])
            {
            }
            column(SeaRange_15__Control1000000124; SeaRange[15])
            {
            }
            column(SeaRange_14__Control1000000125; SeaRange[14])
            {
            }
            column(SeaRange_13__Control1000000126; SeaRange[13])
            {
            }
            column(SeaRange_12__Control1000000127; SeaRange[12])
            {
            }
            column(SeaRange_11__Control1000000128; SeaRange[11])
            {
            }
            column(SeaRange_10__Control1000000129; SeaRange[10])
            {
            }
            column(SeaRange_9__Control1000000130; SeaRange[9])
            {
            }
            column(SeaRange_8__Control1000000131; SeaRange[8])
            {
            }
            column(SeaRange_7__Control1000000132; SeaRange[7])
            {
            }
            column(SeaRange_6__Control1000000133; SeaRange[6])
            {
            }
            column(SeaRange_5__Control1000000134; SeaRange[5])
            {
            }
            column(SeaRange_4__Control1000000135; SeaRange[4])
            {
            }
            column(SeaRange_3__Control1000000136; SeaRange[3])
            {
            }
            column(SeaRange_2__Control1000000137; SeaRange[2])
            {
            }
            column(SeaRange_1__Control1000000138; SeaRange[1])
            {

            }
            column(SeaRangeC_2_; SeaRangeC[2])
            {

            }
            column(SeaRangeC_1_; SeaRangeC[1])
            {

            }
            column(SeaRangeC_3_; SeaRangeC[3])
            {

            }
            column(SeaRangeC_4_; SeaRangeC[4])
            {

            }
            column(SeaRangeC_5_; SeaRangeC[5])
            {

            }
            column(SeaRangeC_6_; SeaRangeC[6])
            {

            }
            column(SeaRangeC_7_; SeaRangeC[7])
            {

            }
            column(SeaRangeC_8_; SeaRangeC[8])
            {

            }
            column(SeaRangeC_9_; SeaRangeC[9])
            {

            }
            column(SeaRangeC_10_; SeaRangeC[10])
            {

            }
            column(SeaRangeC_11_; SeaRangeC[11])
            {

            }
            column(SeaRangeC_12_; SeaRangeC[12])
            {

            }
            column(SeaRangeC_13_; SeaRangeC[13])
            {

            }
            column(SeaRangeC_14_; SeaRangeC[14])
            {

            }
            column(SeaRangeC_15_; SeaRangeC[15])
            {

            }
            column(SeaRangeC_17_; SeaRangeC[17])
            {

            }
            column(SeaRangeC_16_; SeaRangeC[16])
            {

            }
            column(SeaRangeC_18_; SeaRangeC[18])
            {

            }
            column(SeaRangeC_20_; SeaRangeC[20])
            {

            }
            column(SeaRangeC_19_; SeaRangeC[19])
            {

            }
            column(T001; T001)
            {
            }
            column(Cat; Cat)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
            }
            column(SeaRangeC_1__Control1000000065; SeaRangeC[1])
            {

            }
            column(SeaRangeC_2__Control1000000066; SeaRangeC[2])
            {

            }
            column(SeaRangeC_3__Control1000000067; SeaRangeC[3])
            {

            }
            column(SeaRangeC_4__Control1000000068; SeaRangeC[4])
            {

            }
            column(SeaRangeC_5__Control1000000069; SeaRangeC[5])
            {

            }
            column(SeaRangeC_6__Control1000000070; SeaRangeC[6])
            {

            }
            column(SeaRangeC_7__Control1000000071; SeaRangeC[7])
            {

            }
            column(SeaRangeC_8__Control1000000072; SeaRangeC[8])
            {

            }
            column(SeaRangeC_9__Control1000000073; SeaRangeC[9])
            {

            }
            column(SeaRangeC_10__Control1000000074; SeaRangeC[10])
            {

            }
            column(SeaRangeC_11__Control1000000075; SeaRangeC[11])
            {

            }
            column(SeaRangeC_12__Control1000000076; SeaRangeC[12])
            {

            }
            column(SeaRangeC_13__Control1000000077; SeaRangeC[13])
            {

            }
            column(SeaRangeC_14__Control1000000078; SeaRangeC[14])
            {

            }
            column(SeaRangeC_15__Control1000000079; SeaRangeC[15])
            {

            }
            column(SeaRangeC_16__Control1000000080; SeaRangeC[16])
            {

            }
            column(SeaRangeC_17__Control1000000081; SeaRangeC[17])
            {

            }
            column(SeaRangeC_18__Control1000000082; SeaRangeC[18])
            {

            }
            column(SeaRangeC_19__Control1000000083; SeaRangeC[19])
            {

            }
            column(SeaRangeC_20__Control1000000084; SeaRangeC[20])
            {

            }
            column(SeaRangeC_20__Control1000000085; SeaRangeC[20])
            {

            }
            column(SeaRangeC_19__Control1000000087; SeaRangeC[19])
            {

            }
            column(SeaRangeC_18__Control1000000088; SeaRangeC[18])
            {

            }
            column(SeaRangeC_17__Control1000000089; SeaRangeC[17])
            {

            }
            column(SeaRangeC_16__Control1000000090; SeaRangeC[16])
            {

            }
            column(SeaRangeC_15__Control1000000091; SeaRangeC[15])
            {

            }
            column(SeaRangeC_14__Control1000000092; SeaRangeC[14])
            {

            }
            column(SeaRangeC_13__Control1000000093; SeaRangeC[13])
            {

            }
            column(SeaRangeC_12__Control1000000094; SeaRangeC[12])
            {

            }
            column(SeaRangeC_11__Control1000000095; SeaRangeC[11])
            {

            }
            column(SeaRangeC_10__Control1000000096; SeaRangeC[10])
            {

            }
            column(SeaRangeC_9__Control1000000097; SeaRangeC[9])
            {

            }
            column(SeaRangeC_8__Control1000000098; SeaRangeC[8])
            {

            }
            column(SeaRangeC_7__Control1000000099; SeaRangeC[7])
            {

            }
            column(SeaRangeC_6__Control1000000100; SeaRangeC[6])
            {

            }
            column(SeaRangeC_5__Control1000000101; SeaRangeC[5])
            {

            }
            column(SeaRangeC_4__Control1000000102; SeaRangeC[4])
            {

            }
            column(SeaRangeC_3__Control1000000103; SeaRangeC[3])
            {

            }
            column(SeaRangeC_2__Control1000000104; SeaRangeC[2])
            {

            }
            column(SeaRangeC_1__Control1000000105; SeaRangeC[1])
            {

            }
            column(Inventory_Posting_Group_Inventory_Control1000000106; Inventory)
            {
            }
            column(Inventory_Posting_Group_Description_Control1000000107; Description)
            {
            }
            column(SeaRangeC_22_; SeaRangeC[22])
            {

            }
            column(SeaRangeC_21_; SeaRangeC[21])
            {

            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control30; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control33; Inventory)
            {
            }
            column(Daily_Break_Up_by_VesselCaption; Daily_Break_Up_by_VesselCaptionLbl)
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
            column(Inventory_Posting_Group_Inventory_Control1000000106Caption; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group_Description_Control1000000107Caption; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption_Control1000000160; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption_Control1000000161; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control1000000106Caption_Control1000000164; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group_Description_Control1000000107Caption_Control1000000165; FieldCaption(Description))
            {
            }
            column(T001Caption; T001CaptionLbl)
            {
            }
            column(CatCaption; CatCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Statistics_Group; "Statistics Group")
            {
            }
            column(Inventory_Posting_Group_Category; Category)
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "----------------": Integer;
        locate: Record Location;
        Countx: Integer;
        level: Integer;
        LocGroup: Integer;
        TotLoc: Integer;
        SeaRangeC: array[100] of Decimal;
        T001: Text[80];
        SeaRange: array[100] of Text[30];
        Cat: Code[15];
        Daily_Break_Up_by_VesselCaptionLbl: Label 'Daily Break Up by Vessel';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        SheetCaptionLbl: Label 'Sheet';
        T001CaptionLbl: Label 'Statistics Group';
        CatCaptionLbl: Label 'Category';
}

