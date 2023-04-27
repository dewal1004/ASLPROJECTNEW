report 50140 "Vessel Perf Grpg OLD VJ2"
{
    // XVal[1]::Nairaval
    // XVal[2]::ExpVal
    // XVal[3]::NairaVal
    // XVal[4]::AGVal
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VesselPerfGrpgOLDVJ2.rdlc';


    dataset
    {
        dataitem(Job; Job)
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
            column(CountZ; CountZ)
            {
            }
            column(Job__No___Control1000000050; "No.")
            {
            }
            column(Skipper; Skipper)
            {
            }
            column(Country; Country)
            {
            }
            column(Job__Cycle_Day__Manual___Control1000000092; "Cycle Day (Manual)")
            {
            }
            column(Job__Fishing_Day__Manual___Control1000000093; "Fishing Day (Manual)")
            {
            }
            column(Job__Lost_At_Sea__Manual___Control1000000096; "Lost At Sea (Manual)")
            {
            }
            column(Job__Port_Day__Manual___Control1000000103; "Port Day (Manual)")
            {
            }
            column(FishPer_Control1000000104; FishPer)
            {

            }
            column(TotXVal_2_; TotXVal[2])
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
            column(TotXVal_9_; TotXVal[9])
            {

            }
            column(TotXVal_1__TotXVal_2_; TotXVal[1] - TotXVal[2])
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
            column(PrtXVal_2_Caption; PrtXVal_2_CaptionLbl)
            {
            }
            column(CountZCaption; CountZCaptionLbl)
            {
            }
            column(CountryCaption; CountryCaptionLbl)
            {
            }
            column(SkipperCaption; SkipperCaptionLbl)
            {
            }
            column(Job_No_Caption; Job_No_CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Avg_Caption; Avg_CaptionLbl)
            {
            }
        }
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
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
            column(ExpVal; ExpVal)
            {
            }
            column(Job_Ledger_Entry___No__; "No.")
            {
            }
            column(z; NairaVal - ExpVal)
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
            column(Job_Ledger_Entry__Entry_No_; "Entry No.")
            {
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
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
            }
            dataitem("Value Entry"; "Value Entry")
            {
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
            }
            dataitem("Integer"; "Integer")
            {
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
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control3)
                {
                    ShowCaption = false;
                    field("Font Size"; FontSize)
                    {
                        ApplicationArea = All;
                    }
                    field("Page Orientation"; PageOrientation)
                    {
                        ApplicationArea = All;
                    }
                    field("Job No"; Job."No.")
                    {
                        TableRelation = Job;
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
        PageOrientation := 2;
        FontSize := 7;
    end;

    var
        JobSetup: Record "Jobs Setup";
        RateSetup: Record "P & L Rates";
        CurrExc: Record "Currency Exchange Rate";
        UOM: Record "Unit of Measure";
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
        "GLGPP Caption": Code[10];
        CountG: Integer;
        FGVal: Decimal;
        EGVal: Decimal;
        Skipper: Text[30];
        Country: Text[30];
        "-------": Integer;
        // xlApp: Automation BC;
        // xlBook: Automation BC;
        // xlSheet: Automation BC;
        // Send2Excel: Boolean;
        // TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
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
        PrtXVal_2_CaptionLbl: Label 'EXP =N=';
        CountZCaptionLbl: Label 'S No.';
        CountryCaptionLbl: Label 'Country';
        SkipperCaptionLbl: Label 'Skipper';
        Job_No_CaptionLbl: Label 'Job No.';
        TotalCaptionLbl: Label 'Total';
        Avg_CaptionLbl: Label 'Avg.';
        QuantityCaptionLbl: Label 'Quantity';
        PriceCaptionLbl: Label 'Price';
        Product_PriceCaptionLbl: Label 'Product Price';
        Naira_ValueCaptionLbl: Label 'Naira Value';
        Export_ValueCaptionLbl: Label 'Export Value';
        Itempr: Record "Sales Price";
        JBudLn: Record "Job Planning Line";

    [Scope('OnPrem')]
    procedure Syntesis2(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
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

    /*[Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin
        xlSheet.Range(GetCol(Col) + Format(Row)).Value := ValueText;
        if Bold then
            xlSheet.Range(GetCol(Col) + Format(Row)).Font.Bold := Bold;
        if Italic then
            xlSheet.Range(GetCol(Col) + Format(Row)).Font.Italic := Italic;
        if Underline then
            xlSheet.Range(GetCol(Col) + Format(Row)).Font.Underline := Underline;
        xlSheet.Range(GetCol(Col) + Format(Row)).Font.Size := FontSize;
    end;

    [Scope('OnPrem')]
    procedure GetCol(CN: Integer): Text[30]
    var
        xlColID: Text[10];
        x: Integer;
        c: Integer;
        i: Integer;
    begin
        xlColID := '';
        if CN <> 0 then begin
            x := CN - 1;
            c := 65 + x mod 26;
            xlColID[10] := c;
            i := 10;
            while x > 25 do begin
                x := x div 26;
                i := i - 1;
                c := 64 + x mod 26;
                xlColID[i] := c;
            end;
            for x := i to 10 do
                xlColID[1 + x - i] := xlColID[x];
        end;
        exit(xlColID);
    end;*/
}

