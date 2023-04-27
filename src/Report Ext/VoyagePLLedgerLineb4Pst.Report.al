report 50200 "Voyage P&L Ledger Line b4 Pst"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyagePLLedgerLineb4Pst.rdlc';
    Permissions = TableData "Job Ledger Entry" = rimd;

    dataset
    {
        dataitem("Sea Food categories"; "Sea Food categories")
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
            column(Text18; Text18)
            {
            }
            column(JobNo; JobNo)
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
            column(PntStor_1_; PntStor[1])
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
            column(TotalFor; TotalFor)
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
            column(Var___N_Caption_Control1000000203; Var___N_Caption_Control1000000203Lbl)
            {
            }
            column(Bud___N_Caption_Control1000000205; Bud___N_Caption_Control1000000205Lbl)
            {
            }
            column(Bud___Caption_Control1000000206; Bud___Caption_Control1000000206Lbl)
            {
            }
            column(Bud__Qty_Caption_Control1000000207; Bud__Qty_Caption_Control1000000207Lbl)
            {
            }
            column(RateCaption_Control1000000208; RateCaption_Control1000000208Lbl)
            {
            }
            column(N_Caption_Control1000000209; N_Caption_Control1000000209Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000210; EmptyStringCaption_Control1000000210Lbl)
            {
            }
            column(QuantityCaption_Control1000000211; QuantityCaption_Control1000000211Lbl)
            {
            }
            column(Sea_Food_categories__Sea_food_code_Caption; FieldCaption("Sea food code"))
            {
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING("Job No.", GroupSort, "No.") WHERE(Type = CONST(Item), "Gen. Prod. Posting Group" = CONST('FIS'));
                column(Job_Ledger_Entry_GroupSort; GroupSort)
                {
                }
                column(Job_Ledger_Entry__No__; "No.")
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
                column(Job_Ledger_Entry_GroupSort_Control1000000069; GroupSort)
                {
                }
                column(Item_Description; Item.Description)
                {
                }
                column(NairaVal2_Control1000000001; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000002; PrdPrc2)
                {
                }
                column(Qty_Control1000000003; Qty)
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
                column(Job_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Job_Ledger_Entry_Job_No_; "Job No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Location.Reset;
                    Location.Get("Job Ledger Entry"."Location Code");
                    if (Location."Location Type" <> Location."Location Type"::Vessel) then
                        CurrReport.Skip;
                    if ("Job Ledger Entry"."Reason Code" <> 'CATCH') then
                        CurrReport.Skip;

                    Item.SetCurrentKey("Gen. Prod. Posting Group");
                    Item.SetRange(Item."No.", "Job Ledger Entry"."No.");
                    Item.SetRange(Item."Gen. Prod. Posting Group", 'FIS');
                    if not Item.Find('-') then
                        CurrReport.Skip;

                    Qty := Quantity * -1;
                    PrdPrc := Qty * GetItPrice("Job No.", "No.", "Posting Date");
                end;

                trigger OnPreDataItem()
                begin
                    //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Job Ledger Entry"."Job No.");
                    "Job Ledger Entry".SetRange("Job Ledger Entry"."Job No.", JobNo);
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                end;
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING("No.", GroupSort);
                column(No_B_; "No.B")
                {
                }
                column(NairaValB_Control1000000115; NairaValB)
                {
                }
                column(PrdPrcB_Control1000000116; PrdPrcB)
                {
                }
                column(QtyB_Control1000000117; QtyB)
                {
                }
                column(Job_catch_Default_GroupSort; GroupSort)
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
                end;

                trigger OnPreDataItem()
                begin
                    //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Job catch Default"."No.");
                    "Job catch Default".SetRange("Job catch Default"."No.", JobNo);
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                end;
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

    trigger OnPreReport()
    begin
        JobSetUp.Get;
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total';
        "---": Integer;
        Job: Record Job;
        Job2: Record Job;
        Itempr: Record Item;
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobSetUp: Record "Jobs Setup";
        RateSetUp: Record "P & L Rates";
        JBudLn: Record Job;
        Employee: Record Employee;
        Loc: Record Location;
        Coutry: Record "Country/Region";
        GLEntry: Record "G/L Entry";
        Res: Record Resource;
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
        Text08: Label 'Other Direct Cost';
        Text09: Label 'Total Direct Expenses';
        PntStor: array[8] of Decimal;
        ETD: Date;
        ETA: Date;
        ETA2: Date;
        CycleDay: Decimal;
        PortDay: Decimal;
        LostDay: Decimal;
        SeaDay: Decimal;
        FishgDay: Decimal;
        a: Decimal;
        expcnt: Integer;
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
        Text18: Label 'VOYAGE PROFIT AND LOSS STATEMENT';
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
        JobNo: Code[20];
        Location: Record Location;
        Item: Record Item;
        PrdPrcB2: Decimal;
        NairaValB2: Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        JobNoCaptionLbl: Label 'Label1000000163';
        ETACaptionLbl: Label 'Label1000000165';
        ETDCaptionLbl: Label 'Label1000000167';
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
        Var___N_Caption_Control1000000203Lbl: Label 'Var. =N=';
        Bud___N_Caption_Control1000000205Lbl: Label 'Bud. =N=';
        Bud___Caption_Control1000000206Lbl: Label 'Bud. $';
        Bud__Qty_Caption_Control1000000207Lbl: Label 'Bud. Qty.';
        RateCaption_Control1000000208Lbl: Label 'Rate';
        N_Caption_Control1000000209Lbl: Label '=N=';
        EmptyStringCaption_Control1000000210Lbl: Label '$';
        QuantityCaption_Control1000000211Lbl: Label 'Quantity';

    [Scope('OnPrem')]
    procedure Syntesis2(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        ItemVar := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);    //Requip Code Name
        "No.B" := ItemVar;
    end;

    [Scope('OnPrem')]
    procedure GetItPrice(JNos: Code[20]; Nos: Code[20]; PDays: Date): Decimal
    var
        job3: Record Job;
    begin

        if job3.Get(JNos) then;
        Itempr.SetRange(Itempr."No.", Nos);
        Itempr.SetRange(Itempr."Starting Date", 0D, PDays);
        //Itempr.SETRANGE(Itempr."Price Group Code",job3."Price Group Code");  #1
        if Itempr.Find('+') then
            Prc := Itempr."Unit Price" else begin
            //Itempr.SETRANGE(Itempr."Price Group Code",JobSetUp."Default Price Group Code");  #1
            if Itempr.Find('+') then
                Prc := Itempr."Unit Price" else begin
                Prc := 0;
                if Flag then Message('Price Missing for Item %1', Nos);
            end;
        end;
        exit(Prc);
    end;
}

