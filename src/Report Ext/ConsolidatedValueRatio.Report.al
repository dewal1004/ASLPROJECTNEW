report 50154 "Consolidated Value  & Ratio"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ConsolidatedValueRatio.rdlc';
    Permissions = TableData "Job Ledger Entry" = rimd,
                  TableData "Value Entry" = rimd;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Jobss; Job)
        {
            DataItemTableView = SORTING("Ending Date") WHERE("Voyage Ended" = CONST(true));
            column(No_Jobss; Jobss."No.")
            {
            }
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
            column(GETFILTERS__; GetFilters())
            {
            }
            column(Text18; Text18)
            {
            }
            column(Text27; Text27)
            {

            }
            column(Text26; Text26)
            {

            }
            column(Text25; Text25)
            {

            }
            column(Text24; Text24)
            {

            }
            column(Text23; Text23)
            {
            }
            column(Text22; Text22)
            {
            }
            column(Text21; Text21)
            {
            }
            column(Jobss_Vessel; Vessel)
            {
            }
            column(PntStor_7_; PntStor[7])
            {
            }
            column(PntStor_6_; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5_; PntStor[5])
            {
            }
            column(PntStor_4_; PntStor[4])
            {
            }
            column(PntStor_3_; PntStor[3])
            {
            }
            column(PntStor_2_; PntStor[2])
            {
            }
            column(PntStor_1_; PntStor[1])
            {
            }
            column(PortDay; PortDay)
            {

            }
            column(LostDay; LostDay)
            {

            }
            column(FishgDay; FishgDay)
            {

            }
            column(CycleDay; CycleDay)
            {

            }
            column(Jobss__Ending_Date_; "Ending Date")
            {
            }
            column(Jobss__Starting_Date_; "Starting Date")
            {
            }
            column(Jobss__No__; "No.")
            {
            }
            column(PntStor_7__Countrs; PntStor[7] / Countrs)
            {
            }
            column(PntStor_6__Control1000000233; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5__Control1000000234; PntStor[5])
            {
            }
            column(PntStor_4__Control1000000235; PntStor[4])
            {
            }
            column(PntStor_3__Control1000000236; PntStor[3])
            {
            }
            column(PntStor_2__Control1000000237; PntStor[2])
            {
            }
            column(PntStor_1__Control1000000238; PntStor[1])
            {
            }
            column(PortDay_Control1000000239; PortDay)
            {

            }
            column(LostDay_Control1000000240; LostDay)
            {

            }
            column(FishgDay_Control1000000241; FishgDay)
            {

            }
            column(CycleDay_Control1000000242; CycleDay)
            {

            }
            column(TotalFor___FIELDCAPTION_Vessel_; TotalFor + FieldCaption(Vessel))
            {
            }
            column(PntStor_7__Countrs_Control1000000221; PntStor[7] / Countrs)
            {
            }
            column(PntStor_6__Control1000000222; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5__Control1000000223; PntStor[5])
            {
            }
            column(PntStor_4__Control1000000224; PntStor[4])
            {
            }
            column(PntStor_3__Control1000000225; PntStor[3])
            {
            }
            column(PntStor_2__Control1000000226; PntStor[2])
            {
            }
            column(PntStor_1__Control1000000227; PntStor[1])
            {
            }
            column(PortDay_Control1000000228; PortDay)
            {

            }
            column(LostDay_Control1000000229; LostDay)
            {

            }
            column(FishgDay_Control1000000230; FishgDay)
            {

            }
            column(CycleDay_Control1000000231; CycleDay)
            {

            }
            column(Coutry_Name; Coutry.Name)
            {
            }
            column(Res_Name; Res.Name)
            {
            }
            column(Vess; Vess)
            {
            }
            column(PntStor_1__Control1000000190; PntStor[1])
            {
            }
            column(Text21_Control1000000191; Text21)
            {
            }
            column(PntStor_2__Control1000000192; PntStor[2])
            {
            }
            column(Text22_Control1000000193; Text22)
            {
            }
            column(GETFILTER__No___; GetFilter("No."))
            {
            }
            column(PntStor_3__Control1000000200; PntStor[3])
            {
            }
            column(Text23_Control1000000201; Text23)
            {
            }
            column(CycleDay_Control1000000202; CycleDay)
            {

            }
            column(PntStor_4__Control1000000204; PntStor[4])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text24_Control1000000205; Text24)
            {

            }
            column(FishgDay_Control1000000206; FishgDay)
            {

            }
            column(PntStor_5__Control1000000208; PntStor[5])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text25_Control1000000209; Text25)
            {

            }
            column(LostDay_Control1000000210; LostDay)
            {

            }
            column(PntStor_6__Control1000000212; PntStor[6])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text26_Control1000000213; Text26)
            {

            }
            column(PntStor_7__Countrs_Control1000000214; PntStor[7] / Countrs)
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text27_Control1000000215; Text27)
            {

            }
            column(PortDay_Control1000000216; PortDay)
            {

            }
            column(ETDCons; ETDCons)
            {
            }
            column(ETACons; ETACons)
            {
            }
            column(ValH_1_; ValH[1])
            {
            }
            column(RatH_1_; RatH[1])
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Control1000000167Caption; Control1000000167CaptionLbl)
            {
            }
            column(Control1000000168Caption; Control1000000168CaptionLbl)
            {
            }
            column(Control1000000169Caption; Control1000000169CaptionLbl)
            {
            }
            column(Control1000000170Caption; Control1000000170CaptionLbl)
            {
            }
            column(Control1000000171Caption; Control1000000171CaptionLbl)
            {
            }
            column(Control1000000172Caption; Control1000000172CaptionLbl)
            {
            }
            column(Control1000000173Caption; Control1000000173CaptionLbl)
            {
            }
            column(Jobss_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(GETFILTER__No___Caption; GETFILTER__No___CaptionLbl)
            {
            }
            column(CycleDay_Control1000000202Caption; CycleDay_Control1000000202CaptionLbl)
            {
            }
            column(FishgDay_Control1000000206Caption; FishgDay_Control1000000206CaptionLbl)
            {
            }
            column(LostDay_Control1000000210Caption; LostDay_Control1000000210CaptionLbl)
            {
            }
            column(PortDay_Control1000000216Caption; PortDay_Control1000000216CaptionLbl)
            {
            }
            column(ETDConsCaption; ETDConsCaptionLbl)
            {
            }
            column(ETAConsCaption; ETAConsCaptionLbl)
            {
            }
            column(Var___N_Caption; Var___N_CaptionLbl)
            {
            }
            column(Bud___N_Caption; Bud___N_CaptionLbl)
            {
            }
            column(Bud___Caption; Bud___CaptionLbl)
            {
            }
            column(Bud__Qty_Caption; Bud__Qty_CaptionLbl)
            {
            }
            column(RateCaption; RateCaptionLbl)
            {
            }
            column(N_Caption; N_CaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Mark(true);
                if (not Mark(true)) then Error('Not Marked');
                ;

                if Res.Get("Person Responsible") then;
                ETD := "Starting Date";
                ETA := "Ending Date";
                if (ETD <> 0D) and (ETD < ETDCons) then ETDCons := ETD;
                if (ETA <> 0D) and (ETA > ETACons) then ETACons := ETA;

                //Cycle Day
                Job2.Get("No.");
                Job2.SetCurrentKey(Job2.Vessel, Job2."Starting Date");
                Job2.SetRange(Job2.Vessel, Vessel);    //Find last voyage
                if Job2.Next(-1) <> 0 then
                    ETA2 := Job2."Ending Date"
                else begin
                    if Loc.Get(Vessel) then ETA2 := Loc."Begining ETA" else ETA2 := 0D;
                end;

                if "Cycle Day (Manual)" <> 0 then
                    CycleDay := "Cycle Day (Manual)"
                else
                    CycleDay := ETA - ETA2;

                CalcFields("Lost Days");
                if "Lost At Sea (Manual)" <> 0 then
                    LostDay := "Lost At Sea (Manual)"
                else
                    LostDay := "Lost Days";

                if "Fishing Day (Manual)" <> 0 then
                    FishgDay := "Fishing Day (Manual)"
                else
                    FishgDay := "Sea Days" - LostDay;

                if "Port Day (Manual)" <> 0 then
                    PortDay := "Port Day (Manual)"
                else
                    PortDay := CycleDay - (FishgDay + LostDay);
                SeaDay := FishgDay + LostDay;

                //Find Total Tonnage of Export
                //SETFILTER(" No",'SHR'); #1
                CalcFields("Product Quantity", "Points Actual");
                "Product Quantity" :=
                  ProductQty("No.", GetFilter("Date Filter"), '', 'SHR', '');
                "Points Actual" :=
                  PointsActual("No.", GetFilter("Date Filter"), '', 'SHR', '');
                ExpTonnage := "Product Quantity" / 1000;
                PntStor[1] := "Points Actual";

                //SETFILTER("Task Filter",'');  #1
                //CALCFIELDS("Points Actual");
                "Points Actual" :=
                  PointsActual("No.", GetFilter("Date Filter"), '', '', '');
                PntStor[3] := "Points Actual";
                PntStor[2] := PntStor[3] - PntStor[1];

                if SeaDay <> 0 then begin
                    PntStor[4] := PntStor[1] / SeaDay;
                    PntStor[5] := PntStor[2] / SeaDay;
                    PntStor[6] := PntStor[3] / SeaDay;
                end;
                Validate("Net Incentive Actual");
                DataStor[3] := "Net Incentive Actual";


                a := 100;
                RateSetUp.SetRange(RateSetUp."Starting Date", 0D, Jobss."Ending Date");
                if RateSetUp.Find('+') then;

                //Calculate the Fixed Salaries
                JBudLn.SetRange(JBudLn."Job No.", "No.");
                if JBudLn.Find('-') then begin
                    JBudLn.CalcFields(JBudLn.Counter);
                    PeopleOnVoy := JBudLn.Counter;
                end
                else
                    PeopleOnVoy := "No. of Deck Hands" + 2;
                DataStor[4] := RateSetUp."Fixed Salary Rate" * CycleDay * (PeopleOnVoy);

                //Travelling Expenses for Expatriate
                expcnt := 0;
                repeat
                    Employee.SetCurrentKey(Employee."Resource No.");
                    Employee.SetRange(Employee."Resource No.", JBudLn."No.");
                    Employee.SetFilter(Employee."Country Code", '<>NG');
                    if Employee.Find('-') then expcnt := expcnt + 1;
                    ResCount := ResCount + 1;
                until JBudLn.Next() = 0;
                expcntTot := expcnt;
                DataStor[5] := RateSetUp."Travelling Expenses Rate" * expcnt * CycleDay;

                //License Fee
                if Coutry.Get("Fishing Country Code") then
                    DataStor[6] := Coutry."License Fees Rate" * CycleDay
                else begin
                    DataStor[6] := RateSetUp."License Fee Rate" * CycleDay;
                    Coutry.Name := 'Nigeria';
                end;
                if Loc.Get(Vessel) then begin
                    DataStor[7] := Loc."Insurance Rate" * CycleDay;
                    DataStor[13] := Loc."Depreciation Rate" * CycleDay;
                    DataStor[14] := Loc."Interest Rate" * CycleDay;
                    Vess := Loc.Name;
                end;

                DataStor[8] := RateSetUp.Clearing_Fwrd_NPA * ExpTonnage;
                DataStor[12] := RateSetUp."Shore Overheads" * CycleDay;

                //Credit from G/L Entry
                CountGPPG := 0;
                if ProdPostGrp.Find('-') then
                    repeat
                        CountGPPG := CountGPPG + 1;
                        "GLGPP Caption"[CountGPPG] := ProdPostGrp.Code;
                        GLEntry.SetCurrentKey(GLEntry."G/L Account No.", GLEntry."Job No.", GLEntry."Gen. Prod. Posting Group");
                        GLEntry.SetRange(GLEntry."G/L Account No.", JobSetUp."Job Val Begin Account", JobSetUp."Job Val End Account");
                        GLEntry.SetRange(GLEntry."Job No.", "No.");
                        GLEntry.SetRange(GLEntry."Gen. Prod. Posting Group", ProdPostGrp.Code);
                        if GLEntry.Find('-') then
                            repeat
                                GLStr[CountGPPG] := GLStr[CountGPPG] + GLEntry.Amount;
                            until GLEntry.Next() = 0;
                    until ProdPostGrp.Next() = 0;

                CurrExc.SetRange(CurrExc."Currency Code", 'USD');
                CurrExc.SetRange(CurrExc."Starting Date", 0D, ETA);
                if CurrExc.Find('+') then begin
                    CurrRate := CurrExc."Relational Exch. Rate Amount";
                    //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                end
                else
                    CurrRate := 1;
                PntStor[7] := CurrRate;
            end;

            trigger OnPostDataItem()
            begin
                if StrLen(VoyageFilter) > 1 then VoyageFilter := CopyStr(VoyageFilter, 1, StrLen(VoyageFilter) - 1);

                if ETDCons = "Period End" then ETDCons := "Period Start";
                if ETACons = "Period Start" then ETACons := "Period End";
            end;

            trigger OnPreDataItem()
            begin

                LastFieldNo := FieldNo(Vessel);
                SetRange("Ending Date", "Period Start", "Period End");
                SetFilter("Fishing Country Code", FC);
                SetFilter(Vessel, VesselSel);
                SetFilter("No.", JobsNo);
                SetFilter("Person Responsible", ResourceOn);

                CurrReport.CreateTotals(CycleDay, PortDay, LostDay, SeaDay, FishgDay);
                CurrReport.CreateTotals(PntStor[1], PntStor[2], PntStor[3], PntStor[4], PntStor[5], PntStor[6], PntStor[7]);
                CurrReport.CreateTotals(DataStor[3], DataStor[4], DataStor[5], DataStor[6], DataStor[7], DataStor[8], DataStor[9]);
                CurrReport.CreateTotals(DataStor[10], DataStor[11], DataStor[12], DataStor[13], DataStor[14], DataStor[15]);
                CurrReport.CreateTotals(TotDirExp, TotPrice);

                Countrs := Count;
                if Countrs = 0 then Countrs := 1;
                VoyageFilter := '';
                ETDCons := "Period End";
                ETACons := "Period Start";
            end;
        }
        dataitem(Jb; Job)
        {
            DataItemTableView = SORTING("Ending Date");
            column(Jb__No__; "No.")
            {
            }
            column(Jb__Search_Description_; "Search Description")
            {
            }
            column(Jb_Description; Description)
            {
            }
            column(Jb__Description_2_; "Description 2")
            {
            }
            column(Jb__Bill_to_Customer_No__; "Bill-to Customer No.")
            {
            }
            column(Jb__Creation_Date_; "Creation Date")
            {
            }
            column(Jb__No__Caption; FieldCaption("No."))
            {
            }
            column(Jb__Search_Description_Caption; FieldCaption("Search Description"))
            {
            }
            column(Jb_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Jb__Description_2_Caption; FieldCaption("Description 2"))
            {
            }
            column(Jb__Bill_to_Customer_No__Caption; FieldCaption("Bill-to Customer No."))
            {
            }
            column(Jb__Creation_Date_Caption; FieldCaption("Creation Date"))
            {
            }
            dataitem(JbLedMark; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                column(JbLedMark__Entry_No__; "Entry No.")
                {
                }
                column(JbLedMark__Job_No__; "Job No.")
                {
                }
                column(JbLedMark__Posting_Date_; "Posting Date")
                {
                }
                column(JbLedMark__Document_No__; "Document No.")
                {
                }
                column(JbLedMark_Type; Type)
                {
                }
                column(JbLedMark__Entry_No__Caption; FieldCaption("Entry No."))
                {
                }
                column(JbLedMark__Job_No__Caption; FieldCaption("Job No."))
                {
                }
                column(JbLedMark__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(JbLedMark__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(JbLedMark_TypeCaption; FieldCaption(Type))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Marked Rec" := true;
                    Modify;
                end;
            }

            trigger OnPreDataItem()
            begin

                Copy(Jobss);
                MarkedOnly(true);
            end;
        }
        dataitem(Location; Location)
        {
            DataItemTableView = SORTING(Code) WHERE("Location Type" = CONST(Vessel));
            column(COPYSTR_SeaVH_1__5_; CopyStr(SeaVH[1], 5))
            {
            }
            column(COPYSTR_SeaVH_2__5_; CopyStr(SeaVH[2], 5))
            {
            }
            column(COPYSTR_SeaVH_3__5_; CopyStr(SeaVH[3], 5))
            {
            }
            column(COPYSTR_SeaVH_4__5_; CopyStr(SeaVH[4], 5))
            {
            }
            column(COPYSTR_SeaVH_8__5_; CopyStr(SeaVH[8], 5))
            {
            }
            column(COPYSTR_SeaVH_7__5_; CopyStr(SeaVH[7], 5))
            {
            }
            column(COPYSTR_SeaVH_6__5_; CopyStr(SeaVH[6], 5))
            {
            }
            column(COPYSTR_SeaVH_5__5_; CopyStr(SeaVH[5], 5))
            {
            }
            column(COPYSTR_SeaVH_9__5_; CopyStr(SeaVH[9], 5))
            {
            }
            column(TotalFor; TotalFor)
            {
            }
            column(ValH_1__Control1000000048; ValH[1])
            {
            }
            column(RatH_1__Control1000000049; RatH[1])
            {
            }
            column(ValH_2_; ValH[2])
            {
            }
            column(RatH_2_; RatH[2])
            {
            }
            column(ValH_3_; ValH[3])
            {
            }
            column(RatH_3_; RatH[3])
            {
            }
            column(ValH_4_; ValH[4])
            {
            }
            column(RatH_4_; RatH[4])
            {
            }
            column(ValH_5_; ValH[5])
            {
            }
            column(RatH_5_; RatH[5])
            {
            }
            column(ValH_6_; ValH[6])
            {
            }
            column(RatH_6_; RatH[6])
            {
            }
            column(ValH_7_; ValH[7])
            {
            }
            column(RatH_7_; RatH[7])
            {
            }
            column(ValH_8_; ValH[8])
            {
            }
            column(RatH_8_; RatH[8])
            {
            }
            column(ValH_9_; ValH[9])
            {
            }
            column(RatH_9_; RatH[9])
            {
            }
            column(SeaR_9_; SeaR[9])
            {
            }
            column(SeaV_9_; SeaV[9])
            {

            }
            column(SeaR_8_; SeaR[8])
            {
            }
            column(SeaV_8_; SeaV[8])
            {

            }
            column(SeaR_7_; SeaR[7])
            {
            }
            column(SeaV_7_; SeaV[7])
            {

            }
            column(SeaR_6_; SeaR[6])
            {
            }
            column(SeaV_6_; SeaV[6])
            {

            }
            column(SeaR_5_; SeaR[5])
            {
            }
            column(SeaV_5_; SeaV[5])
            {

            }
            column(SeaR_4_; SeaR[4])
            {
            }
            column(SeaV_4_; SeaV[4])
            {

            }
            column(SeaR_3_; SeaR[3])
            {
            }
            column(SeaV_3_; SeaV[3])
            {

            }
            column(SeaR_2_; SeaR[2])
            {
            }
            column(SeaV_2_; SeaV[2])
            {

            }
            column(SeaR_1_; SeaR[1])
            {
            }
            column(SeaV_1_; SeaV[1])
            {

            }
            column(TotVR_3_; TotVR[3])
            {
            }
            column(TotVR_1_; TotVR[1])
            {

            }
            column(TotVR_2_; TotVR[2])
            {

            }
            column(ValueCaption; ValueCaptionLbl)
            {
            }
            column(RatioCaption; RatioCaptionLbl)
            {
            }
            column(PointsCaption; PointsCaptionLbl)
            {
            }
            column(Location_Code; Code)
            {
            }
            dataitem("Sea Food categories"; "Sea Food categories")
            {
                DataItemTableView = SORTING("Sea food code");
                column(Sea_Food_categories__Sea_food_code_; "Sea food code")
                {
                }
                column(COPYSTR___Sea_food_code__5_; CopyStr("Sea food code", 5))
                {
                }
                column(A1_3_; A1[3])
                {
                }
                column(A1_2_; A1[2])
                {
                }
                column(A1_1_; A1[1])
                {
                }
                column(A1_4__1000; A1[4] * 1000)
                {
                }
                column(A2_4_; A2[4])
                {
                }
                column(A2_1_; A2[1])
                {
                }
                column(A2_2_; A2[2])
                {
                }
                column(A2_3_; A2[3])
                {
                }
                column(NairaVal2X_NairaValBX; NairaVal2X - NairaValBX)
                {
                }
                column(NairaValBX; NairaValBX)
                {
                }
                column(PrdPrcBX; PrdPrcBX)
                {
                }
                column(QtyBX; QtyBX)
                {
                }
                column(NairaVal2X; NairaVal2X)
                {
                }
                column(PrdPrc2X; PrdPrc2X)
                {
                }
                column(QtyX; QtyX)
                {
                }
                column(TotalForX; TotalForX)
                {
                }
                column(TotalFor_Control1000000133; TotalFor)
                {
                }
                column(Qty; Qty)
                {
                }
                column(PrdPrc2; PrdPrc2)
                {
                }
                column(NairaVal2; NairaVal2)
                {
                }
                column(QtyB; QtyB)
                {
                }
                column(PrdPrcB; PrdPrcB)
                {
                }
                column(NairaValB; NairaValB)
                {
                }
                column(NairaVal2_NairaValB; NairaVal2 - NairaValB)
                {
                }
                column(NairaVal2_NairaValB___NairaVal2X_NairaValBX_; (NairaVal2 - NairaValB) - (NairaVal2X - NairaValBX))
                {
                }
                column(NairaValB_NairaValBX; NairaValB - NairaValBX)
                {
                }
                column(PrdPrcB_PrdPrcBX; PrdPrcB - PrdPrcBX)
                {
                }
                column(QtyB_QtyBX; QtyB - QtyBX)
                {
                }
                column(NairaVal2_NairaVal2X; NairaVal2 - NairaVal2X)
                {
                }
                column(PrdPrc2_PrdPrc2X; PrdPrc2 - PrdPrc2X)
                {
                }
                column(Qty_QtyX; Qty - QtyX)
                {
                }
                column(TotalFory; TotalFory)
                {
                }
                column(SeaP_4_; SeaP[4])
                {
                }
                column(SeaP_3_; SeaP[3])
                {
                }
                column(SeaP_2_; SeaP[2])
                {
                }
                column(SeaP_1_; SeaP[1])
                {
                }
                column(SeaR_4__Control1000000036; SeaR[4])
                {
                }
                column(SeaR_3__Control1000000037; SeaR[3])
                {
                }
                column(SeaR_2__Control1000000038; SeaR[2])
                {
                }
                column(SeaR_1__Control1000000039; SeaR[1])
                {
                }
                column(SeaV_1__Control1000000035; SeaV[1])
                {
                }
                column(SeaV_2__Control1000000034; SeaV[2])
                {
                }
                column(SeaV_3__Control1000000033; SeaV[3])
                {
                }
                column(SeaV_4__Control1000000025; SeaV[4])
                {
                }
                column(SeaV_1__Control1000000041; SeaV[1])
                {

                }
                column(SeaV_2__Control1000000042; SeaV[2])
                {

                }
                column(SeaV_3__Control1000000043; SeaV[3])
                {

                }
                column(SeaV_4__Control1000000047; SeaV[4])
                {

                }
                column(SeaR_2__Control1000000050; SeaR[2])
                {
                }
                column(SeaR_1__Control1000000051; SeaR[1])
                {
                }
                column(SeaR_3__Control1000000053; SeaR[3])
                {
                }
                column(SeaR_4__Control1000000055; SeaR[4])
                {
                }
                column(Location_Code_Control1000000044; Location.Code)
                {
                }
                column(SeaR_8__Control1000000099; SeaR[8])
                {
                }
                column(SeaV_8__Control1000000100; SeaV[8])
                {

                }
                column(SeaR_7__Control1000000110; SeaR[7])
                {
                }
                column(SeaV_7__Control1000000111; SeaV[7])
                {

                }
                column(SeaR_6__Control1000000112; SeaR[6])
                {
                }
                column(SeaV_6__Control1000000113; SeaV[6])
                {

                }
                column(SeaR_5__Control1000000114; SeaR[5])
                {
                }
                column(SeaV_5__Control1000000115; SeaV[5])
                {

                }
                column(SeaR_9__Control1000000093; SeaR[9])
                {
                }
                column(SeaV_9__Control1000000094; SeaV[9])
                {

                }
                column(TotVR_1__Control1000000154; TotVR[1])
                {

                }
                column(TotVR_3__Control1000000195; TotVR[3])
                {
                }
                column(TotVR_2__Control1000000268; TotVR[2])
                {

                }
                column(Sea_Food_categories__Sea_food_code_Caption; FieldCaption("Sea food code"))
                {
                }
                dataitem("Job Ledger Entry Rep"; "Job Ledger Entry")
                {
                    DataItemLink = GroupSort = FIELD("Sea food code");
                    column(Job_Ledger_Entry_Rep_GroupSort; GroupSort)
                    {
                    }
                    column(Job_Ledger_Entry_Rep__No__; "No.")
                    {
                    }
                    column(NairaVal2_Control1000000066; NairaVal2)
                    {
                    }
                    column(PrdPrc2_Control1000000067; PrdPrc2)
                    {
                    }
                    column(Qty_Control1000000068; Qty)
                    {
                    }
                    column(Job_Ledger_Entry_Rep_GroupSort_Control1000000069; GroupSort)
                    {
                    }
                    column(NairaVal2_Control1000000071; NairaVal2)
                    {
                    }
                    column(PrdPrc2_Control1000000072; PrdPrc2)
                    {
                    }
                    column(Qty_Control1000000073; Qty)
                    {
                    }
                    column(COPYSTR_GroupSort_5_; CopyStr(GroupSort, 5))
                    {
                    }
                    column(NairaVal2_Control1000000075; NairaVal2)
                    {
                    }
                    column(PrdPrc2_Control1000000076; PrdPrc2)
                    {
                    }
                    column(Qty_Control1000000077; Qty)
                    {
                    }
                    column(TotalFor_Control1000000078; TotalFor)
                    {
                    }
                    column(Job_Ledger_Entry_Rep_Entry_No_; "Entry No.")
                    {
                    }
                    column(Job_Ledger_Entry_Rep_Job_No_; "Job No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Qty := Quantity * -1;
                        PrdPrc := Qty * GetItPrice("Job No.", "No.", "Posting Date");
                    end;

                    trigger OnPreDataItem()
                    begin

                        LastFieldNo := FieldNo(GroupSort);
                        SetRange("Source Code", Location.Code);
                        CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                    end;
                }

                trigger OnAfterGetRecord()
                begin

                    A1[1] := 0;
                    A1[2] := 0;
                    A1[3] := 0;
                    A1[4] := 0;
                    A2[1] := 0;
                    A2[2] := 0;
                    A2[3] := 0;
                    A2[4] := 0;
                end;

                trigger OnPreDataItem()
                begin

                    CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                    Countx := 1;
                    repeat CurrReport.CreateTotals(SeaR[Countx]); Countx := Countx + 1; until Countx = 100;
                    CurrReport.CreateTotals(TotVR[1], TotVR[2], TotVR[3]);
                end;
            }

            trigger OnPreDataItem()
            begin

                SeaCdList;
                Countx := 1;
                repeat CurrReport.CreateTotals(SeaV[Countx], SeaP[Countx]); Countx := Countx + 1; until Countx = 100;
                CurrReport.CreateTotals(TotVR[1], TotVR[2]);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control2)
                {
                    ShowCaption = false;
                    field(FlagPriceError; "---")
                    {
                        ApplicationArea = All;
                    }
                    field("<Control1000000008>"; "Period Start")
                    {
                        ApplicationArea = All;
                    }
                    field("Period End"; "Period End")
                    {
                        ApplicationArea = All;
                    }
                    field(VesselSel; VesselSel)
                    {
                        ApplicationArea = All;
                    }
                    field(FishingCount; FishingCount)
                    {
                        ApplicationArea = All;
                    }
                    field(JobsNo; JobsNo)
                    {
                        ApplicationArea = All;
                    }
                    field(ResourceOn; ResourceOn)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        JobSetUp.Get;
    end;

    trigger OnPreReport()
    begin

        "Job led".SetCurrentKey("Job led".GroupSort, "Job led"."Location Code", "Job led"."Gen. Prod. Posting Group", "Job led"."Marked Rec")
        ;
        "Job led".SetRange("Job led"."Marked Rec", true);
        "Job led".ModifyAll("Job led"."Marked Rec", false);
        "job cath".SetCurrentKey("job cath".GroupSort, "job cath"."Marked Rec");
        "job cath".SetRange("job cath"."Marked Rec", true);
        "job cath".ModifyAll("job cath"."Marked Rec", false);
        "Val Ent".SetCurrentKey("Val Ent"."Gen. Prod. Posting Group", "Val Ent"."Document No.", "Val Ent"."Marked Rec");
        "Val Ent".SetRange("Val Ent"."Marked Rec", true);
        "Val Ent".ModifyAll("Val Ent"."Marked Rec", false);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total';
        "---": Integer;
        Job: Record Job;
        Job2: Record Job;
        JobRange: Record Job;
        JobETA: Record Job;
        Itempr: Record "Sales Price";
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobLedgerGrpSort: Record "Job Ledger Entry";
        JobSetUp: Record "Jobs Setup";
        RateSetUp: Record "P & L Rates";
        JBudLn: Record "Job Planning Line";
        Employee: Record Employee;
        Loc: Record Location;
        Coutry: Record "Country/Region";
        GLEntry: Record "G/L Entry";
        Res: Record Resource;
        "Job led": Record "Job Ledger Entry";
        "job cath": Record "Job catch Default";
        "Val Ent": Record "Value Entry";
        SF: Record "Sea Food categories";
        Prc: Decimal;
        PrcB: Decimal;
        PrdPrc: Decimal;
        PrdPrcB: Decimal;
        PrdPrc2: Decimal;
        PrdPrcBX: Decimal;
        PrdPrc2X: Decimal;
        PrdPrc2B: Decimal;
        CurrRate: Decimal;
        NairaVal: Decimal;
        NairaValB: Decimal;
        NairaValBX: Decimal;
        NairaVal2: Decimal;
        NairaVal2X: Decimal;
        NairaVal2B: Decimal;
        Qty: Decimal;
        QtyB: Decimal;
        QtyX: Decimal;
        QtyBX: Decimal;
        GPPGDesc: Text[30];
        DataStor: array[15] of Decimal;
        TotalForX: Label 'Total Exports';
        TotalFory: Label 'Total Local';
        Text03: Label 'Catch Incentive';
        Text04: Label 'Salaries & Wages';
        Text05: Label 'Travelling Expenses';
        Text06: Label 'License Fees';
        Text07: Label 'Insurance';
        Text08: Label 'Clearing & FWRD. & NPA';
        Text09: Label 'Total Direct Expenses';
        PntStor: array[8] of Decimal;
        ETD: Date;
        ETA: Date;
        ETDCons: Date;
        ETACons: Date;
        ETA2: Date;
        CycleDay: Decimal;
        PortDay: Decimal;
        LostDay: Decimal;
        SeaDay: Decimal;
        FishgDay: Decimal;
        a: Decimal;
        expcnt: Integer;
        expcntTot: Integer;
        PeopleOnVoy: Integer;
        ResCount: Integer;
        Text10: Label 'Gross Margin';
        Text11: Label '% Of Revenue';
        Text12: Label 'Shore Overheads';
        Text13: Label 'Depreciation';
        Text14: Label 'Interest';
        Text15: Label 'Net Profit';
        Text17: Label 'Total Indirect Expenses';
        TotDirExp: Decimal;
        TotIndirExp: Decimal;
        GrossMarg: Decimal;
        GrossPerct: Decimal;
        NetProfPerct: Decimal;
        TotPrice: Decimal;
        NetProfit: Decimal;
        ExpTonnage: Decimal;
        Vess: Text[30];
        Text18: Label 'Voyage Value & Ratio by Vessel';
        Text21: Label 'Shrimp Points';
        Text22: Label 'Fish Points';
        Text23: Label 'Total Points';
        Text24: Label 'Avg. Shrimp Points';
        Text25: Label 'Avg. Fish Points';
        Text26: Label 'Avg. Total Points';
        Text27: Label 'Exchange Rate';
        A1: array[5] of Decimal;
        A2: array[5] of Decimal;
        UOM: Record "Unit of Measure";
        UOMCd: Code[10];
        ItemVar: Code[10];
        "No.B": Code[10];
        NOrder: Decimal;
        ValRate: Decimal;
        ValQty: Decimal;
        GLStr: array[25] of Decimal;
        "GLGPP Caption": array[25] of Code[10];
        CountGPPG: Integer;
        CountG: Integer;
        Flag: Boolean;
        "----": Integer;
        "Period Start": Date;
        "Period End": Date;
        FishingCount: Code[30];
        FC: Code[10];
        VesselSel: Code[25];
        JobsNo: Code[250];
        ResourceOn: Code[30];
        VoyageFilter: Code[1024];
        Countrs: Integer;
        Countx: Integer;
        TotSF: Integer;
        SeaVH: array[100] of Code[20];
        SeaV: array[100] of Decimal;
        SeaP: array[100] of Decimal;
        SeaR: array[100] of Decimal;
        TotVR: array[3] of Decimal;
        ValH: array[100] of Text[30];
        RatH: array[100] of Text[30];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Control1000000167CaptionLbl: Label 'Label1000000167';
        Control1000000168CaptionLbl: Label 'Label1000000168';
        Control1000000169CaptionLbl: Label 'Label1000000169';
        Control1000000170CaptionLbl: Label 'Label1000000170';
        Control1000000171CaptionLbl: Label 'Label1000000171';
        Control1000000172CaptionLbl: Label 'Label1000000172';
        Control1000000173CaptionLbl: Label 'Label1000000173';
        GETFILTER__No___CaptionLbl: Label 'Job Filter:';
        CycleDay_Control1000000202CaptionLbl: Label 'Cycle Day';
        FishgDay_Control1000000206CaptionLbl: Label 'Fishing Day';
        LostDay_Control1000000210CaptionLbl: Label 'Lost At Sea';
        PortDay_Control1000000216CaptionLbl: Label 'Port Day';
        ETDConsCaptionLbl: Label 'ETD';
        ETAConsCaptionLbl: Label 'ETA';
        Var___N_CaptionLbl: Label 'Var. =N=';
        Bud___N_CaptionLbl: Label 'Bud. =N=';
        Bud___CaptionLbl: Label 'Bud. $';
        Bud__Qty_CaptionLbl: Label 'Bud. Qty.';
        RateCaptionLbl: Label 'Rate';
        N_CaptionLbl: Label '=N=';
        EmptyStringCaptionLbl: Label '$';
        QuantityCaptionLbl: Label 'Quantity';
        ValueCaptionLbl: Label 'Value';
        RatioCaptionLbl: Label 'Ratio';
        PointsCaptionLbl: Label 'Points';

    [Scope('OnPrem')]
    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        ItemVar := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);    //Requip Code Name
        "No.B" := ItemVar;
    end;

    [Scope('OnPrem')]
    procedure GetItPrice(JNos: Code[20]; Nos: Code[20]; PDays: Date): Decimal
    var
        Job3: Record Job;
    begin
        if Job3.Get(JNos) then;
        Itempr.SetRange(Itempr."Item No.", Nos);
        Itempr.SetRange(Itempr."Starting Date", 0D, PDays);
        //Itempr.SETRANGE(Itempr."Price Group Code",Job3."Price Group Code");
        if Itempr.Find('+') then
            Prc := Itempr."Unit Price" else begin
            //Itempr.SETRANGE(Itempr."Price Group Code",JobSetUp."Default Price Group Code");
            if Itempr.Find('+') then
                Prc := Itempr."Unit Price" else begin
                Prc := 0;
                if Flag then Message('Price Missing for Item %1', Nos);
            end;
        end;
        exit(Prc);
    end;

    [Scope('OnPrem')]
    procedure JBDate(var JbNos: Code[20]): Date
    var
        JobJob: Record Job;
    begin
        if JobJob.Get(JbNos) then exit(JobJob."Ending Date") else exit(0D);
    end;

    [Scope('OnPrem')]
    procedure BIN()
    begin
    end;

    [Scope('OnPrem')]
    procedure SeaCdList()
    begin
        Countx := 1;
        repeat
            ValH[Countx] := '';
            RatH[Countx] := '';
            Countx := Countx + 1;
        until Countx = 100;

        SF.SetRange(SF.Export, true);
        SF.Find('-');
        TotSF := SF.Count;

        Countx := 1;
        repeat
            SeaVH[Countx] := SF."Sea food code";//MESSAGE('I am %1',COPYSTR(SeaVH[Countx],5));
            ValH[Countx] := 'Value';
            RatH[Countx] := 'Ratio';
            Countx := Countx + 1;
        until SF.Next = 0;
    end;

    [Scope('OnPrem')]
    procedure GetSFVal(SFcat: Code[20]; Prc: Decimal; pnts: Decimal)
    begin
        Countx := 1;
        repeat
            case SFcat of
                SeaVH[Countx]:
                    begin
                        SeaV[Countx] := Prc; //MESSAGE('I am %1 with Value %2',SFcat,SeaV[Countx]);
                        SeaP[Countx] := Abs(pnts);
                        if SeaP[Countx] <> 0 then SeaR[Countx] := SeaV[Countx] / SeaP[Countx] else SeaR[Countx] := 0;
                    end;
            end;
            Countx := Countx + 1;
        until Countx = 20;
    end;

    [Scope('OnPrem')]
    procedure TotRatio()
    begin
        Countx := 1;
        repeat
            if SeaP[Countx] <> 0 then SeaR[Countx] := SeaV[Countx] / SeaP[Countx] else SeaR[Countx] := 0;
            Countx := Countx + 1;
        until Countx = 20;
    end;
}

