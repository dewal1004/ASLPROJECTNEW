report 50112 "Vessel Performances Grpg OLD"
{
    // XVal[1]::Nairaval
    // XVal[2]::ExpVal
    // XVal[3]::NairaVal
    // XVal[4]::AGVal
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VesselPerformancesGrpgOLD.rdlc';


    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(Vessel);
            RequestFilterFields = "Starting Date", "Ending Date", Vessel, "Fishing Country Code", "No.", Captain;
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
            column(Job_GETFILTERS; Job.GetFilters)
            {
            }
            column(Job__No__; "No.")
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Cycle_Day__Manual__; "Cycle Day (Manual)")
            {
            }
            column(Job__Fishing_Day__Manual__; "Fishing Day (Manual)")
            {
            }
            column(Job__Lost_At_Sea__Manual__; "Lost At Sea (Manual)")
            {
            }
            column(Job__Port_Day__Manual__; "Port Day (Manual)")
            {
            }
            column(FishPer; FishPer)
            {

            }
            column(AGVal; AGVal)
            {
            }
            column(FishPer_Control1000000068; FishPer)
            {

            }
            column(Job__Port_Day__Manual___Control1000000069; "Port Day (Manual)")
            {
            }
            column(Job__Lost_At_Sea__Manual___Control1000000070; "Lost At Sea (Manual)")
            {
            }
            column(Job__Fishing_Day__Manual___Control1000000071; "Fishing Day (Manual)")
            {
            }
            column(Job__Cycle_Day__Manual___Control1000000072; "Cycle Day (Manual)")
            {
            }
            column(Job_Vessel_Control1000000073; Vessel)
            {
            }
            column(PrtXVal_2_; PrtXVal[2])
            {

            }
            column(PrtXVal_1__PrtXVal_2_; PrtXVal[1] - PrtXVal[2])
            {

            }
            column(PrtXVal_1_; PrtXVal[1])
            {

            }
            column(PrtXVal_3_; PrtXVal[3])
            {

            }
            column(PrtXVal_1__PrtXVal_3_; PrtXVal[1] - PrtXVal[3])
            {

            }
            column(PrtXVal_4_; PrtXVal[4])
            {

            }
            column(PrtXVal_9_; PrtXVal[9])
            {

            }
            column(PrtXVal_7_; PrtXVal[7])
            {

            }
            column(PrtXVal_11_; PrtXVal[11])
            {

            }
            column(PrtXVal_10_; PrtXVal[10])
            {

            }
            column(PrtXVal_8_; PrtXVal[8])
            {

            }
            column(PrtXVal_12_; PrtXVal[12])
            {

            }
            column(CountZ; CountZ)
            {
            }
            column(TotXVal_12_; TotXVal[12])
            {

            }
            column(TotXVal_8_; TotXVal[8])
            {

            }
            column(TotXVal_11_; TotXVal[11])
            {

            }
            column(FishPer_Control1000000090; FishPer)
            {

            }
            column(Job__Port_Day__Manual___Control1000000091; "Port Day (Manual)")
            {
            }
            column(Job__Lost_At_Sea__Manual___Control1000000092; "Lost At Sea (Manual)")
            {
            }
            column(Job__Fishing_Day__Manual___Control1000000093; "Fishing Day (Manual)")
            {
            }
            column(Job__Cycle_Day__Manual___Control1000000096; "Cycle Day (Manual)")
            {
            }
            column(TotXVal_9_; TotXVal[9])
            {

            }
            column(TotXVal_10_; TotXVal[10])
            {

            }
            column(TotXVal_2_; TotXVal[2])
            {

            }
            column(TotXVal_1__TotXVal_2_; TotXVal[1] - TotXVal[2])
            {

            }
            column(TotXVal_1_; TotXVal[1])
            {

            }
            column(TotXVal_3_; TotXVal[3])
            {

            }
            column(TotXVal_1__TotXVal_3_; TotXVal[1] - TotXVal[3])
            {

            }
            column(TotXVal_4_; TotXVal[4])
            {

            }
            column(TotXVal_7_; TotXVal[7])
            {

            }
            column(AvgPct_3_; AvgPct[3])
            {

            }
            column(AvgXVal_2_; AvgXVal[2])
            {

            }
            column(AvgXVal_1__AvgXVal_2_; AvgXVal[1] - AvgXVal[2])
            {

            }
            column(AvgXVal_1_; AvgXVal[1])
            {

            }
            column(AvgXVal_3_; AvgXVal[3])
            {

            }
            column(AvgXVal_1__AvgXVal_3_; AvgXVal[1] - AvgXVal[3])
            {

            }
            column(AvgXVal_4_; AvgXVal[4])
            {

            }
            column(AvgPct_1_; AvgPct[1])
            {

            }
            column(AvgXVal_7_; AvgXVal[7])
            {

            }
            column(AvgXVal_11_; AvgXVal[11])
            {

            }
            column(AvgPct_2_; AvgPct[2])
            {

            }
            column(AvgXVal_8_; AvgXVal[8])
            {

            }
            column(AvgXVal_12_; AvgXVal[12])
            {

            }
            column(AvgDay_1_; AvgDay[1])
            {

            }
            column(AvgDay_2_; AvgDay[2])
            {

            }
            column(AvgDay_3_; AvgDay[3])
            {

            }
            column(AvgDay_4_; AvgDay[4])
            {

            }
            column(VESSEL_PERFORMANCE_ANALYSISCaption; VESSEL_PERFORMANCE_ANALYSISCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VESS_Caption; VESS_CaptionLbl)
            {
            }
            column(Job__Cycle_Day__Manual__Caption; Job__Cycle_Day__Manual__CaptionLbl)
            {
            }
            column(Job__Fishing_Day__Manual__Caption; Job__Fishing_Day__Manual__CaptionLbl)
            {
            }
            column(Job__Lost_At_Sea__Manual__Caption; Job__Lost_At_Sea__Manual__CaptionLbl)
            {
            }
            column(Job__Port_Day__Manual__Caption; Job__Port_Day__Manual__CaptionLbl)
            {
            }
            column(FishPerCaption; FishPerCaptionLbl)
            {
            }
            column(PrtXVal_1__PrtXVal_2_Caption; PrtXVal_1__PrtXVal_2_CaptionLbl)
            {
            }
            column(PrtXVal_1_Caption; PrtXVal_1_CaptionLbl)
            {
            }
            column(PrtXVal_3_Caption; PrtXVal_3_CaptionLbl)
            {
            }
            column(PrtXVal_1__PrtXVal_3_Caption; PrtXVal_1__PrtXVal_3_CaptionLbl)
            {
            }
            column(PrtXVal_4_Caption; PrtXVal_4_CaptionLbl)
            {
            }
            column(PrtXVal_9_Caption; PrtXVal_9_CaptionLbl)
            {
            }
            column(PrtXVal_7_Caption; PrtXVal_7_CaptionLbl)
            {
            }
            column(PrtXVal_11_Caption; PrtXVal_11_CaptionLbl)
            {
            }
            column(PrtXVal_10_Caption; PrtXVal_10_CaptionLbl)
            {
            }
            column(PrtXVal_8_Caption; PrtXVal_8_CaptionLbl)
            {
            }
            column(PrtXVal_12_Caption; PrtXVal_12_CaptionLbl)
            {
            }
            column(PrtXVal_2_Caption; PrtXVal_2_CaptionLbl)
            {
            }
            column(CountZCaption; CountZCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Avg_Caption; Avg_CaptionLbl)
            {
            }
            column(Job_Person_Responsible; "Person Responsible")
            {
            }
            dataitem("<Job Ledger Entry>"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", "Location Code", "Work Type Code") WHERE("Location Code" = CONST('CRM-ASL'));
                column(Qty; Qty)
                {
                }
                column(Prc; Prc)
                {
                }
                column(PrdPrc; PrdPrc)
                {
                }
                column(NairaVal; NairaVal)
                {
                }
                column(Itempr__Item_No__; Itempr."Item No.")
                {
                }
                column(ExpVal; ExpVal)
                {
                }
                column(Job_Ledger_Entry___No__; "No.")
                {
                }
                column(NairaVal_ExpVal; NairaVal - ExpVal)
                {
                }
                column(Prc_Control1000000016; Prc)
                {
                }
                column(Qty_Control1000000019; Qty)
                {
                }
                column(NairaVal_Control1000000028; NairaVal)
                {
                }
                column(PrdPrc_Control1000000022; PrdPrc)
                {
                }
                column(Job_Ledger_Entry___Job_No__; "Job No.")
                {
                }
                column(ExpVal_Control1000000075; ExpVal)
                {
                }
                column(QuantityCaption; QuantityCaptionLbl)
                {
                }
                column(PriceCaption; PriceCaptionLbl)
                {
                }
                column(Product_PriceCaption; Product_PriceCaptionLbl)
                {
                }
                column(Naira_ValueCaption; Naira_ValueCaptionLbl)
                {
                }
                column(Export_ValueCaption; Export_ValueCaptionLbl)
                {
                }
                column(Task_CodeCaption; Task_CodeCaptionLbl)
                {
                }
                column(Job_Ledger_Entry___No__Caption; FieldCaption("No."))
                {
                }
                column(Job_Ledger_Entry__Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    Qty := Quantity * -1;
                    PrdPrc := Qty * GetItPrice("Job No.", "No.", "Posting Date");

                    if Itempr."Currency Code" <> '' then begin
                        NairaVal := PrdPrc * CurrRate;
                    end
                    else begin
                        NairaVal := PrdPrc * 1;
                        //  IF "Task Code"<>JobSetup."Export Prouct Code" THEN
                        PrdPrc := 0; //Will turn the value to Zero for Non Shrimp product
                    end;

                    // IF "Task Code"=JobSetup."Export Prouct Code" THEN ExpVal:=NairaVal;

                    XVal[1] := XVal[1] + NairaVal;
                    XVal[2] := XVal[2] + ExpVal;

                    NairaValTot := NairaValTot + NairaVal;
                    ExpValTot := ExpValTot + ExpVal;

                    Cost;/*B2*/

                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(PrdPrc, NairaVal, ExpVal, Qty);
                end;
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = "No." = FIELD("No.");
                column(NairaValB; NairaValB)
                {
                }
                column(NairaValB_Control1000000009; NairaValB)
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

                trigger OnAfterGetRecord()
                begin
                    Syntesis(Code, "Pack Size", Brand); //Compose No.
                    QtyB := "Budget Quantity";
                    if QtyB <> 0 then begin
                        PrcB := GetItPrice("No.", "No.B", ETA[1]);
                        PrdPrcB := QtyB * GetItPrice("No.", "No.B", ETA[1]);
                    end
                    else begin
                        PrcB := 0;
                        PrdPrcB := 0;
                    end;

                    if Itempr."Currency Code" <> '' then begin
                        PrdPrcB := QtyB * PrcB;
                        NairaValB := PrdPrcB * CurrRate
                    end
                    else begin
                        NairaValB := QtyB * PrcB;
                        PrdPrcB := 0;
                    end;
                    XVal[3] := XVal[3] + NairaValB;

                    NairaValBTot := NairaValBTot + NairaValB;
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                end;
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Gen. Prod. Posting Group") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'));
                column(AGVal_Control1000000098; AGVal)
                {

                }
                column(Value_Entry__Gen__Prod__Posting_Group_; "Gen. Prod. Posting Group")
                {
                }
                column(Value_Entry__Gen__Prod__Posting_Group__Control1000000100; "Gen. Prod. Posting Group")
                {
                }
                column(AGVal_Control1000000101; AGVal)
                {

                }
                column(Cost_Posted_to_G_L_; -"Cost Posted to G/L")
                {

                }
                column(Cost_Posted_to_G_L__Control1000000066; -"Cost Posted to G/L")
                {

                }
                column(AGValTot; AGValTot)
                {

                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Value_Entry_Document_No_; "Document No.")
                {
                }

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(TotPrice);
                end;
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = WHERE(Number = CONST(1));
                column(GLStrT; GLStrT)
                {

                }
                column(ResCount; ResCount)
                {

                }
                column(Value_Entry___Cost_Posted_to_G_L_; "Value Entry"."Cost Posted to G/L")
                {
                }
                column(AGValGL; AGValGL)
                {
                }
                column(Direct; Direct)
                {

                }
                column(Integer_Number; Number)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    //Find Total TonnagCurrReport.CREATETOTALSe of Export
                    // Job.SETFILTER(Job."Task Filter",JobSetup."Export Prouct Code");
                    // Job.CALCFIELDS(Job."Product Quantity",Job."Points Actual");
                    ExpTonnage := Job."Product Quantity" / 1000;

                    //Cycle Day
                    Job2.Get(Job."No.");
                    Job2.SetRange(Job2.Vessel, Job.Vessel);    //Find last voyage
                    if Job2.Next(-1) <> 0 then
                        ETA[2] := Job2."Ending Date"
                    else begin
                        if Loc.Get(Job.Vessel) then
                            ETA[2] := Loc."Begining ETA"
                        else
                            ETA[2] := WorkDate;
                    end;
                    if Job."Cycle Day (Manual)" <> 0 then
                        CycleDay := Job."Cycle Day (Manual)"
                    else
                        CycleDay := ETA[1] - ETA[2];

                    Job.Validate(Job."Net Incentive Actual");
                    DataStor[3] := Job."Net Incentive Actual";


                    RateSetup.SetRange(RateSetup."Starting Date", 0D, Job."Ending Date");
                    if RateSetup.Find('+') then;
                    //Calculate the Fixed Salaries
                    JBudLn.SetRange(JBudLn."Job No.", Job."No.");
                    if JBudLn.Find('-') then begin
                        //   JBudLn.CALCFIELDS(JBudLn.Counter);
                        //   PeopleOnVoy:=JBudLn.Counter;
                    end
                    else
                        PeopleOnVoy := Job."No. of Deck Hands" + 2;
                    DataStor[4] := RateSetup."Fixed Salary Rate" * CycleDay * (PeopleOnVoy);

                    //Travelling Expenses for Expatriate
                    expcnt := 0;
                    repeat
                        Employee.SetCurrentKey(Employee."Resource No.");
                        Employee.SetRange(Employee."Resource No.", JBudLn."No.");
                        //  Employee.SETFILTER(Employee."Country Code",'<>NG');
                        if Employee.Find('-') then expcnt := expcnt + 1;
                        ResCount := ResCount + 1;
                    until JBudLn.Next() = 0;
                    DataStor[5] := RateSetup."Travelling Expenses Rate" * expcnt * CycleDay;

                    //License Fee
                    if Coutry.Get(Job."Fishing Country Code") then
                        DataStor[6] := Coutry."License Fees Rate" * CycleDay
                    else begin
                        DataStor[6] := RateSetup."License Fee Rate" * CycleDay;
                        Coutry.Name := 'Nigeria';
                    end;
                    if Loc.Get(Job.Vessel) then begin
                        DataStor[7] := Loc."Insurance Rate" * CycleDay;
                        DataStor[13] := Loc."Depreciation Rate" * CycleDay;
                        DataStor[14] := Loc."Interest Rate" * CycleDay;
                    end;

                    DataStor[8] := RateSetup.Clearing_Fwrd_NPA * ExpTonnage;
                    DataStor[12] := RateSetup."Shore Overheads" * CycleDay;


                    //Credit from G/L Entry
                    CountGPPG := 0;
                    AGValGL := 0;
                    if ProdPostGrp.Find('-') then
                        repeat
                            CountGPPG := CountGPPG + 1;
                            GLEntry.SetCurrentKey(GLEntry."G/L Account No.", GLEntry."Job No.", GLEntry."Gen. Prod. Posting Group");
                            GLEntry.SetRange(GLEntry."G/L Account No.", JobSetup."Job Val Begin Account", JobSetup."Job Val End Account");
                            GLEntry.SetRange(GLEntry."Job No.", Job."No.");
                            GLEntry.SetRange(GLEntry."Gen. Prod. Posting Group", ProdPostGrp.Code);
                            if GLEntry.Find('-') then
                                repeat
                                    GLStr[CountGPPG] := GLStr[CountGPPG] + GLEntry.Amount;
                                until GLEntry.Next() = 0;
                            if ProdPostGrp.Code = 'AG' then AGValGL := GLStr[CountGPPG];
                            GLStr[CountGPPG] := 0;
                            GLStrT := GLStrT + GLEntry.Amount;
                        until ProdPostGrp.Next() = 0;   // MESSAGE('AG VAl GL = %1',AGValGL)
                    XVal[6] := XVal[6] + AGValGL;
                    CountN := CountN + 1;

                    Direct := TotPrice + DataStor[3] + DataStor[4] + DataStor[5] + DataStor[6] + DataStor[7] + DataStor[8];
                    Indirect := DataStor[12] + DataStor[13] + DataStor[14];
                    XVal[7] := XVal[7] + Direct;
                    XVal[8] := XVal[8] + Indirect;
                    /*
                    MESSAGE('Store 3 = %1\'+
                            'Store 4 = %2\'+
                            'Store 5 = %3\'+
                            'Store 6 = %4\'+
                            'Store 7 = %5\'+
                            'Store 8 = %6\'+
                            'Total = %7',DataStor[3],DataStor[4],DataStor[5],DataStor[6],DataStor[7],DataStor[8],TotPrice);
                    */


                    DirectT := DirectT + Direct;
                    IndirectT := IndirectT + Indirect;

                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(Direct);
                    CountLp := 15;
                    repeat
                        CurrReport.CreateTotals(DataStor[CountLp]);
                        CountLp := CountLp - 1;
                    until CountLp = 0;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                ETA[1] := "Ending Date";
                CurrExc.SetRange(CurrExc."Currency Code", 'USD');
                CurrExc.SetRange(CurrExc."Starting Date", 0D, ETA[1]);
                if CurrExc.Find('+') then begin
                    CurrRate := CurrExc."Relational Exch. Rate Amount"; //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                end
                else
                    CurrRate := 1;
                CurrReport.CreateTotals("Comsumed Value");
                AGValTot := 0;
            end;

            trigger OnPreDataItem()
            begin
                JobSetup.Get;    /*B1*/
                CurrReport.CreateTotals("Cycle Day (Manual)", "Fishing Day (Manual)", "Lost At Sea (Manual)", "Port Day (Manual)");

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
        Itempr: Record "Sales Price";
        JobSetup: Record "Jobs Setup";
        RateSetup: Record "P & L Rates";
        CurrExc: Record "Currency Exchange Rate";
        UOM: Record "Unit of Measure";
        JBudLn: Record "Job Ledger Entry";
        Job2: Record Job;
        Loc: Record Location;
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        Employee: Record Employee;
        Coutry: Record "Country/Region";
        GLEntry: Record "G/L Entry";
        Res: Record Resource;
        Flag: Boolean;
        PeopleOnVoy: Integer;
        expcnt: Integer;
        ResCount: Integer;
        CountZ: Integer;
        CountGPPG: Integer;
        CountGx: Integer;
        CountLp: Integer;
        CountN: Integer;
        J: Integer;
        DataStor: array[15] of Decimal;
        GLStr: array[25] of Decimal;
        GLStrT: Decimal;
        FishPer: Decimal;
        FishPerAvg: Decimal;
        Qty: Decimal;
        Prc: Decimal;
        PrdPrc: Decimal;
        NairaVal: Decimal;
        NairaValT: Integer;
        ExpVal: Decimal;
        LocVal: Decimal;
        QtyB: Decimal;
        PrcB: Decimal;
        PrdPrcB: Decimal;
        NairaValB: Decimal;
        CurrRate: Decimal;
        AGOPct: Decimal;
        AGOPctT: Decimal;
        AGOPctTAvg: Decimal;
        GMargin: Decimal;
        GMarginT: Decimal;
        GMPct: Decimal;
        GMPctT: Decimal;
        GMPctTAvg: Decimal;
        Direct: Decimal;
        DirectT: Decimal;
        Indirect: Decimal;
        IndirectT: Decimal;
        TotPrice: Decimal;
        Profit: Decimal;
        ProfitT: Decimal;
        AGVal: Decimal;
        AGValGL: Decimal;
        AGValTot: Decimal;
        AGValTotG: Decimal;
        NairaValTot: Decimal;
        ExpValTot: Decimal;
        LocValTot: Decimal;
        NairaValBTot: Decimal;
        ExpTonnage: Decimal;
        "----": Integer;
        CycleDay: Decimal;
        UOMCd: Code[10];
        "No.B": Code[10];
        ETA: array[2] of Date;
        XVal: array[12] of Decimal;
        PrtXVal: array[12] of Decimal;
        TotXVal: array[12] of Decimal;
        AvgXVal: array[12] of Decimal;
        AvgDay: array[4] of Decimal;
        AvgPct: array[3] of Decimal;
        VESSEL_PERFORMANCE_ANALYSISCaptionLbl: Label 'VESSEL PERFORMANCE ANALYSIS';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VESS_CaptionLbl: Label 'VESS.';
        Job__Cycle_Day__Manual__CaptionLbl: Label 'CYC';
        Job__Fishing_Day__Manual__CaptionLbl: Label 'FISH';
        Job__Lost_At_Sea__Manual__CaptionLbl: Label 'LOST';
        Job__Port_Day__Manual__CaptionLbl: Label 'PORT';
        FishPerCaptionLbl: Label '% Fish';
        PrtXVal_1__PrtXVal_2_CaptionLbl: Label 'LOC =N=';
        PrtXVal_1_CaptionLbl: Label 'REVENUE';
        PrtXVal_3_CaptionLbl: Label 'Budget';
        PrtXVal_1__PrtXVal_3_CaptionLbl: Label 'VARIANCE';
        PrtXVal_4_CaptionLbl: Label 'AGO';
        PrtXVal_9_CaptionLbl: Label 'AGO %';
        PrtXVal_7_CaptionLbl: Label 'DIRECT';
        PrtXVal_11_CaptionLbl: Label 'MARGIN';
        PrtXVal_10_CaptionLbl: Label 'GM %';
        PrtXVal_8_CaptionLbl: Label 'INDIRECT';
        PrtXVal_12_CaptionLbl: Label 'PROFIT';
        PrtXVal_2_CaptionLbl: Label 'EXP =N=';
        CountZCaptionLbl: Label 'S No.';
        TotalCaptionLbl: Label 'Total';
        Avg_CaptionLbl: Label 'Avg.';
        QuantityCaptionLbl: Label 'Quantity';
        PriceCaptionLbl: Label 'Price';
        Product_PriceCaptionLbl: Label 'Product Price';
        Naira_ValueCaptionLbl: Label 'Naira Value';
        Export_ValueCaptionLbl: Label 'Export Value';
        Task_CodeCaptionLbl: Label 'Task Code';

    [Scope('OnPrem')]
    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        "No.B" := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);     //Requip Code Name
    end;

    [Scope('OnPrem')]
    procedure GetItPrice(JNos: Code[20]; Nos: Code[20]; PDays: Date): Decimal
    var
        job3: Record Job;
    begin
        if job3.Get(JNos) then;
        Itempr.SetRange(Itempr."Item No.", Nos);
        Itempr.SetRange(Itempr."Starting Date", 0D, PDays);
        //Itempr.SETRANGE(Itempr."Price Group Code",job3."Price Group Code");
        if Itempr.Find('+') then
            Prc := Itempr."Unit Price" else begin
            //Itempr.SETRANGE(Itempr."Price Group Code",JobSetup."Default Price Group Code");
            if Itempr.Find('+') then
                Prc := Itempr."Unit Price" else begin
                Prc := 0;
                if Flag then Message('Price Missing for Item %1 in Job No %2', Nos, JNos);
            end;
        end;
        exit(Prc);
    end;

    [Scope('OnPrem')]
    procedure Cost()
    begin
    end;
}

