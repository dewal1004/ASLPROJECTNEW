report 81083 "Daily BreakUp by Vessel Excelg"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DailyBreakUpbyVesselExcelg.rdlc';

    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = SORTING("Statistics Group", Category, "S/No.") WHERE("In Use" = CONST(true), "Statistics Group" = FILTER(> 0));
            RequestFilterFields = "Statistics Group", Category, "Date Filter";
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
            column(SeaRange_19_; SeaRange[19])
            {
            }
            column(SeaRange_20_; SeaRange[20])
            {
            }
            column(SeaRange_21_; SeaRange[21])
            {

            }
            column(SeaRange_22_; SeaRange[22])
            {
            }
            column(SeaRange_23_; SeaRange[23])
            {
            }
            column(SeaRange_24_; SeaRange[24])
            {
            }
            column(SeaRange_25_; SeaRange[25])
            {
            }
            column(SeaRange_26_; SeaRange[26])
            {
            }
            column(SeaRange_27_; SeaRange[27])
            {
            }
            column(SeaRange_28_; SeaRange[28])
            {
            }
            column(SeaRange_29_; SeaRange[29])
            {
            }
            column(SeaRange_30_; SeaRange[30])
            {
            }
            column(SeaRange_31_; SeaRange[31])
            {
            }
            column(SeaRange_32_; SeaRange[32])
            {
            }
            column(SeaRange_33_; SeaRange[33])
            {
            }
            column(SeaRange_34_; SeaRange[34])
            {
            }
            column(SeaRange_35_; SeaRange[35])
            {
            }
            column(SeaRange_36_; SeaRange[36])
            {
            }
            column(SeaRange_37_; SeaRange[37])
            {
            }
            column(SeaRange_38_; SeaRange[38])
            {
            }
            column(SeaRange_39_; SeaRange[39])
            {
            }
            column(SeaRange_40_; SeaRange[40])
            {
            }
            column(SeaRange_41_; SeaRange[41])
            {
            }
            column(SeaRange_42_; SeaRange[42])
            {
            }
            column(SeaRange_43_; SeaRange[43])
            {

            }
            column(SeaRange_44_; SeaRange[44])
            {
            }
            column(SeaRange_45_; SeaRange[45])
            {
            }
            column(SeaRange_46_; SeaRange[46])
            {
            }
            column(SeaRange_47_; SeaRange[47])
            {
            }
            column(SeaRange_48_; SeaRange[48])
            {
            }
            column(SeaRange_49_; SeaRange[49])
            {
            }
            column(SeaRange_50_; SeaRange[50])
            {
            }
            column(SeaRange_51_; SeaRange[51])
            {
            }
            column(SeaRange_52_; SeaRange[52])
            {
            }
            column(SeaRange_53_; SeaRange[53])
            {
            }
            column(SeaRange_54_; SeaRange[54])
            {
            }
            column(SeaRange_55_; SeaRange[55])
            {
            }
            column(SeaRange_56_; SeaRange[56])
            {
            }
            column(SeaRange_57_; SeaRange[57])
            {
            }
            column(SeaRange_58_; SeaRange[58])
            {
            }
            column(SeaRange_59_; SeaRange[59])
            {
            }
            column(SeaRange_60_; SeaRange[60])
            {
            }
            column(SeaRange_61_; SeaRange[61])
            {
            }
            column(SeaRange_62_; SeaRange[62])
            {
            }
            column(SeaRange_63_; SeaRange[63])
            {
            }
            column(SeaRange_64_; SeaRange[64])
            {
            }
            column(SeaRange_65_; SeaRange[65])
            {
            }
            column(SeaRange_66_; SeaRange[66])
            {
            }
            column(SeaRange_67_; SeaRange[67])
            {
            }
            column(SeaRange_68_; SeaRange[68])
            {
            }
            column(SeaRange_69_; SeaRange[69])
            {
            }
            column(SeaRange_70_; SeaRange[70])
            {
            }
            column(SeaRange_71_; SeaRange[71])
            {
            }
            column(SeaRange_72_; SeaRange[72])
            {
            }
            column(SeaRange_73_; SeaRange[73])
            {
            }
            column(SeaRange_74_; SeaRange[74])
            {
            }
            column(SeaRange_75_; SeaRange[75])
            {
            }
            column(SeaRange_76_; SeaRange[76])
            {
            }
            column(SeaRange_77_; SeaRange[77])
            {
            }
            column(SeaRange_78_; SeaRange[78])
            {
            }
            column(SeaRange_79_; SeaRange[79])
            {
            }
            column(SeaRange_80_; SeaRange[80])
            {
            }
            column(SeaRange_81_; SeaRange[81])
            {
            }
            column(SeaRange_82_; SeaRange[82])
            {
            }
            column(SeaRange_83_; SeaRange[83])
            {

            }
            column(SeaRange_84_; SeaRange[84])
            {
            }
            column(SeaRange_85_; SeaRange[85])
            {
            }
            column(SeaRange_86_; SeaRange[86])
            {
            }
            column(SeaRange_87_; SeaRange[87])
            {
            }
            column(SeaRange_88_; SeaRange[88])
            {
            }
            column(SeaRange_89_; SeaRange[89])
            {
            }
            column(SeaRange_90_; SeaRange[90])
            {
            }
            column(SeaRange_91_; SeaRange[91])
            {
            }
            column(SeaRange_92_; SeaRange[92])
            {
            }
            column(SeaRange_93_; SeaRange[93])
            {
            }
            column(SeaRange_94_; SeaRange[94])
            {
            }
            column(SeaRange_95_; SeaRange[95])
            {
            }
            column(SeaRange_96_; SeaRange[96])
            {
            }
            column(SeaRange_97_; SeaRange[97])
            {
            }
            column(SeaRange_98_; SeaRange[98])
            {
            }
            column(SeaRange_99_; SeaRange[99])
            {
            }
            column(SeaRange_100_; SeaRange[100])
            {
            }
            column(SeaRangeD_1_; SeaRangeD[1])
            {

            }
            column(SeaRangeD_2_; SeaRangeD[2])
            {

            }
            column(SeaRangeD_3_; SeaRangeD[3])
            {

            }
            column(SeaRangeD_4_; SeaRangeD[4])
            {

            }
            column(SeaRangeD_5_; SeaRangeD[5])
            {

            }
            column(SeaRangeD_6_; SeaRangeD[6])
            {

            }
            column(SeaRangeD_7_; SeaRangeD[7])
            {

            }
            column(SeaRangeD_8_; SeaRangeD[8])
            {

            }
            column(SeaRangeD_9_; SeaRangeD[9])
            {

            }
            column(SeaRangeD_10_; SeaRangeD[10])
            {

            }
            column(SeaRangeD_20_; SeaRangeD[20])
            {

            }
            column(SeaRangeD_19_; SeaRangeD[19])
            {

            }
            column(SeaRangeD_18_; SeaRangeD[18])
            {

            }
            column(SeaRangeD_17_; SeaRangeD[17])
            {

            }
            column(SeaRangeD_16_; SeaRangeD[16])
            {

            }
            column(SeaRangeD_15_; SeaRangeD[15])
            {

            }
            column(SeaRangeD_14_; SeaRangeD[14])
            {

            }
            column(SeaRangeD_13_; SeaRangeD[13])
            {

            }
            column(SeaRangeD_12_; SeaRangeD[12])
            {

            }
            column(SeaRangeD_11_; SeaRangeD[11])
            {

            }
            column(SeaRangeD_30_; SeaRangeD[30])
            {

            }
            column(SeaRangeD_29_; SeaRangeD[29])
            {

            }
            column(SeaRangeD_28_; SeaRangeD[28])
            {

            }
            column(SeaRangeD_27_; SeaRangeD[27])
            {

            }
            column(SeaRangeD_26_; SeaRangeD[26])
            {

            }
            column(SeaRangeD_25_; SeaRangeD[25])
            {

            }
            column(SeaRangeD_24_; SeaRangeD[24])
            {

            }
            column(SeaRangeD_23_; SeaRangeD[23])
            {

            }
            column(SeaRangeD_22_; SeaRangeD[22])
            {

            }
            column(SeaRangeD_11__Control1000000425; SeaRangeD[11])
            {

            }
            column(SeaRangeD_40_; SeaRangeD[40])
            {

            }
            column(SeaRangeD_39_; SeaRangeD[39])
            {

            }
            column(SeaRangeD_38_; SeaRangeD[38])
            {

            }
            column(SeaRangeD_37_; SeaRangeD[37])
            {

            }
            column(SeaRangeD_36_; SeaRangeD[36])
            {

            }
            column(SeaRangeD_35_; SeaRangeD[35])
            {

            }
            column(SeaRangeD_34_; SeaRangeD[34])
            {

            }
            column(SeaRangeD_33_; SeaRangeD[33])
            {

            }
            column(SeaRangeD_32_; SeaRangeD[32])
            {

            }
            column(SeaRangeD_31_; SeaRangeD[31])
            {

            }
            column(SeaRangeD_50_; SeaRangeD[50])
            {

            }
            column(SeaRangeD_49_; SeaRangeD[49])
            {

            }
            column(SeaRangeD_48_; SeaRangeD[48])
            {

            }
            column(SeaRangeD_47_; SeaRangeD[47])
            {

            }
            column(SeaRangeD_46_; SeaRangeD[46])
            {

            }
            column(SeaRangeD_45_; SeaRangeD[45])
            {

            }
            column(SeaRangeD_44_; SeaRangeD[44])
            {

            }
            column(SeaRangeD_43_; SeaRangeD[43])
            {

            }
            column(SeaRangeD_42_; SeaRangeD[42])
            {

            }
            column(SeaRangeD_41_; SeaRangeD[41])
            {

            }
            column(SeaRangeD_60_; SeaRangeD[60])
            {

            }
            column(SeaRangeD_59_; SeaRangeD[59])
            {

            }
            column(SeaRangeD_58_; SeaRangeD[58])
            {

            }
            column(SeaRangeD_57_; SeaRangeD[57])
            {

            }
            column(SeaRangeD_56_; SeaRangeD[56])
            {

            }
            column(SeaRangeD_55_; SeaRangeD[55])
            {

            }
            column(SeaRangeD_54_; SeaRangeD[54])
            {

            }
            column(SeaRangeD_53_; SeaRangeD[53])
            {

            }
            column(SeaRangeD_52_; SeaRangeD[52])
            {

            }
            column(SeaRangeD_51_; SeaRangeD[51])
            {

            }
            column(SeaRangeD_70_; SeaRangeD[70])
            {

            }
            column(SeaRangeD_69_; SeaRangeD[69])
            {

            }
            column(SeaRangeD_68_; SeaRangeD[68])
            {

            }
            column(SeaRangeD_67_; SeaRangeD[67])
            {

            }
            column(SeaRangeD_66_; SeaRangeD[66])
            {

            }
            column(SeaRangeD_65_; SeaRangeD[65])
            {

            }
            column(SeaRangeD_64_; SeaRangeD[64])
            {

            }
            column(SeaRangeD_63_; SeaRangeD[63])
            {

            }
            column(SeaRangeD_62_; SeaRangeD[62])
            {

            }
            column(SeaRangeD_61_; SeaRangeD[61])
            {

            }
            column(SeaRangeD_80_; SeaRangeD[80])
            {

            }
            column(SeaRangeD_79_; SeaRangeD[79])
            {

            }
            column(SeaRangeD_78_; SeaRangeD[78])
            {

            }
            column(SeaRangeD_77_; SeaRangeD[77])
            {

            }
            column(SeaRangeD_76_; SeaRangeD[76])
            {

            }
            column(SeaRangeD_75_; SeaRangeD[75])
            {

            }
            column(SeaRangeD_74_; SeaRangeD[74])
            {

            }
            column(SeaRangeD_73_; SeaRangeD[73])
            {

            }
            column(SeaRangeD_72_; SeaRangeD[72])
            {

            }
            column(SeaRangeD_71_; SeaRangeD[71])
            {

            }
            column(SeaRangeD_90_; SeaRangeD[90])
            {

            }
            column(SeaRangeD_89_; SeaRangeD[89])
            {

            }
            column(SeaRangeD_88_; SeaRangeD[88])
            {

            }
            column(SeaRangeD_87_; SeaRangeD[87])
            {

            }
            column(SeaRangeD_86_; SeaRangeD[86])
            {

            }
            column(SeaRangeD_85_; SeaRangeD[85])
            {

            }
            column(SeaRangeD_84_; SeaRangeD[84])
            {

            }
            column(SeaRangeD_83_; SeaRangeD[83])
            {

            }
            column(SeaRangeD_82_; SeaRangeD[82])
            {

            }
            column(SeaRangeD_81_; SeaRangeD[81])
            {

            }
            column(SeaRangeD_100_; SeaRangeD[100])
            {

            }
            column(SeaRangeD_99_; SeaRangeD[99])
            {

            }
            column(SeaRangeD_98_; SeaRangeD[98])
            {

            }
            column(SeaRangeD_97_; SeaRangeD[97])
            {

            }
            column(SeaRangeD_96_; SeaRangeD[96])
            {

            }
            column(SeaRangeD_95_; SeaRangeD[95])
            {

            }
            column(SeaRangeD_94_; SeaRangeD[94])
            {

            }
            column(SeaRangeD_93_; SeaRangeD[93])
            {

            }
            column(SeaRangeD_92_; SeaRangeD[92])
            {

            }
            column(SeaRangeD_91_; SeaRangeD[91])
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
            column(SeaRange_21__Control1000000036; SeaRange[21])
            {
            }
            column(SeaRange_22__Control1000000041; SeaRange[22])
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
            column(SeaRange_21__Control1000000110; SeaRange[21])
            {

            }
            column(SeaRange_22__Control1000000117; SeaRange[22])
            {
            }
            column(SeaRange_23__Control1000000140; SeaRange[23])
            {
            }
            column(SeaRange_24__Control1000000168; SeaRange[24])
            {
            }
            column(SeaRange_25__Control1000000169; SeaRange[25])
            {
            }
            column(SeaRange_26__Control1000000170; SeaRange[26])
            {
            }
            column(SeaRange_27__Control1000000171; SeaRange[27])
            {
            }
            column(SeaRange_28__Control1000000172; SeaRange[28])
            {
            }
            column(SeaRange_29__Control1000000173; SeaRange[29])
            {
            }
            column(SeaRange_30__Control1000000174; SeaRange[30])
            {
            }
            column(SeaRange_31__Control1000000175; SeaRange[31])
            {
            }
            column(SeaRange_32__Control1000000176; SeaRange[32])
            {
            }
            column(SeaRange_33__Control1000000177; SeaRange[33])
            {
            }
            column(SeaRange_34__Control1000000178; SeaRange[34])
            {
            }
            column(SeaRange_35__Control1000000179; SeaRange[35])
            {
            }
            column(SeaRange_36__Control1000000180; SeaRange[36])
            {
            }
            column(SeaRange_37__Control1000000181; SeaRange[37])
            {
            }
            column(SeaRange_38__Control1000000182; SeaRange[38])
            {
            }
            column(SeaRange_39__Control1000000183; SeaRange[39])
            {
            }
            column(SeaRange_40__Control1000000184; SeaRange[40])
            {
            }
            column(SeaRange_41__Control1000000185; SeaRange[41])
            {
            }
            column(SeaRange_42__Control1000000186; SeaRange[42])
            {
            }
            column(SeaRange_43__Control1000000187; SeaRange[43])
            {

            }
            column(SeaRange_44__Control1000000190; SeaRange[44])
            {
            }
            column(SeaRange_45__Control1000000191; SeaRange[45])
            {
            }
            column(SeaRange_46__Control1000000192; SeaRange[46])
            {
            }
            column(SeaRange_47__Control1000000193; SeaRange[47])
            {
            }
            column(SeaRange_48__Control1000000194; SeaRange[48])
            {
            }
            column(SeaRange_49__Control1000000195; SeaRange[49])
            {
            }
            column(SeaRange_50__Control1000000196; SeaRange[50])
            {
            }
            column(SeaRange_51__Control1000000197; SeaRange[51])
            {
            }
            column(SeaRange_52__Control1000000198; SeaRange[52])
            {
            }
            column(SeaRange_53__Control1000000199; SeaRange[53])
            {
            }
            column(SeaRange_54__Control1000000200; SeaRange[54])
            {
            }
            column(SeaRange_55__Control1000000201; SeaRange[55])
            {
            }
            column(SeaRange_56__Control1000000202; SeaRange[56])
            {
            }
            column(SeaRange_57__Control1000000203; SeaRange[57])
            {
            }
            column(SeaRange_58__Control1000000204; SeaRange[58])
            {
            }
            column(SeaRange_59__Control1000000205; SeaRange[59])
            {
            }
            column(SeaRange_60__Control1000000206; SeaRange[60])
            {
            }
            column(SeaRange_61__Control1000000207; SeaRange[61])
            {
            }
            column(SeaRange_62__Control1000000208; SeaRange[62])
            {
            }
            column(SeaRange_83__Control1000000209; SeaRange[83])
            {

            }
            column(SeaRange_84__Control1000000212; SeaRange[84])
            {
            }
            column(SeaRange_85__Control1000000213; SeaRange[85])
            {
            }
            column(SeaRange_86__Control1000000214; SeaRange[86])
            {
            }
            column(SeaRange_87__Control1000000215; SeaRange[87])
            {
            }
            column(SeaRange_88__Control1000000216; SeaRange[88])
            {
            }
            column(SeaRange_89__Control1000000217; SeaRange[89])
            {
            }
            column(SeaRange_90__Control1000000218; SeaRange[90])
            {
            }
            column(SeaRange_91__Control1000000219; SeaRange[91])
            {
            }
            column(SeaRange_92__Control1000000220; SeaRange[92])
            {
            }
            column(SeaRange_93__Control1000000221; SeaRange[93])
            {
            }
            column(SeaRange_94__Control1000000222; SeaRange[94])
            {
            }
            column(SeaRange_95__Control1000000223; SeaRange[95])
            {
            }
            column(SeaRange_96__Control1000000224; SeaRange[96])
            {
            }
            column(SeaRange_97__Control1000000225; SeaRange[97])
            {
            }
            column(SeaRange_98__Control1000000226; SeaRange[98])
            {
            }
            column(SeaRange_99__Control1000000227; SeaRange[99])
            {
            }
            column(SeaRange_100__Control1000000228; SeaRange[100])
            {
            }
            column(SeaRange_63__Control1000000233; SeaRange[63])
            {
            }
            column(SeaRange_64__Control1000000234; SeaRange[64])
            {
            }
            column(SeaRange_65__Control1000000235; SeaRange[65])
            {
            }
            column(SeaRange_66__Control1000000236; SeaRange[66])
            {
            }
            column(SeaRange_67__Control1000000237; SeaRange[67])
            {
            }
            column(SeaRange_68__Control1000000238; SeaRange[68])
            {
            }
            column(SeaRange_69__Control1000000239; SeaRange[69])
            {
            }
            column(SeaRange_70__Control1000000240; SeaRange[70])
            {
            }
            column(SeaRange_71__Control1000000241; SeaRange[71])
            {
            }
            column(SeaRange_72__Control1000000242; SeaRange[72])
            {
            }
            column(SeaRange_73__Control1000000243; SeaRange[73])
            {
            }
            column(SeaRange_74__Control1000000244; SeaRange[74])
            {
            }
            column(SeaRange_75__Control1000000245; SeaRange[75])
            {
            }
            column(SeaRange_76__Control1000000246; SeaRange[76])
            {
            }
            column(SeaRange_77__Control1000000247; SeaRange[77])
            {
            }
            column(SeaRange_78__Control1000000248; SeaRange[78])
            {
            }
            column(SeaRange_79__Control1000000249; SeaRange[79])
            {
            }
            column(SeaRange_80__Control1000000250; SeaRange[80])
            {
            }
            column(SeaRange_81__Control1000000251; SeaRange[81])
            {
            }
            column(SeaRange_82__Control1000000252; SeaRange[82])
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
            column(SeaRangeC_1__Control1000000115; SeaRangeC[1])
            {

            }
            column(SeaRangeC_2__Control1000000166; SeaRangeC[2])
            {
            }
            column(SeaRangeC_3__Control1000000188; SeaRangeC[3])
            {
            }
            column(SeaRangeC_4__Control1000000189; SeaRangeC[4])
            {
            }
            column(SeaRangeC_5__Control1000000210; SeaRangeC[5])
            {
            }
            column(SeaRangeC_6__Control1000000211; SeaRangeC[6])
            {
            }
            column(SeaRangeC_7__Control1000000229; SeaRangeC[7])
            {
            }
            column(SeaRangeC_8__Control1000000230; SeaRangeC[8])
            {
            }
            column(SeaRangeC_9__Control1000000231; SeaRangeC[9])
            {
            }
            column(SeaRangeC_10__Control1000000232; SeaRangeC[10])
            {
            }
            column(SeaRangeC_11__Control1000000253; SeaRangeC[11])
            {
            }
            column(SeaRangeC_12__Control1000000254; SeaRangeC[12])
            {
            }
            column(SeaRangeC_13__Control1000000255; SeaRangeC[13])
            {
            }
            column(SeaRangeC_14__Control1000000256; SeaRangeC[14])
            {
            }
            column(SeaRangeC_15__Control1000000257; SeaRangeC[15])
            {
            }
            column(SeaRangeC_16__Control1000000258; SeaRangeC[16])
            {
            }
            column(SeaRangeC_17__Control1000000259; SeaRangeC[17])
            {
            }
            column(SeaRangeC_18__Control1000000260; SeaRangeC[18])
            {
            }
            column(SeaRangeC_19__Control1000000261; SeaRangeC[19])
            {
            }
            column(SeaRangeC_20__Control1000000262; SeaRangeC[20])
            {
            }
            column(SeaRangeC_21_; SeaRangeC[21])
            {

            }
            column(SeaRangeC_22_; SeaRangeC[22])
            {
            }
            column(SeaRangeC_23_; SeaRangeC[23])
            {
            }
            column(SeaRangeC_24_; SeaRangeC[24])
            {
            }
            column(SeaRangeC_25_; SeaRangeC[25])
            {
            }
            column(SeaRangeC_26_; SeaRangeC[26])
            {
            }
            column(SeaRangeC_27_; SeaRangeC[27])
            {
            }
            column(SeaRangeC_28_; SeaRangeC[28])
            {
            }
            column(SeaRangeC_29_; SeaRangeC[29])
            {
            }
            column(SeaRangeC_30_; SeaRangeC[30])
            {
            }
            column(SeaRangeC_31_; SeaRangeC[31])
            {
            }
            column(SeaRangeC_32_; SeaRangeC[32])
            {
            }
            column(SeaRangeC_33_; SeaRangeC[33])
            {
            }
            column(SeaRangeC_34_; SeaRangeC[34])
            {
            }
            column(SeaRangeC_35_; SeaRangeC[35])
            {
            }
            column(SeaRangeC_36_; SeaRangeC[36])
            {
            }
            column(SeaRangeC_37_; SeaRangeC[37])
            {
            }
            column(SeaRangeC_38_; SeaRangeC[38])
            {
            }
            column(SeaRangeC_39_; SeaRangeC[39])
            {
            }
            column(SeaRangeC_40_; SeaRangeC[40])
            {
            }
            column(SeaRangeC_41_; SeaRangeC[41])
            {
            }
            column(SeaRangeC_42_; SeaRangeC[42])
            {
            }
            column(SeaRangeC_43_; SeaRangeC[43])
            {

            }
            column(SeaRangeC_44_; SeaRangeC[44])
            {
            }
            column(SeaRangeC_45_; SeaRangeC[45])
            {
            }
            column(SeaRangeC_46_; SeaRangeC[46])
            {
            }
            column(SeaRangeC_47_; SeaRangeC[47])
            {
            }
            column(SeaRangeC_48_; SeaRangeC[48])
            {
            }
            column(SeaRangeC_49_; SeaRangeC[49])
            {
            }
            column(SeaRangeC_50_; SeaRangeC[50])
            {
            }
            column(SeaRangeC_51_; SeaRangeC[51])
            {
            }
            column(SeaRangeC_52_; SeaRangeC[52])
            {
            }
            column(SeaRangeC_53_; SeaRangeC[53])
            {
            }
            column(SeaRangeC_54_; SeaRangeC[54])
            {
            }
            column(SeaRangeC_55_; SeaRangeC[55])
            {
            }
            column(SeaRangeC_56_; SeaRangeC[56])
            {
            }
            column(SeaRangeC_57_; SeaRangeC[57])
            {
            }
            column(SeaRangeC_58_; SeaRangeC[58])
            {
            }
            column(SeaRangeC_59_; SeaRangeC[59])
            {
            }
            column(SeaRangeC_60_; SeaRangeC[60])
            {
            }
            column(SeaRangeC_61_; SeaRangeC[61])
            {
            }
            column(SeaRangeC_62_; SeaRangeC[62])
            {
            }
            column(SeaRangeC_63_; SeaRangeC[63])
            {
            }
            column(SeaRangeC_64_; SeaRangeC[64])
            {
            }
            column(SeaRangeC_65_; SeaRangeC[65])
            {
            }
            column(SeaRangeC_66_; SeaRangeC[66])
            {
            }
            column(SeaRangeC_67_; SeaRangeC[67])
            {
            }
            column(SeaRangeC_68_; SeaRangeC[68])
            {
            }
            column(SeaRangeC_69_; SeaRangeC[69])
            {
            }
            column(SeaRangeC_70_; SeaRangeC[70])
            {
            }
            column(SeaRangeC_71_; SeaRangeC[71])
            {
            }
            column(SeaRangeC_72_; SeaRangeC[72])
            {
            }
            column(SeaRangeC_73_; SeaRangeC[73])
            {
            }
            column(SeaRangeC_74_; SeaRangeC[74])
            {
            }
            column(SeaRangeC_75_; SeaRangeC[75])
            {
            }
            column(SeaRangeC_76_; SeaRangeC[76])
            {
            }
            column(SeaRangeC_77_; SeaRangeC[77])
            {
            }
            column(SeaRangeC_78_; SeaRangeC[78])
            {
            }
            column(SeaRangeC_79_; SeaRangeC[79])
            {
            }
            column(SeaRangeC_80_; SeaRangeC[80])
            {
            }
            column(SeaRangeC_81_; SeaRangeC[81])
            {
            }
            column(SeaRangeC_82_; SeaRangeC[82])
            {
            }
            column(SeaRangeC_83_; SeaRangeC[83])
            {

            }
            column(SeaRangeC_84_; SeaRangeC[84])
            {
            }
            column(SeaRangeC_85_; SeaRangeC[85])
            {
            }
            column(SeaRangeC_86_; SeaRangeC[86])
            {
            }
            column(SeaRangeC_87_; SeaRangeC[87])
            {
            }
            column(SeaRangeC_88_; SeaRangeC[88])
            {
            }
            column(SeaRangeC_89_; SeaRangeC[89])
            {
            }
            column(SeaRangeC_90_; SeaRangeC[90])
            {
            }
            column(SeaRangeC_91_; SeaRangeC[91])
            {
            }
            column(SeaRangeC_92_; SeaRangeC[92])
            {
            }
            column(SeaRangeC_93_; SeaRangeC[93])
            {
            }
            column(SeaRangeC_94_; SeaRangeC[94])
            {
            }
            column(SeaRangeC_95_; SeaRangeC[95])
            {
            }
            column(SeaRangeC_96_; SeaRangeC[96])
            {
            }
            column(SeaRangeC_97_; SeaRangeC[97])
            {
            }
            column(SeaRangeC_98_; SeaRangeC[98])
            {
            }
            column(SeaRangeC_99_; SeaRangeC[99])
            {
            }
            column(SeaRangeC_100_; SeaRangeC[100])
            {
            }
            column(Inventory_Posting_Group__Inventory_total1_; "Inventory total1")
            {
            }
            column(Inventory_Posting_Group_Description; Description)
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
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
            }
            column(Inventory_Posting_Group_Description_Control1000000107; Description)
            {
            }
            column(SeaRangeC_22__Control1000000108; SeaRangeC[22])
            {

            }
            column(SeaRangeC_21__Control1000000109; SeaRangeC[21])
            {

            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group__Inventory_total1__Control30; "Inventory total1")
            {
            }
            column(SeaRangeC_100__Control1000000496; SeaRangeC[100])
            {

            }
            column(SeaRangeC_99__Control1000000497; SeaRangeC[99])
            {

            }
            column(SeaRangeC_98__Control1000000498; SeaRangeC[98])
            {

            }
            column(SeaRangeC_97__Control1000000499; SeaRangeC[97])
            {

            }
            column(SeaRangeC_96__Control1000000500; SeaRangeC[96])
            {

            }
            column(SeaRangeC_95__Control1000000501; SeaRangeC[95])
            {

            }
            column(SeaRangeC_94__Control1000000502; SeaRangeC[94])
            {

            }
            column(SeaRangeC_93__Control1000000503; SeaRangeC[93])
            {

            }
            column(SeaRangeC_92__Control1000000504; SeaRangeC[92])
            {

            }
            column(SeaRangeC_91__Control1000000505; SeaRangeC[91])
            {

            }
            column(SeaRangeC_90__Control1000000506; SeaRangeC[90])
            {

            }
            column(SeaRangeC_89__Control1000000507; SeaRangeC[89])
            {

            }
            column(SeaRangeC_88__Control1000000508; SeaRangeC[88])
            {

            }
            column(SeaRangeC_87__Control1000000509; SeaRangeC[87])
            {

            }
            column(SeaRangeC_86__Control1000000510; SeaRangeC[86])
            {

            }
            column(SeaRangeC_85__Control1000000511; SeaRangeC[85])
            {

            }
            column(SeaRangeC_84__Control1000000512; SeaRangeC[84])
            {

            }
            column(SeaRangeC_83__Control1000000513; SeaRangeC[83])
            {

            }
            column(SeaRangeC_82__Control1000000514; SeaRangeC[82])
            {

            }
            column(SeaRangeC_81__Control1000000515; SeaRangeC[81])
            {

            }
            column(SeaRangeC_80__Control1000000516; SeaRangeC[80])
            {

            }
            column(SeaRangeC_79__Control1000000517; SeaRangeC[79])
            {

            }
            column(SeaRangeC_78__Control1000000518; SeaRangeC[78])
            {

            }
            column(SeaRangeC_77__Control1000000519; SeaRangeC[77])
            {

            }
            column(SeaRangeC_76__Control1000000520; SeaRangeC[76])
            {

            }
            column(SeaRangeC_75__Control1000000521; SeaRangeC[75])
            {

            }
            column(SeaRangeC_74__Control1000000522; SeaRangeC[74])
            {

            }
            column(SeaRangeC_73__Control1000000523; SeaRangeC[73])
            {

            }
            column(SeaRangeC_72__Control1000000524; SeaRangeC[72])
            {

            }
            column(SeaRangeC_71__Control1000000525; SeaRangeC[71])
            {

            }
            column(SeaRangeC_70__Control1000000526; SeaRangeC[70])
            {

            }
            column(SeaRangeC_69__Control1000000527; SeaRangeC[69])
            {

            }
            column(SeaRangeC_68__Control1000000528; SeaRangeC[68])
            {

            }
            column(SeaRangeC_67__Control1000000529; SeaRangeC[67])
            {

            }
            column(SeaRangeC_66__Control1000000530; SeaRangeC[66])
            {

            }
            column(SeaRangeC_65__Control1000000531; SeaRangeC[65])
            {

            }
            column(SeaRangeC_64__Control1000000532; SeaRangeC[64])
            {

            }
            column(SeaRangeC_63__Control1000000533; SeaRangeC[63])
            {

            }
            column(SeaRangeC_62__Control1000000534; SeaRangeC[62])
            {

            }
            column(SeaRangeC_61__Control1000000535; SeaRangeC[61])
            {

            }
            column(SeaRangeC_60__Control1000000536; SeaRangeC[60])
            {

            }
            column(SeaRangeC_59__Control1000000537; SeaRangeC[59])
            {

            }
            column(SeaRangeC_58__Control1000000538; SeaRangeC[58])
            {

            }
            column(SeaRangeC_57__Control1000000539; SeaRangeC[57])
            {

            }
            column(SeaRangeC_56__Control1000000540; SeaRangeC[56])
            {

            }
            column(SeaRangeC_55__Control1000000541; SeaRangeC[55])
            {

            }
            column(SeaRangeC_54__Control1000000542; SeaRangeC[54])
            {

            }
            column(SeaRangeC_53__Control1000000543; SeaRangeC[53])
            {

            }
            column(SeaRangeC_52__Control1000000544; SeaRangeC[52])
            {

            }
            column(SeaRangeC_51__Control1000000545; SeaRangeC[51])
            {

            }
            column(SeaRangeC_50__Control1000000546; SeaRangeC[50])
            {

            }
            column(SeaRangeC_49__Control1000000547; SeaRangeC[49])
            {

            }
            column(SeaRangeC_48__Control1000000548; SeaRangeC[48])
            {

            }
            column(SeaRangeC_47__Control1000000549; SeaRangeC[47])
            {

            }
            column(SeaRangeC_46__Control1000000550; SeaRangeC[46])
            {

            }
            column(SeaRangeC_45__Control1000000551; SeaRangeC[45])
            {

            }
            column(SeaRangeC_44__Control1000000552; SeaRangeC[44])
            {

            }
            column(SeaRangeC_43__Control1000000553; SeaRangeC[43])
            {

            }
            column(SeaRangeC_42__Control1000000554; SeaRangeC[42])
            {

            }
            column(SeaRangeC_41__Control1000000555; SeaRangeC[41])
            {

            }
            column(SeaRangeC_40__Control1000000556; SeaRangeC[40])
            {

            }
            column(SeaRangeC_39__Control1000000557; SeaRangeC[39])
            {

            }
            column(SeaRangeC_38__Control1000000558; SeaRangeC[38])
            {

            }
            column(SeaRangeC_37__Control1000000559; SeaRangeC[37])
            {

            }
            column(SeaRangeC_36__Control1000000560; SeaRangeC[36])
            {

            }
            column(SeaRangeC_35__Control1000000561; SeaRangeC[35])
            {

            }
            column(SeaRangeC_34__Control1000000562; SeaRangeC[34])
            {

            }
            column(SeaRangeC_33__Control1000000563; SeaRangeC[33])
            {

            }
            column(SeaRangeC_32__Control1000000564; SeaRangeC[32])
            {

            }
            column(SeaRangeC_31__Control1000000565; SeaRangeC[31])
            {

            }
            column(SeaRangeC_30__Control1000000566; SeaRangeC[30])
            {

            }
            column(SeaRangeC_29__Control1000000567; SeaRangeC[29])
            {

            }
            column(SeaRangeC_28__Control1000000568; SeaRangeC[28])
            {

            }
            column(SeaRangeC_27__Control1000000569; SeaRangeC[27])
            {

            }
            column(SeaRangeC_26__Control1000000570; SeaRangeC[26])
            {

            }
            column(SeaRangeC_25__Control1000000571; SeaRangeC[25])
            {

            }
            column(SeaRangeC_24__Control1000000572; SeaRangeC[24])
            {

            }
            column(SeaRangeC_23__Control1000000573; SeaRangeC[23])
            {

            }
            column(SeaRangeC_22__Control1000000574; SeaRangeC[22])
            {

            }
            column(SeaRangeC_11__Control1000000575; SeaRangeC[11])
            {

            }
            column(SeaRangeC_20__Control1000000576; SeaRangeC[20])
            {

            }
            column(SeaRangeC_19__Control1000000577; SeaRangeC[19])
            {

            }
            column(SeaRangeC_18__Control1000000578; SeaRangeC[18])
            {

            }
            column(SeaRangeC_17__Control1000000579; SeaRangeC[17])
            {

            }
            column(SeaRangeC_16__Control1000000580; SeaRangeC[16])
            {

            }
            column(SeaRangeC_15__Control1000000581; SeaRangeC[15])
            {

            }
            column(SeaRangeC_14__Control1000000582; SeaRangeC[14])
            {

            }
            column(SeaRangeC_13__Control1000000583; SeaRangeC[13])
            {

            }
            column(SeaRangeC_12__Control1000000584; SeaRangeC[12])
            {

            }
            column(SeaRangeC_11__Control1000000585; SeaRangeC[11])
            {

            }
            column(SeaRangeC_10__Control1000000586; SeaRangeC[10])
            {

            }
            column(SeaRangeC_9__Control1000000587; SeaRangeC[9])
            {

            }
            column(SeaRangeC_8__Control1000000588; SeaRangeC[8])
            {

            }
            column(SeaRangeC_7__Control1000000589; SeaRangeC[7])
            {

            }
            column(SeaRangeC_6__Control1000000590; SeaRangeC[6])
            {

            }
            column(SeaRangeC_5__Control1000000591; SeaRangeC[5])
            {

            }
            column(SeaRangeC_4__Control1000000592; SeaRangeC[4])
            {

            }
            column(SeaRangeC_3__Control1000000593; SeaRangeC[3])
            {

            }
            column(SeaRangeC_2__Control1000000594; SeaRangeC[2])
            {

            }
            column(SeaRangeC_1__Control1000000595; SeaRangeC[1])
            {

            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group__Inventory_total1__Control33; "Inventory total1")
            {
            }
            column(SeaRangeC_1__Control1000000596; SeaRangeC[1])
            {

            }
            column(SeaRangeC_2__Control1000000597; SeaRangeC[2])
            {

            }
            column(SeaRangeC_3__Control1000000598; SeaRangeC[3])
            {

            }
            column(SeaRangeC_4__Control1000000599; SeaRangeC[4])
            {

            }
            column(SeaRangeC_5__Control1000000600; SeaRangeC[5])
            {

            }
            column(SeaRangeC_6__Control1000000601; SeaRangeC[6])
            {

            }
            column(SeaRangeC_7__Control1000000602; SeaRangeC[7])
            {

            }
            column(SeaRangeC_8__Control1000000603; SeaRangeC[8])
            {

            }
            column(SeaRangeC_9__Control1000000604; SeaRangeC[9])
            {

            }
            column(SeaRangeC_10__Control1000000605; SeaRangeC[10])
            {

            }
            column(SeaRangeC_11__Control1000000606; SeaRangeC[11])
            {

            }
            column(SeaRangeC_12__Control1000000607; SeaRangeC[12])
            {

            }
            column(SeaRangeC_13__Control1000000608; SeaRangeC[13])
            {

            }
            column(SeaRangeC_14__Control1000000609; SeaRangeC[14])
            {

            }
            column(SeaRangeC_15__Control1000000610; SeaRangeC[15])
            {

            }
            column(SeaRangeC_16__Control1000000611; SeaRangeC[16])
            {

            }
            column(SeaRangeC_17__Control1000000612; SeaRangeC[17])
            {

            }
            column(SeaRangeC_18__Control1000000613; SeaRangeC[18])
            {

            }
            column(SeaRangeC_19__Control1000000614; SeaRangeC[19])
            {

            }
            column(SeaRangeC_20__Control1000000615; SeaRangeC[20])
            {

            }
            column(SeaRangeC_11__Control1000000616; SeaRangeC[11])
            {

            }
            column(SeaRangeC_22__Control1000000617; SeaRangeC[22])
            {

            }
            column(SeaRangeC_23__Control1000000618; SeaRangeC[23])
            {

            }
            column(SeaRangeC_24__Control1000000619; SeaRangeC[24])
            {

            }
            column(SeaRangeC_25__Control1000000620; SeaRangeC[25])
            {

            }
            column(SeaRangeC_26__Control1000000621; SeaRangeC[26])
            {

            }
            column(SeaRangeC_27__Control1000000622; SeaRangeC[27])
            {

            }
            column(SeaRangeC_28__Control1000000623; SeaRangeC[28])
            {

            }
            column(SeaRangeC_29__Control1000000624; SeaRangeC[29])
            {

            }
            column(SeaRangeC_30__Control1000000625; SeaRangeC[30])
            {

            }
            column(SeaRangeC_31__Control1000000626; SeaRangeC[31])
            {

            }
            column(SeaRangeC_32__Control1000000627; SeaRangeC[32])
            {

            }
            column(SeaRangeC_33__Control1000000628; SeaRangeC[33])
            {

            }
            column(SeaRangeC_34__Control1000000629; SeaRangeC[34])
            {

            }
            column(SeaRangeC_35__Control1000000630; SeaRangeC[35])
            {

            }
            column(SeaRangeC_36__Control1000000631; SeaRangeC[36])
            {

            }
            column(SeaRangeC_37__Control1000000632; SeaRangeC[37])
            {

            }
            column(SeaRangeC_38__Control1000000633; SeaRangeC[38])
            {

            }
            column(SeaRangeC_39__Control1000000634; SeaRangeC[39])
            {

            }
            column(SeaRangeC_40__Control1000000635; SeaRangeC[40])
            {

            }
            column(SeaRangeC_41__Control1000000636; SeaRangeC[41])
            {

            }
            column(SeaRangeC_42__Control1000000637; SeaRangeC[42])
            {

            }
            column(SeaRangeC_43__Control1000000638; SeaRangeC[43])
            {

            }
            column(SeaRangeC_44__Control1000000639; SeaRangeC[44])
            {

            }
            column(SeaRangeC_45__Control1000000640; SeaRangeC[45])
            {

            }
            column(SeaRangeC_46__Control1000000641; SeaRangeC[46])
            {

            }
            column(SeaRangeC_47__Control1000000642; SeaRangeC[47])
            {

            }
            column(SeaRangeC_48__Control1000000643; SeaRangeC[48])
            {

            }
            column(SeaRangeC_49__Control1000000644; SeaRangeC[49])
            {

            }
            column(SeaRangeC_50__Control1000000645; SeaRangeC[50])
            {

            }
            column(SeaRangeC_51__Control1000000646; SeaRangeC[51])
            {

            }
            column(SeaRangeC_52__Control1000000647; SeaRangeC[52])
            {

            }
            column(SeaRangeC_53__Control1000000648; SeaRangeC[53])
            {

            }
            column(SeaRangeC_54__Control1000000649; SeaRangeC[54])
            {

            }
            column(SeaRangeC_55__Control1000000650; SeaRangeC[55])
            {

            }
            column(SeaRangeC_56__Control1000000651; SeaRangeC[56])
            {

            }
            column(SeaRangeC_57__Control1000000652; SeaRangeC[57])
            {

            }
            column(SeaRangeC_58__Control1000000653; SeaRangeC[58])
            {

            }
            column(SeaRangeC_59__Control1000000654; SeaRangeC[59])
            {

            }
            column(SeaRangeC_60__Control1000000655; SeaRangeC[60])
            {

            }
            column(SeaRangeC_61__Control1000000656; SeaRangeC[61])
            {

            }
            column(SeaRangeC_62__Control1000000657; SeaRangeC[62])
            {

            }
            column(SeaRangeC_63__Control1000000658; SeaRangeC[63])
            {

            }
            column(SeaRangeC_64__Control1000000659; SeaRangeC[64])
            {

            }
            column(SeaRangeC_65__Control1000000660; SeaRangeC[65])
            {

            }
            column(SeaRangeC_66__Control1000000661; SeaRangeC[66])
            {

            }
            column(SeaRangeC_67__Control1000000662; SeaRangeC[67])
            {

            }
            column(SeaRangeC_68__Control1000000663; SeaRangeC[68])
            {

            }
            column(SeaRangeC_69__Control1000000664; SeaRangeC[69])
            {

            }
            column(SeaRangeC_70__Control1000000665; SeaRangeC[70])
            {

            }
            column(SeaRangeC_71__Control1000000666; SeaRangeC[71])
            {

            }
            column(SeaRangeC_72__Control1000000667; SeaRangeC[72])
            {

            }
            column(SeaRangeC_73__Control1000000668; SeaRangeC[73])
            {

            }
            column(SeaRangeC_74__Control1000000669; SeaRangeC[74])
            {

            }
            column(SeaRangeC_75__Control1000000670; SeaRangeC[75])
            {

            }
            column(SeaRangeC_76__Control1000000671; SeaRangeC[76])
            {

            }
            column(SeaRangeC_77__Control1000000672; SeaRangeC[77])
            {

            }
            column(SeaRangeC_78__Control1000000673; SeaRangeC[78])
            {

            }
            column(SeaRangeC_79__Control1000000674; SeaRangeC[79])
            {

            }
            column(SeaRangeC_80__Control1000000675; SeaRangeC[80])
            {

            }
            column(SeaRangeC_81__Control1000000676; SeaRangeC[81])
            {

            }
            column(SeaRangeC_82__Control1000000677; SeaRangeC[82])
            {

            }
            column(SeaRangeC_83__Control1000000678; SeaRangeC[83])
            {

            }
            column(SeaRangeC_84__Control1000000679; SeaRangeC[84])
            {

            }
            column(SeaRangeC_85__Control1000000680; SeaRangeC[85])
            {

            }
            column(SeaRangeC_86__Control1000000681; SeaRangeC[86])
            {

            }
            column(SeaRangeC_87__Control1000000682; SeaRangeC[87])
            {

            }
            column(SeaRangeC_88__Control1000000683; SeaRangeC[88])
            {

            }
            column(SeaRangeC_89__Control1000000684; SeaRangeC[89])
            {

            }
            column(SeaRangeC_90__Control1000000685; SeaRangeC[90])
            {

            }
            column(SeaRangeC_91__Control1000000686; SeaRangeC[91])
            {

            }
            column(SeaRangeC_92__Control1000000687; SeaRangeC[92])
            {

            }
            column(SeaRangeC_93__Control1000000688; SeaRangeC[93])
            {

            }
            column(SeaRangeC_94__Control1000000689; SeaRangeC[94])
            {

            }
            column(SeaRangeC_95__Control1000000690; SeaRangeC[95])
            {

            }
            column(SeaRangeC_96__Control1000000691; SeaRangeC[96])
            {

            }
            column(SeaRangeC_97__Control1000000692; SeaRangeC[97])
            {

            }
            column(SeaRangeC_98__Control1000000693; SeaRangeC[98])
            {

            }
            column(SeaRangeC_99__Control1000000694; SeaRangeC[99])
            {

            }
            column(SeaRangeC_100__Control1000000695; SeaRangeC[100])
            {

            }
            column(Inventory_Posting_Group__Inventory_total1_Caption; FieldCaption("Inventory total1"))
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group_Description_Control1000000107Caption; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group__Inventory_total1_Caption_Control1000000160; FieldCaption("Inventory total1"))
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption_Control1000000161; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption_Control1000000164; FieldCaption(Inventory))
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

            trigger OnAfterGetRecord()
            begin

                level := TotLoc;
                while level > 0 do begin
                    SetFilter("Location Filter", SeaRange[level]);
                    CalcFields(Inventory, "Inventory total1");
                    SeaRangeC[level] := Inventory;
                    SeaRangeC[level] := "Inventory total1";
                    CurrReport.CreateTotals(SeaRangeC[level]);
                    // IF (SearangeD[level]=0) AND (SeaRangeC[level]=0) THEN
                    level := level - 1;
                end;
                //Show Inventory for all location by releasing location filter
                SetRange("Location Filter");
                CalcFields(Inventory, "Inventory total1");
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Category);

                //AAA - Aug 2002
                locate2.SetRange(locate2."Location Type", 1);
                locate2.SetFilter(locate2."date filter", '%1', GetRangeMax("Date Filter"));
                if locate2.Find('-') then
                    repeat
                        locate2.CalcFields(locate2."Voyage Sea Days");
                        locate2.VSDVal := locate2."Voyage Sea Days";
                        locate2.Modify();
                    until locate2.Next = 0;

                //AAA - June 2002
                locate.SetRange(locate."Location Type", 1);
                TotLoc := locate.Count;

                locate.CalcFields(locate."Voyage Sea Days");
                locate.SetCurrentKey(locate.VSDVal);
                locate.Ascending(false);

                Countx := 1;
                if locate.Find('-') then
                    repeat
                        if locate.VSDVal <> 0 then begin
                            SeaRange[Countx] := locate.Code;
                            SeaRangeD[Countx] := locate.VSDVal;     //Sea Day Assigned
                            Countx := Countx + 1;
                        end;
                    until locate.Next = 0;
                TotLoc := Countx - 1;
                //MESSAGE(' %1',TotLoc);
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
        "----------------": Integer;
        locate: Record Location;
        locate2: Record Location;
        Countx: Integer;
        level: Integer;
        LocGroup: Integer;
        TotLoc: Integer;
        SeaRangeC: array[100] of Decimal;
        T001: Text[80];
        SeaRange: array[100] of Text[30];
        SeaRangeD: array[100] of Decimal;
        Cat: Code[15];
        job1: Record Job;
        Nocatch: Boolean;
        T001CaptionLbl: Label 'Statistics Group';
        CatCaptionLbl: Label 'Category';
}

