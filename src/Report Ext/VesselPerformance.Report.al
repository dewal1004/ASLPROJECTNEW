report 50190 "Vessel Performance"
{
    // Job.GETFILTERS
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VesselPerformance.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Vessel Performance';
    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Starting Date", "Ending Date", Vessel, "Fishing Country Code", "No.", Captain;
            column(S_No; "S.No")
            {
            }
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
            column(Job__Fuel_Days_; "Fuel Days")
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
            column(ExpVal; ExpVal)
            {
            }
            column(NairaVal_ExpVal; NairaVal - ExpVal)
            {
            }
            column(NairaVal; NairaVal)
            {
            }
            column(NairaValB; NairaValB)
            {
            }
            column(NairaVal_NairaValB; NairaVal - NairaValB)
            {
            }
            column(AGValTot; AGValTot)
            {
            }
            column(AGOPct; AGOPct)
            {
            }
            column(Direct; Direct)
            {
            }
            column(GMargin; GMargin)
            {
            }
            column(GMPct; GMPct)
            {
            }
            column(Indirect; Indirect)
            {
            }
            column(Profit; Profit)
            {
            }
            column(CountN; CountN)
            {
            }
            column(ProfitT; ProfitT)
            {
            }
            column(IndirectT; IndirectT)
            {
            }
            column(GMarginT; GMarginT)
            {
            }
            column(DirectT; DirectT)
            {
            }
            column(AGValTotG; AGValTotG)
            {
            }
            column(NairaValTot_NairaValBTot; NairaValTot - NairaValBTot)
            {
            }
            column(NairaValBTot; NairaValBTot)
            {
            }
            column(NairaValTot; NairaValTot)
            {
            }
            column(NairaValTot_ExpValTot; NairaValTot - ExpValTot)
            {
            }
            column(ExpValTot; ExpValTot)
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
            column(AGOPctT; AGOPctT)
            {
            }
            column(GMPctT; GMPctT)
            {
            }
            column(FishPerAvg; FishPerAvg)
            {
            }
            column(AGOPctTAvg; AGOPctTAvg)
            {
            }
            column(GMPctTAvg; GMPctTAvg)
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
            column(NairaVal_ExpValCaption; NairaVal_ExpValCaptionLbl)
            {
            }
            column(NairaValCaption; NairaValCaptionLbl)
            {
            }
            column(NairaValBCaption; NairaValBCaptionLbl)
            {
            }
            column(NairaVal_NairaValBCaption; NairaVal_NairaValBCaptionLbl)
            {
            }
            column(AGValTotCaption; AGValTotCaptionLbl)
            {
            }
            column(AGOPctCaption; AGOPctCaptionLbl)
            {
            }
            column(DirectCaption; DirectCaptionLbl)
            {
            }
            column(GMarginCaption; GMarginCaptionLbl)
            {
            }
            column(GMPctCaption; GMPctCaptionLbl)
            {
            }
            column(IndirectCaption; IndirectCaptionLbl)
            {
            }
            column(ProfitCaption; ProfitCaptionLbl)
            {
            }
            column(ExpValCaption; ExpValCaptionLbl)
            {
            }
            column(CountNCaption; CountNCaptionLbl)
            {
            }
            dataitem("<Job Ledger Entry>"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", "Location Code", "Work Type Code") WHERE("Location Code" = CONST('CRM-ASL'));
                column(Job_No; Job."No.")
                {
                }
                column(Qty; Qty)
                {
                }
                column(Prc; Prc)
                {
                }
                column(PrdPrc; PrdPrc)
                {
                }
                column(NairaVal_Control1000000025; NairaVal)
                {
                }
                column(ExpVal_Control1000000037; ExpVal)
                {
                }
                column(Job_Ledger_Entry___No__; "No.")
                {
                }
                column(NairaVal_ExpVal_Control1000000013; NairaVal - ExpVal)
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
                column(Job_Ledger_Entry___No__Caption; FieldCaption("No."))
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Qty := Quantity * -1;
                    PrdPrc := Qty * GetItPrice("Job No.", "No.", "Posting Date");

                    /*IF Itempr."Currency Code"<>'' THEN
                    BEGIN
                      NairaVal:=PrdPrc*CurrRate;
                    END
                    ELSE
                    BEGIN*/
                    NairaVal := PrdPrc * 1;
                    //IF "Task Code"<>JobSetup."Export Prouct Code" THEN//dik
                    PrdPrc := 0; //Will turn the value to Zero for Non Shrimp product
                                 //END;//dik

                    //IF "Task Code"=JobSetup."Export Prouct Code" THEN ExpVal:=NairaVal;//dik

                    NairaValTot := NairaValTot + NairaVal;
                    ExpValTot := ExpValTot + ExpVal;

                    Cost();
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(PrdPrc, NairaVal, ExpVal, Qty);
                end;
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = "No." = FIELD("No.");
                column(NairaValB_Control1000000032; NairaValB)
                {
                }
                column(NairaValB_Control1000000035; NairaValB)
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
                    /*Syntesis(Code,"Pack Size",Brand); //Compose No.
                    QtyB:="Budget Quantity";
                    PrcB:=GetItPrice("No.","No.B",ETA[1]);
                    PrdPrcB:=QtyB*GetItPrice("No.","No.B",ETA[1]);

                    IF Itempr."Currency Code"<>'' THEN
                    BEGIN
                      PrdPrcB:=QtyB*PrcB;
                      NairaValB:=PrdPrcB*CurrRate
                    END
                    ELSE
                    BEGIN
                      NairaValB:=QtyB*PrcB;
                      PrdPrcB:=0;
                    END;
                    NairaValBTot:=NairaValBTot+NairaValB;*///dik
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
                column(AGValTot_Control1000000067; AGValTot)
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
            dataitem("<Value Entry>"; "Integer")
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
                column(Value_Entry__Number; Number)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /* //Find Total TonnagCurrReport.CREATETOTALSe of Export
                     //Job.SETFILTER(Job."Task Filter",JobSetup."Export Prouct Code");//dik
                     //Job.CALCFIELDS(Job."Product Quantity",Job."Points Actual");
                     {Job."Product Quantity" :=
                       Job.ProductQty(Job."No.",Job.GETFILTER("Date Filter"),'',JobSetup."Export Prouct Code",'');
                     Job."Points Actual" :=
                       Job.PointsActual(Job."No.",Job.GETFILTER("Date Filter"),'',JobSetup."Export Prouct Code",'');
                     ExpTonnage:=Job."Product Quantity"/1000;}//dik

                     //Cycle Day
                     Job2.GET(Job."No.");
                     Job2.SETRANGE(Job2.Vessel,Job.Vessel);    //Find last voyage
                     IF Job2.NEXT(-1)<>0 THEN
                       ETA[2]:=Job2."Ending Date"
                     ELSE
                     BEGIN
                      IF Loc.GET(Job.Vessel) THEN
                       ETA[2]:=Loc."Begining ETA"
                       ELSE ETA[2]:=WORKDATE;
                     END;
                     IF Job."Cycle Day (Manual)"<>0 THEN CycleDay:=Job."Cycle Day (Manual)"
                       ELSE CycleDay:=ETA[1]-ETA[2];

                     Job.VALIDATE(Job."Net Incentive Actual");
                     DataStor[3]:=Job."Net Incentive Actual";

                     RateSetup.SETRANGE(RateSetup."Starting Date",0D,Job."Ending Date");
                     IF RateSetup.FIND('+') THEN;

                     //Calculate the Fixed Salaries
                     JBudLn.SETRANGE(JBudLn."Job No.",Job."No.");
                     IF JBudLn.FIND('-') THEN
                     BEGIN
                        JBudLn.CALCFIELDS(JBudLn.Counter);
                        PeopleOnVoy:=JBudLn.Counter;
                     END
                     ELSE PeopleOnVoy:=Job."No. of Deck Hands"+2;
                     DataStor[4]:=RateSetup."Fixed Salary Rate"*CycleDay*(PeopleOnVoy);

                     //Travelling Expenses for Expatriate
                     expcnt:=0;
                     REPEAT
                       Employee.SETCURRENTKEY(Employee."Resource No.");
                       Employee.SETRANGE(Employee."Resource No.",JBudLn."No.");
                       Employee.SETFILTER(Employee."Country Code",'<>NG');
                       IF Employee.FIND('-') THEN expcnt:=expcnt+1;
                       ResCount:=ResCount+1;
                     UNTIL JBudLn.NEXT()=0;
                     DataStor[5]:=RateSetup."Travelling Expenses Rate"*expcnt*CycleDay;

                     //License Fee
                     IF Coutry.GET(Job."Fishing Country Code") THEN
                        DataStor[6]:=Coutry."License Fees Rate"*CycleDay
                     ELSE
                       BEGIN
                         DataStor[6]:=RateSetup."License Fee Rate"*CycleDay;
                         Coutry.Name:='Nigeria';
                       END;
                     IF Loc.GET(Job.Vessel) THEN
                     BEGIN
                       DataStor[7] :=Loc."Insurance Rate"*CycleDay;
                       DataStor[13]:=Loc."Depreciation Rate"*CycleDay;
                       DataStor[14]:=Loc."Interest Rate"*CycleDay;
                     END;

                     DataStor[8]:=RateSetup.Clearing_Fwrd_NPA*ExpTonnage;
                     DataStor[12]:=RateSetup."Shore Overheads"*CycleDay;

                     //Credit from G/L Entry
                     CountGPPG:=0;
                     AGValGL:=0;
                     IF ProdPostGrp.FIND('-') THEN
                     REPEAT
                       CountGPPG:=CountGPPG+1;
                       GLEntry.SETCURRENTKEY(GLEntry."G/L Account No.",GLEntry."Job No.",GLEntry."Gen. Prod. Posting Group");
                       GLEntry.SETRANGE(GLEntry."G/L Account No.",JobSetup."Job Val Begin Account",JobSetup."Job Val End Account");
                       GLEntry.SETRANGE(GLEntry."Job No.",Job."No.");
                       GLEntry.SETRANGE(GLEntry."Gen. Prod. Posting Group",ProdPostGrp.Code);
                       IF GLEntry.FIND('-') THEN
                       REPEAT
                           GLStr[CountGPPG]:=GLStr[CountGPPG] +GLEntry.Amount;
                       UNTIL GLEntry.NEXT()=0;
                       IF ProdPostGrp.Code='AG'  THEN AGValGL:=GLStr[CountGPPG];
                       GLStr[CountGPPG]:=0;
                       GLStrT:=GLStrT+GLEntry.Amount;
                     UNTIL ProdPostGrp.NEXT()=0;
                    // MESSAGE('AG VAl GL = %1',AGValGL);
                   CountN:=CountN+1;*///dik
                end;

                trigger OnPostDataItem()
                begin
                    //AGValGL:=0;
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
                "S.No" += 1;

                ETA[1] := "Ending Date";
                CurrExc.SetRange(CurrExc."Currency Code", 'USD');
                CurrExc.SetRange(CurrExc."Starting Date", 0D, ETA[1]);
                if CurrExc.Find('+') then
                    CurrRate := CurrExc."Relational Exch. Rate Amount"
                //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                else
                    CurrRate := 1;
                CurrReport.CreateTotals("Comsumed Value");
                AGValTot := 0;
            end;

            trigger OnPreDataItem()
            begin
                JobSetup.Get();
                //MESSAGE('Setup Val is %1',JobSetup."Export Prouct Code");
                //CurrReport.CREATETOTALS(AGValGL);
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
        JobSetup: Record "Jobs Setup";
        CurrExc: Record "Currency Exchange Rate";
        UOM: Record "Unit of Measure";
        ResCount: Integer;
        CountLp: Integer;
        CountN: Integer;
        DataStor: array[15] of Decimal;
        GLStrT: Decimal;
        FishPer: Decimal;
        FishPerAvg: Decimal;
        Qty: Decimal;
        Prc: Decimal;
        PrdPrc: Decimal;
        NairaVal: Decimal;
        ExpVal: Decimal;
        QtyB: Decimal;
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
        NairaValBTot: Decimal;
        UOMCd: Code[10];
        "No.B": Code[10];
        ETA: array[2] of Date;
        VESSEL_PERFORMANCE_ANALYSISCaptionLbl: Label 'VESSEL PERFORMANCE ANALYSIS';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VESS_CaptionLbl: Label 'VESS.';
        Job__Cycle_Day__Manual__CaptionLbl: Label 'CYC';
        Job__Fishing_Day__Manual__CaptionLbl: Label 'FISH';
        Job__Lost_At_Sea__Manual__CaptionLbl: Label 'LOST';
        Job__Port_Day__Manual__CaptionLbl: Label 'PORT';
        FishPerCaptionLbl: Label '% Fish';
        NairaVal_ExpValCaptionLbl: Label 'LOC =N=';
        NairaValCaptionLbl: Label 'REVENUE';
        NairaValBCaptionLbl: Label 'Budget';
        NairaVal_NairaValBCaptionLbl: Label 'VARIANCE';
        AGValTotCaptionLbl: Label 'AGO';
        AGOPctCaptionLbl: Label 'AGO %';
        DirectCaptionLbl: Label 'DIRECT';
        GMarginCaptionLbl: Label 'MARGIN';
        GMPctCaptionLbl: Label 'GM %';
        IndirectCaptionLbl: Label 'INDIRECT';
        ProfitCaptionLbl: Label 'PROFIT';
        ExpValCaptionLbl: Label 'EXP =N=';
        CountNCaptionLbl: Label 'S No.';
        QuantityCaptionLbl: Label 'Quantity';
        PriceCaptionLbl: Label 'Price';
        Product_PriceCaptionLbl: Label 'Product Price';
        Naira_ValueCaptionLbl: Label 'Naira Value';
        Export_ValueCaptionLbl: Label 'Export Value';
        "S.No": Integer;

    [Scope('OnPrem')]
    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        "No.B" := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);    //Requip Code Name
    end;

    [Scope('OnPrem')]
    procedure GetItPrice(JNos: Code[20]; Nos: Code[20]; PDays: Date): Decimal
    begin
        /*IF job3.GET(JNos) THEN;
        Itempr.SETRANGE(Itempr."Item No.",Nos);
        Itempr.SETRANGE(Itempr."Starting Date",0D,PDays);
        Itempr.SETRANGE(Itempr."Price Group Code",job3."Price Group Code");
        IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE
         BEGIN
           Itempr.SETRANGE(Itempr."Price Group Code",JobSetup."Default Price Group Code");
           IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE
           BEGIN
             Prc:=0;
             IF Flag THEN MESSAGE('Price Missing for Item %1',Nos);
           END;
         END;
        EXIT(Prc);*///dik
    end;

    [Scope('OnPrem')]
    procedure Cost()
    begin
    end;
}
