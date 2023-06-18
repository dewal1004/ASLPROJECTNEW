report 50027 "Voyage P &  L"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyagePL.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Voyage P &  L';
    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Gen. Prod. Posting Group", "Task Code", "Work Type Code", "No.") ORDER(Descending) WHERE("Gen. Prod. Posting Group" = CONST('FIS'));
            RequestFilterFields = "Job No.", "Gen. Prod. Posting Group", "Task Code", "Work Type Code", "No.";
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
            column(JobNo; JobNo)
            {
            }
            column(Price; Price)
            {
            }
            column(ETA; ETA)
            {
            }
            column(ETD; ETD)
            {
            }
            column(CycleDay; CycleDay)
            {
            }
            column(FishgDay; FishgDay)
            {
            }
            column(LostDay; LostDay)
            {
            }
            column(PortDay; PortDay)
            {
            }
            column(Vess; Vess)
            {
            }
            column(Text21; Text21)
            {
            }
            column(Text22; Text22)
            {
            }
            column(Text23; Text23)
            {
            }
            column(Text24; Text24)
            {
            }
            column(Text25; Text25)
            {
            }
            column(Text26; Text26)
            {
            }
            column(Text27; Text27)
            {
            }
            column(PntStor_1_s; PntStor[1])
            {
            }
            column(PntStor_2_; PntStor[2])
            {
            }
            column(PntStor_3_; PntStor[3])
            {
            }
            column(PntStor_4_; PntStor[4])
            {
                DecimalPlaces = 0 : 2;
            }
            column(PntStor_5_; PntStor[5])
            {
                DecimalPlaces = 0 : 2;
            }
            column(PntStor_6_; PntStor[6])
            {
                DecimalPlaces = 0 : 2;
            }
            column(PntStor_7_; PntStor[7])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Coutry_Name; Coutry.Name)
            {
            }
            column(Res_Name; Res.Name)
            {
            }
            column(Loc__Vessel_Endurance_; Loc."Vessel Endurance")
            {
            }
            column(NairaValue; NairaValue)
            {
            }
            column(ProductPrice; ProductPrice)
            {
            }
            column(Qty; Qty)
            {
            }
            column(ItemNo; "Job Ledger Entry"."No.")
            {
            }
            column(Item_Description; Item.Description)
            {
            }
            column(BNairaValue; BNairaValue)
            {
            }
            column(BProductPrice; BProductPrice)
            {
            }
            column(BQty; BQty)
            {
            }
            column(NairaValue_BNairaValue; NairaValue - BNairaValue)
            {
            }
            column(Job_Ledger_Entry__Work_Type_Code_; "Work Type Code")
            {
            }
            column(NairaValue_Control1000000061; NairaValue)
            {
            }
            column(ProductPrice_Control1000000062; ProductPrice)
            {
            }
            column(Qty_Control1000000063; Qty)
            {
            }
            column(BNairaValue2; BNairaValue2)
            {
            }
            column(BProductPrice2; BProductPrice2)
            {
            }
            column(BQty2; BQty2)
            {
            }
            column(NairaValue_BNairaValue2; NairaValue - BNairaValue2)
            {
            }
            column(ExportPriceN; ExportPriceN)
            {
            }
            column(ExportPrice; ExportPrice)
            {
            }
            column(ExportQty; ExportQty)
            {
            }
            column(Qty_ExportQty; Qty - ExportQty)
            {
            }
            column(ProductPrice_ExportPrice; ProductPrice - ExportPrice)
            {
            }
            column(NairaValue_ExportPriceN; NairaValue - ExportPriceN)
            {
            }
            column(NairaValue_Control1000000075; NairaValue)
            {
            }
            column(ProductPrice_Control1000000076; ProductPrice)
            {
            }
            column("Var"; VariTen)
            {
            }
            column(Qty_Control1000000077; Qty)
            {
            }
            column(BExportPriceN; BExportPriceN)
            {
            }
            column(BExportPrice; BExportPrice)
            {
            }
            column(BExportQty; BExportQty)
            {
            }
            column(BQtyTot_BExportQty; BQtyTot - BExportQty)
            {
            }
            column(BProductPriceTot_BExportPrice; BProductPriceTot - BExportPrice)
            {
            }
            column(BNairaValueTot_BExportPriceN; BNairaValueTot - BExportPriceN)
            {
            }
            column(BNairaValueTot; BNairaValueTot)
            {
            }
            column(BProductPriceTot; BProductPriceTot)
            {
            }
            column(BQtyTot; BQtyTot)
            {
            }
            column(ExportPriceN_BExportPriceN; ExportPriceN - BExportPriceN)
            {
            }
            column(NairaValue_ExportPriceN___BNairaValueTot_BExportPriceN_; (NairaValue - ExportPriceN) - (BNairaValueTot - BExportPriceN))
            {
            }
            column(NairaValue_BNairaValueTot; NairaValue - BNairaValueTot)
            {
            }
            column(Voyage_P_and_LCaption; Voyage_P_and_LCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(JobNoCaption; JobNoCaptionLbl)
            {
            }
            column(ETACaption; ETACaptionLbl)
            {
            }
            column(ETDCaption; ETDCaptionLbl)
            {
            }
            column(CycleDayCaption; CycleDayCaptionLbl)
            {
            }
            column(FishgDayCaption; FishgDayCaptionLbl)
            {
            }
            column(LostDayCaption; LostDayCaptionLbl)
            {
            }
            column(PortDayCaption; PortDayCaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(N_Caption; N_CaptionLbl)
            {
            }
            column(RateCaption; RateCaptionLbl)
            {
            }
            column(Bud__Qty_Caption; Bud__Qty_CaptionLbl)
            {
            }
            column(Bud___Caption; Bud___CaptionLbl)
            {
            }
            column(Bud___N_Caption; Bud___N_CaptionLbl)
            {
            }
            column(Var___N_Caption; Var___N_CaptionLbl)
            {
            }
            column(Var___N_Caption_Control1000000009; Var___N_Caption_Control1000000009Lbl)
            {
            }
            column(Bud___N_Caption_Control1000000050; Bud___N_Caption_Control1000000050Lbl)
            {
            }
            column(Bud___Caption_Control1000000051; Bud___Caption_Control1000000051Lbl)
            {
            }
            column(Bud__Qty_Caption_Control1000000052; Bud__Qty_Caption_Control1000000052Lbl)
            {
            }
            column(RateCaption_Control1000000057; RateCaption_Control1000000057Lbl)
            {
            }
            column(N_Caption_Control1000000058; N_Caption_Control1000000058Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000059; EmptyStringCaption_Control1000000059Lbl)
            {
            }
            column(QuantityCaption_Control1000000060; QuantityCaption_Control1000000060Lbl)
            {
            }
            column(Total_ExportsCaption; Total_ExportsCaptionLbl)
            {
            }
            column(Total_LocalCaption; Total_LocalCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
            column(Job_Ledger_Entry_Job_No_; "Job No.")
            {
            }
            column(Job_Ledger_Entry_Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
            {
            }
            column(Job_Ledger_Task_Code; "Job Ledger Entry"."Task Code")
            {
            }
            column(BItemNo; BItemNo)
            {
            }
            column(BItemNo12; "Job catch Default"."Item No.")
            {
            }
            column(Job_Ledger_Entry_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            var
                CatchDefault1: Record "Job catch Default";
            begin
                /*
                IF ("Job Ledger Entry"."Work Type Code" = 'WHO')
                  OR  ("Job Ledger Entry"."Work Type Code" = 'WT')
                    OR ("Job Ledger Entry"."Work Type Code" = 'NEW') OR ("Job Ledger Entry"."Work Type Code" = 'BHO')
                    OR ("Job Ledger Entry"."Work Type Code" = 'HDL') OR ("Job Ledger Entry"."Work Type Code" = 'CUT')
                    OR ( "Job Ledger Entry"."Work Type Code" = 'CRAB')THEN BEGIN
                  TotQtyExp +="Job Ledger Entry".Quantity;
                  Exprice += ProductPrice;
                END;

                IF "Job Ledger Entry"."Work Type Code" = 'WT' THEN BEGIN
                  QTY2 +="Job Ledger Entry".Quantity;
                END;
                IF "Job Ledger Entry"."Work Type Code" = 'NEW' THEN BEGIN
                  QTY3 +="Job Ledger Entry".Quantity;
                END;

                IF "Job Ledger Entry"."Work Type Code" = 'BHO' THEN BEGIN
                  QTY4 +="Job Ledger Entry".Quantity;
                END;

                IF "Job Ledger Entry"."Work Type Code" = 'HDL' THEN BEGIN
                  QTY5 +="Job Ledger Entry".Quantity;
                END;
                IF "Job Ledger Entry"."Work Type Code" = 'CUT' THEN BEGIN
                  QTY6 +="Job Ledger Entry".Quantity;
                END;
                IF "Job Ledger Entry"."Work Type Code" = 'CRAB' THEN BEGIN
                  QTY7 +="Job Ledger Entry".Quantity;
                END;
                */
                //TotQtyExp := QTY1+QTY2+QTY3+QTY4+QTY5+QTY6+QTY7;
                /********************************************************************************************/
                if ("Job Ledger Entry"."Work Type Code" = 'SHR N BG') or ("Job Ledger Entry"."Work Type Code" = 'NET') then
                    TotQtyLoc += "Job Ledger Entry".Quantity;
                //TotQtyLoc +=
                QTY1 += "Job Ledger Entry".Quantity;
                TotQtyExp := QTY1 - TotQtyLoc;

                /*
                IF "Job Ledger Entry"."Work Type Code" = 'NET' THEN BEGIN
                  QTY9 +="Job Ledger Entry".Quantity;
                END;
                */
                //TotQtyLoc := QTY8 +QTY9;

                Location.Reset();
                Location.Get("Job Ledger Entry"."Location Code");
                if (Location."Location Type" <> Location."Location Type"::Vessel) then
                    CurrReport.Skip();
                if ("Job Ledger Entry"."Reason Code" <> 'CATCH') then
                    CurrReport.Skip();

                Item.SetCurrentKey("Gen. Prod. Posting Group");
                Item.SetRange(Item."No.", "Job Ledger Entry"."No.");
                Item.SetRange(Item."Gen. Prod. Posting Group", 'FIS');
                if not Item.FindFirst() then
                    CurrReport.Skip();

                Qty := Quantity * (-1);
                //ProductPrice := Qty * GetItPrice("Job No.","No.","Posting Date");
                Price := GetItPrice("Job No.", "No.", "Posting Date");

                begin
                    if Job.Get(JobNo) then;
                    ETD := Job."Starting Date";
                    ETA := Job."Ending Date";
                    if Res.Get(Job."Person Responsible") then;
                    //Cycle Day
                    Job2.Get(Job."No.");
                    Job2.SetRange(Job2.Vessel, Job.Vessel);    //Find last voyage
                    if Job2.Next(-1) <> 0 then
                        ETA2 := Job2."Ending Date"
                    else begin
                        Loc.Get(Job.Vessel);
                        ETA2 := Loc."Begining ETA";
                    end;
                    if Job."Cycle Day (Manual)" <> 0 then
                        CycleDay := Job."Cycle Day (Manual)"
                    else
                        if (ETA <> 0D) and (ETA2 <> 0D) and (ETA2 < ETA) then
                            CycleDay := ETA - ETA2;
                    Job.CalcFields(Job."Lost Days");
                    if Job."Lost At Sea (Manual)" <> 0 then
                        LostDay := Job."Lost At Sea (Manual)"
                    else
                        LostDay := Job."Lost Days";
                    if Job."Fishing Day (Manual)" <> 0 then
                        FishgDay := Job."Fishing Day (Manual)"
                    else
                        FishgDay := Job."Sea Days" - LostDay;
                    if Job."Port Day (Manual)" <> 0 then
                        PortDay := Job."Port Day (Manual)"
                    else
                        PortDay := CycleDay - (FishgDay + LostDay);
                    SeaDay := FishgDay + LostDay;

                    //Find Total Tonnage of Export
                    //Job.SETFILTER(Job."Task Filter",'SHR');
                    //Job.CALCFIELDS(Job."Product Quantity",Job.Points);
                    Job."Product Quantity" :=
                      Job.ProductQty(Job."No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                    Job.Points :=
                      Job.PointZ(Job."No.", '', Job.GetFilter("Date Filter"), '', 'SHR', '', Job.Vessel);
                    ExpTonnage := Job."Product Quantity" / 1000;
                    PntStor[1] := Job.Points;

                    // Job.SETFILTER(Job."Task Filter",'');
                    //Job.CALCFIELDS(Job.Points);
                    Job.Points :=
                      Job.PointZ(Job."No.", '', Job.GetFilter("Date Filter"), '', '', '', Job.Vessel);
                    PntStor[3] := Job.Points;
                    PntStor[2] := PntStor[3] - PntStor[1];

                    if SeaDay <> 0 then begin
                        PntStor[4] := PntStor[1] / SeaDay;
                        PntStor[5] := PntStor[2] / SeaDay;
                        PntStor[6] := PntStor[3] / SeaDay;
                    end;
                    Job.Validate(Job."Net Incentive");
                    Job.CalcFields(Job."Incentive (Hook Fish)", Job."Add/Ded. Crew");
                    DataStor[3] := Job."Net Incentive" + Job."Incentive (Hook Fish)" + Job."Add/Ded. Crew";

                    a := 100;
                    RateSetUp.SetRange(RateSetUp."Starting Date", 0D, Job."Ending Date");
                    if RateSetUp.Find('+') then;

                    //Calculate the Fixed Salaries
                    JBudLn.SetRange(JBudLn."Job No.", Job."No.");
                    if JBudLn.Find('-') then begin
                        JBudLn.CalcFields(JBudLn.Counter);
                        PeopleOnVoy := JBudLn.Counter;
                    end
                    else
                        PeopleOnVoy := Job."No. of Deck Hands" + 2;
                    //DataStor[4]:=RateSetUp."Fixed Salary Rate"*CycleDay*(PeopleOnVoy); //AAA Feb 2005

                    //Travelling Expenses for Expatriate
                    repeat
                        Employee.SetCurrentKey(Employee."Resource No.");
                        //  Employee.SETRANGE(Employee."Resource No.",JBudLn."No.");
                        Employee.SetFilter(Employee."Country Code", '<>NG');
                        if Employee.Find('-') then expcnt := expcnt + 1;
                        ResCount := ResCount + 1;
                    until JBudLn.Next() = 0;
                    //DataStor[5]:=RateSetUp."Travelling Expenses Rate"*expcnt*CycleDay; //AAA Feb 2005

                    //License Fee
                    if Coutry.Get(Job."Fishing Country Code") then
                        DataStor[6] := Coutry."License Fees Rate" * CycleDay
                    else begin
                        DataStor[6] := RateSetUp."License Fee Rate" * CycleDay;
                        Coutry.Name := 'Nigeria';
                    end;
                    if Loc.Get(Job.Vessel) then begin
                        DataStor[7] := Loc."Insurance Rate" * CycleDay;
                        DataStor[13] := Loc."Depreciation Rate" * CycleDay;
                        DataStor[14] := Loc."Interest Rate" * CycleDay;
                        Vess := Loc.Name;
                    end;

                    DataStor[8] := RateSetUp."Other Direct Cost" * CycleDay;
                    DataStor[12] := RateSetUp."Shore Overheads" * CycleDay;

                    //Credit from G/L Entry
                    CountGPPG := 0;
                    if ProdPostGrp.Find('-') then
                        repeat
                            CountGPPG := CountGPPG + 1;
                            "GLGPP Caption"[CountGPPG] := ProdPostGrp.Code;
                            GLEntry.SetCurrentKey(GLEntry."G/L Account No.", GLEntry."Job No.", GLEntry."Gen. Prod. Posting Group");
                            GLEntry.SetRange(GLEntry."G/L Account No.", JobSetUp."Job Val Begin Account", JobSetUp."Job Val End Account");
                            GLEntry.SetRange(GLEntry."Job No.", JobNo);
                            GLEntry.SetRange(GLEntry."Gen. Prod. Posting Group", ProdPostGrp.Code);
                            if GLEntry.Find('-') then
                                repeat
                                    GLStr[CountGPPG] := GLStr[CountGPPG] + GLEntry.Amount;
                                until GLEntry.Next() = 0;
                        until ProdPostGrp.Next() = 0;

                    CurrExc.SetRange(CurrExc."Currency Code", 'USD');
                    CurrExc.SetRange(CurrExc."Starting Date", 0D, ETA);
                    if CurrExc.Find('+') then
                        CurrRate := CurrExc."Relational Exch. Rate Amount"
                    //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                    else
                        CurrRate := 1;
                    PntStor[7] := CurrRate;
                end;

                /*
                CurrReport.SHOWOUTPUT :=
                  CurrReport.TOTALSCAUSEDBY = "Job Ledger Entry".FIELDNO("No.");*/

                if Item.Get("No.") then;

                BItemNo := '';
                BQty := 0;
                BPrice := 0;
                BProductPrice := 0;
                BNairaValue := 0;

                CatchDefault.SetCurrentKey("Table Name", "No.", Code, "Pack Size");
                CatchDefault.SetRange("No.", JobNo);
                if CatchDefault.Find('-') then
                    repeat
                        BItemNo := Syntesis2(CatchDefault.Code, CatchDefault."Pack Size", CatchDefault.Brand); //Compose No.
                    until (CatchDefault.Next() = 0) or (BItemNo = "No.");
                if BItemNo = "No." then begin
                    CatchDefault1.Reset();
                    CatchDefault1.SetCurrentKey("Table Name", "No.", Code, "Pack Size");
                    CatchDefault1.SetRange("No.", JobNo);
                    CatchDefault1.SetRange("Item No.", BItemNo);
                    if CatchDefault1.FindSet() then
                        if CatchDefault1."Budget Quantity" <> 0 then
                            BQty := CatchDefault1."Budget Quantity";

                    if CatchDefault."Budget Quantity" <> 0 then begin
                        BPrice := GetItPrice("Job No.", BItemNo, ETA);
                        if SalesPrice."Currency Code" <> '' then begin
                            BProductPrice := BQty * BPrice;
                            BNairaValue := BProductPrice * CurrRate;
                        end else begin
                            BNairaValue := BQty * BPrice;
                            BProductPrice := 0;
                        end;
                    end else begin
                        BProductPrice := 0;
                        BPrice := 0;
                        BNairaValue := 0;
                    end;

                    if BQty <> 0 then begin
                        if ("Task Code" = 'SHR') and (BQty <> 0) then begin
                            BExportQty := BExportQty + BQty;
                            BExportPrice := BExportPrice + BProductPrice;
                            BExportPriceN := BExportPriceN + BNairaValue;
                        end;

                        BQty2 := BQty2 + BQty;
                        BProductPrice2 := BProductPrice2 + BProductPrice;
                        BNairaValue2 := BNairaValue2 + BNairaValue;

                        BQtyTot := BQtyTot + BQty;
                        BProductPriceTot := BProductPriceTot + BProductPrice;
                        BNairaValueTot := BNairaValueTot + BNairaValue;
                    end;
                end;

                //END;

                //ProductPrice := Qty * Price;
                if SalesPrice."Currency Code" <> '' then begin
                    ProductPrice := Qty * Price;
                    NairaValue := ProductPrice * CurrRate
                end else begin
                    NairaValue := Qty * Price;
                    ProductPrice := 0;
                end;

                if "Job Ledger Entry"."Task Code" = 'SHR' then begin
                    ExportQty := ExportQty + Qty;
                    ExportPrice := ExportPrice + ProductPrice;
                    ExportPriceN += NairaValue;
                end;

                CurrReport.ShowOutput(CurrReport.TotalsCausedBy() = "Job Ledger Entry".FieldNo("Work Type Code"));

                if CurrReport.ShowOutput() then begin
                    BNairaValue2 := 0;
                    BProductPrice2 := 0;
                end;

                CurrReport.ShowOutput(CurrReport.TotalsCausedBy() = "Job Ledger Entry".FieldNo("Work Type Code"));

                CurrReport.ShowOutput(CurrReport.TotalsCausedBy() = "Job Ledger Entry".FieldNo("No."));

                if Item.Get("No.") then;

                if CurrReport.ShowOutput() then begin
                    BItemNo := '';
                    BQty := 0;
                    BPrice := 0;
                    BProductPrice := 0;
                    BNairaValue := 0;
                    VariTen := 0;

                    CatchDefault.SetCurrentKey("Table Name", "No.", Code, "Pack Size");
                    CatchDefault.SetRange("No.", JobNo);
                    if CatchDefault.Find('-') then
                        repeat
                            BItemNo := Syntesis2(CatchDefault.Code, CatchDefault."Pack Size", CatchDefault.Brand); //Compose No.
                        until (CatchDefault.Next() = 0) or (BItemNo = "No.");

                    if BItemNo = "No." then begin
                        if CatchDefault."Budget Quantity" <> 0 then begin
                            BQty := CatchDefault."Budget Quantity";
                            BPrice := GetItPrice("Job No.", BItemNo, ETA);

                            if SalesPrice."Currency Code" <> '' then begin
                                BProductPrice := BQty * BPrice;
                                BNairaValue := BProductPrice * CurrRate
                            end else begin
                                BNairaValue := BQty * BPrice;
                                BProductPrice := 0;
                            end;
                        end else begin
                            BProductPrice := 0;
                            BPrice := 0;
                            BNairaValue := 0;
                        end;

                        if BQty <> 0 then begin
                            if ("Task Code" = 'SHR') and (BQty <> 0) then begin
                                BExportQty := BExportQty + BQty;
                                BExportPrice := BExportPrice + BProductPrice;
                                BExportPriceN := BExportPriceN + BNairaValue;
                            end;

                            BQty2 := BQty2 + BQty;
                            BProductPrice2 := BProductPrice2 + BProductPrice;
                            BNairaValue2 := BNairaValue2 + BNairaValue;

                            BQtyTot := BQtyTot + BQty;
                            BProductPriceTot := BProductPriceTot + BProductPrice;
                            BNairaValueTot := BNairaValueTot + BNairaValue;
                        end;
                    end;
                end;

                if Evaluate(g_Order, CopyStr(CatchDefault.GroupSort, 2, 2)) then;
                if g_Order < 8 then begin
                    g_QtyBX := g_QtyBX + BQty;
                    g_PrdPrcBX := g_PrdPrcBX + PrdPrcB;
                    g_NairaValBX := g_NairaValBX + NairaValB;
                end
                else begin
                    g_QtyBXLocal := TotalLocal + QtyB;
                    PrdPrcBXLocal := PrdPrcBXLocal + PrdPrcB;
                    NairaValBXLocal := NairaValBXLocal + NairaValB;
                end;
                VariTen := NairaValue - BNairaValue;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
                CurrReport.CreateTotals(ProductPrice, NairaValue, Qty);

                SetRange("Job Ledger Entry"."Job No.", JobNo);
            end;
        }
        dataitem("Job catch Default"; "Job catch Default")
        {
            DataItemTableView = SORTING(GroupSort);
            RequestFilterFields = GroupSort;
            column(LocBudQtyM; LocBudQtyM)
            {
            }
            column(TotalBudQtyM; TotalBudQtyM)
            {
            }
            column(ExpBudQtyM; ExpBudQtyM)
            {
            }
            column(NairaValBv; NairaValB)
            {
            }
            column(PrdPrcB; PrdPrcB)
            {
            }
            column(QtyB; QtyB)
            {
            }
            column(COPYSTR_GroupSort_5_3_; CopyStr(GroupSort, 5, 3))
            {
            }
            column(NairaValB_Control1000000105; NairaValB)
            {
            }
            column(PrdPrcB_Control1000000106; PrdPrcB)
            {
            }
            column(QtyB_Control1000000107; QtyB)
            {
            }
            column(QTY1; QTY1)
            {
            }
            column(QTY2; QTY2)
            {
            }
            column(QTY3; QTY3)
            {
            }
            column(QTY4; QTY4)
            {
            }
            column(QTY5; QTY5)
            {
            }
            column(QTY6; QTY6)
            {
            }
            column(QTY7; QTY7)
            {
            }
            column(QTY8; QTY8)
            {
            }
            column(QTY9; QTY9)
            {
            }
            column(TotQtyExp; TotQtyExp)
            {
            }
            column(TotQtyLoc; TotQtyLoc)
            {
            }
            column(QtyBX; QtyBX)
            {
            }
            column(NOrder; NOrder)
            {
            }
            column(PrdPrcBX; PrdPrcBX)
            {
            }
            column(TotalLocal; TotalLocal)
            {
            }
            column(PrdPrcB_PrdPrcBX; PrdPrcBXLocal)
            {
            }
            column(QtyB_QtyBX; TotalLocal)
            {
            }
            column(NairaValBX; NairaValBX)
            {
            }
            column(NairaValB_NairaValBX; NairaValBXLocal)
            {
            }
            column(BudgetCaption; BudgetCaptionLbl)
            {
            }
            column(Total_ExportsCaption_Control1000000108; Total_ExportsCaption_Control1000000108Lbl)
            {
            }
            column(Total_LocalCaption_Control1000000109; Total_LocalCaption_Control1000000109Lbl)
            {
            }
            column(TotalCaption_Control1000000110; TotalCaption_Control1000000110Lbl)
            {
            }
            column(Job_catch_Default_Table_Name; "Table Name")
            {
            }
            column(Job_catch_Default_No_; "No.")
            {
            }
            column(Job_catch_Default_Code; Code)
            {
            }
            column(Job_catch_Default_Pack_Size; "Pack Size")
            {
            }
            column(Job_catch_Default_GroupSort; CopyStr(GroupSort, 5))
            {
            }
            column(GroupSort; CopyStr(GroupSort, 2, 2))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if ("Job catch Default".GroupSort = 'B09.CROAKER') or ("Job catch Default".GroupSort = 'B08.SNB')
                  or ("Job catch Default".GroupSort = 'B10.SOLE') or ("Job catch Default".GroupSort = 'B11.MIX')
                  or ("Job catch Default".GroupSort = 'B12.OTHER FISH') then
                    LocBudQtyM += 123;//"Job catch Default"."Budget Quantity";
                TotalBudQtyM += "Job catch Default"."Budget Quantity";
                ExpBudQtyM := TotalBudQtyM - LocBudQtyM;

                "No.B" := Syntesis2(Code, "Pack Size", Brand); //Compose No.
                QtyB := "Budget Quantity";
                if QtyB <> 0 then begin
                    PrdPrcB := QtyB * GetItPrice("No.", "No.B", ETA);
                    PrcB := GetItPrice("No.", "No.B", ETA);
                end
                else begin
                    PrdPrcB := 0;
                    PrcB := 0;
                end;

                "No.B" := Syntesis2(Code, "Pack Size", Brand); //Compose No.
                QtyB := "Budget Quantity";
                if QtyB <> 0 then begin
                    PrdPrcB := QtyB * GetItPrice("No.", "No.B", ETA);
                    PrcB := GetItPrice("No.", "No.B", ETA);
                end
                else begin
                    PrdPrcB := 0;
                    PrcB := 0;
                end;

                if SalesPrice."Currency Code" <> '' then begin
                    PrdPrcB := QtyB * PrcB;
                    NairaValB := PrdPrcB * CurrRate
                end
                else begin
                    NairaValB := QtyB * PrcB;
                    PrdPrcB := 0;
                end;
                CurrReport.ShowOutput(false);

                if Evaluate(NOrder, CopyStr(GroupSort, 2, 2)) then;
                if NOrder < 8 then begin
                    QtyBX := QtyBX + QtyB;
                    PrdPrcBX := PrdPrcBX + PrdPrcB;
                    NairaValBX := NairaValBX + NairaValB;
                end
                else begin
                    TotalLocal := TotalLocal + QtyB;
                    PrdPrcBXLocal := PrdPrcBXLocal + PrdPrcB;
                    NairaValBXLocal := NairaValBXLocal + NairaValB;
                end;
            end;

            trigger OnPreDataItem()
            begin

                "Job catch Default".SetRange("Job catch Default"."No.", JobNo);
                CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                QtyBX := 0;
                TotalLocal := 0;
                PrdPrcBXLocal := 0;
                NairaValBXLocal := 0;
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Option)
                {
                    Caption = 'OPtion';
                    field(Location; LocationCode)
                    {
                        Caption = 'Location';
                        TableRelation = Location;
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
        Bold := true;
        UnderLine := true;
        Italic := true;
        //  TopPage := true;
        PageOrientation := 1;
        FontSize := 7;
    end;

    trigger OnPreReport()
    var
        JobRec: Record Job;
    begin
        if "Job Ledger Entry".GetFilter("Job Ledger Entry"."Job No.") <> '' then begin
            LocationCode := '';
            JobNo := "Job Ledger Entry".GetFilter("Job Ledger Entry"."Job No.");
        end;

        if (LocationCode = '') and ("Job Ledger Entry".GetFilter("Job Ledger Entry"."Job No.") = '') then
            Error('Enter Location Filter!');

        if LocationCode <> '' then begin
            JobRec.SetRange(Vessel, LocationCode);
            JobRec.SetFilter(JobRec.Status, '<>%1', 0);
            JobRec.Find('+');
            JobNo := JobRec."No."; //"Job Ledger Entry".GETFILTER("Job Ledger Entry"."Job No.");
        end;
        JobSetUp.Get();
    end;

    var
        LastFieldNo: Integer;
        Job: Record Job;
        Job2: Record Job;
        SalesPrice: Record "Sales Price";
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        JobSetUp: Record "Jobs Setup";
        RateSetUp: Record "P & L Rates";
        JBudLn: Record "Job Task";
        Employee: Record Employee;
        Loc: Record Location;
        Coutry: Record "Country/Region";
        GLEntry: Record "G/L Entry";
        Res: Record Resource;
        ETD: Date;
        ETA: Date;
        ETA2: Date;
        DataStor: array[15] of Decimal;
        PntStor: array[8] of Decimal;
        CycleDay: Decimal;
        PortDay: Decimal;
        LostDay: Decimal;
        SeaDay: Decimal;
        FishgDay: Decimal;
        a: Decimal;
        ExpTonnage: Decimal;
        Vess: Text[30];
        expcnt: Integer;
        PeopleOnVoy: Integer;
        JobNo: Code[20];
        Location: Record Location;
        Item: Record Item;
        ResCount: Integer;
        CountGPPG: Integer;
        GLStr: array[25] of Decimal;
        "GLGPP Caption": array[25] of Code[10];
        CurrRate: Decimal;
        Text21: Label 'Shrimp Points';
        Text22: Label 'Fish Points';
        Text23: Label 'Total Points';
        Text24: Label 'Avg. Shrimp Points';
        Text25: Label 'Avg. Fish Points';
        Text26: Label 'Avg. Total Points';
        Text27: Label 'Exchange Rate';
        ProductPrice: Decimal;
        Price: Decimal;
        Qty: Decimal;
        NairaValue: Decimal;
        UOM: Record "Unit of Measure";
        UOMCd: Code[10];
        ItemVar: Code[10];
        "No.B": Code[10];
        ExportQty: Decimal;
        ExportPrice: Decimal;
        ExportPriceN: Decimal;
        CatchDefault: Record "Job catch Default";
        BItemNo: Code[20];
        BQty: Decimal;
        BPrice: Decimal;
        BProductPrice: Decimal;
        BNairaValue: Decimal;
        BQty2: Decimal;
        BProductPrice2: Decimal;
        BNairaValue2: Decimal;
        BQtyTot: Decimal;
        BProductPriceTot: Decimal;
        BNairaValueTot: Decimal;
        BExportQty: Decimal;
        BExportPrice: Decimal;
        BExportPriceN: Decimal;
        PrcB: Decimal;
        PrdPrcB: Decimal;
        PrdPrcBX: Decimal;
        NairaValB: Decimal;
        NairaValBX: Decimal;
        QtyB: Decimal;
        QtyBX: Decimal;
        NOrder: Decimal;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        LocationCode: Code[10];
        Voyage_P_and_LCaptionLbl: Label 'Voyage P and L';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        JobNoCaptionLbl: Label 'Label1000000007';
        ETACaptionLbl: Label 'Label1000000011';
        ETDCaptionLbl: Label 'Label1000000013';
        CycleDayCaptionLbl: Label 'Cycle Day';
        FishgDayCaptionLbl: Label 'Fishing Day';
        LostDayCaptionLbl: Label 'Lost At Sea';
        PortDayCaptionLbl: Label 'Port Day';
        QuantityCaptionLbl: Label 'Quantity';
        EmptyStringCaptionLbl: Label '$';
        N_CaptionLbl: Label '=N=';
        RateCaptionLbl: Label 'Rate';
        Bud__Qty_CaptionLbl: Label 'Bud. Qty.';
        Bud___CaptionLbl: Label 'Bud. $';
        Bud___N_CaptionLbl: Label 'Bud. =N=';
        Var___N_CaptionLbl: Label 'Var. =N=';
        Var___N_Caption_Control1000000009Lbl: Label 'Var. =N=';
        Bud___N_Caption_Control1000000050Lbl: Label 'Bud. =N=';
        Bud___Caption_Control1000000051Lbl: Label 'Bud. $';
        Bud__Qty_Caption_Control1000000052Lbl: Label 'Bud. Qty.';
        RateCaption_Control1000000057Lbl: Label 'Rate';
        N_Caption_Control1000000058Lbl: Label '=N=';
        EmptyStringCaption_Control1000000059Lbl: Label '$';
        QuantityCaption_Control1000000060Lbl: Label 'Quantity';
        Total_ExportsCaptionLbl: Label 'Total Exports';
        Total_LocalCaptionLbl: Label 'Total Local';
        TotalCaptionLbl: Label 'Total';
        BudgetCaptionLbl: Label 'Budget';
        Total_ExportsCaption_Control1000000108Lbl: Label 'Total Exports';
        Total_LocalCaption_Control1000000109Lbl: Label 'Total Local';
        TotalCaption_Control1000000110Lbl: Label 'Total';
        TotalLocal: Decimal;
        PrdPrcBXLocal: Decimal;
        NairaValBXLocal: Decimal;
        g_Order: Decimal;
        g_QtyBX: Decimal;
        g_PrdPrcBX: Decimal;
        g_NairaValBX: Decimal;
        g_QtyBXLocal: Decimal;
        VariTen: Decimal;
        QTY1: Decimal;
        QTY2: Decimal;
        QTY3: Decimal;
        QTY4: Decimal;
        QTY5: Decimal;
        QTY6: Decimal;
        QTY7: Decimal;
        QTY8: Decimal;
        QTY9: Decimal;
        TotQtyExp: Decimal;
        TotQtyLoc: Decimal;
        LocBudQtyM: Decimal;
        TotalBudQtyM: Decimal;
        ExpBudQtyM: Decimal;

    [Scope('OnPrem')]
    procedure Syntesis2(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        ItemVar := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);    //Requip Code Name
        "No.B" := ItemVar;
        exit(ItemVar);
    end;

    [Scope('OnPrem')]
    procedure GetItPrice(JNos: Code[20]; Nos: Code[20]; PDays: Date): Decimal
    var
        job3: Record Job;
    begin
        SalesPrice.Reset();
        job3.Get(JNos);
        SalesPrice.SetCurrentKey("Item No.", "Sales Type", "Sales Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity");
        SalesPrice.SetRange(SalesPrice."Item No.", Nos);
        SalesPrice.SetRange(SalesPrice."Starting Date", 0D, PDays);

        if job3."Price Group Code" <> '' then begin
            SalesPrice.SetRange(SalesPrice."Sales Type", SalesPrice."Sales Type"::"Customer Price Group");
            SalesPrice.SetRange(SalesPrice."Sales Code", job3."Price Group Code");
        end else begin
            SalesPrice.SetRange(SalesPrice."Sales Type", SalesPrice."Sales Type"::"Customer Price Group");
            SalesPrice.SetRange(SalesPrice."Sales Code", JobSetUp."Default Price Group Code");
        end;
        if SalesPrice.Find('+') then
            Price := SalesPrice."Unit Price"
        else begin
            SalesPrice.Reset();
            SalesPrice.SetCurrentKey("Item No.", "Sales Type", "Sales Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity");

            SalesPrice.SetRange("Item No.", Nos);
            if job3."Price Group Code" <> '' then begin
                SalesPrice.SetRange(SalesPrice."Sales Type", SalesPrice."Sales Type"::"Customer Price Group");
                SalesPrice.SetRange(SalesPrice."Sales Code", job3."Price Group Code")
            end else begin
                SalesPrice.SetRange(SalesPrice."Sales Type", SalesPrice."Sales Type"::"Customer Price Group");
                SalesPrice.SetRange(SalesPrice."Sales Code", JobSetUp."Default Price Group Code");
            end;
            if SalesPrice.Find('+') then
                Price := SalesPrice."Unit Price"
            else
                Price := 0;
            //IF Flag THEN MESSAGE('Price Missing for Item %1',Nos);
        end;
        exit(Price);
    end;

    [Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin

        /*xlSheet.Range(GetCol(Col)+FORMAT(Row)).Value := ValueText;
        IF Bold THEN
          xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Bold := Bold;
        IF Italic THEN
          xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Italic := Italic;
        IF Underline THEN
          xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Underline := Underline;
        xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Size := FontSize;*/ //dik
    end;

    [Scope('OnPrem')]
    procedure GetCol(CN: Integer): Text[30]
    begin
        /*xlColID := '';
        IF CN <> 0 THEN BEGIN
          x := CN - 1;
          c := 65 + x MOD 26;
          xlColID[10] := c;
          i := 10;
          WHILE x > 25 DO BEGIN
            x := x DIV 26;
            i := i - 1;
            c := 64 + x MOD 26;
            xlColID[i] := c;
          END;
          FOR x := i TO 10 DO
            xlColID[1+x-i] := xlColID[x];
        END;
        EXIT(xlColID);*/

        //dik
    end;
}
