report 77151 "Voyage P&L Ledger Line A"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyagePLLedgerLineA.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Location Code", "Work Type Code") WHERE("Location Code" = CONST('CRM-ASL'));
            RequestFilterFields = "Job No.", "Work Type Code";
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
            column(a; a)
            {
            }
            column(Job__Lost_Days_; Job."Lost Days")
            {
            }
            column(Job_Ledger_Entry__Job_No__; "Job No.")
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
            column(Job_Ledger_Entry__Work_Type_Code_; "Work Type Code")
            {
            }
            column(Job_Ledger_Entry__No__; "No.")
            {
            }
            column(Job_Ledger_Entry__Work_Type_Code__Control17; "Work Type Code")
            {
            }
            column(Qty; Qty)
            {
            }
            column(PrdPrc; PrdPrc)
            {
            }
            column(NairaVal; NairaVal)
            {
            }
            column(Qty_Control23; Qty)
            {
            }
            column(PrdPrc_Control1000000002; PrdPrc)
            {
            }
            column(Job_Ledger_Entry__Work_Type_Code__Control1000000004; "Work Type Code")
            {
            }
            column(NairaVal_Control1000000005; NairaVal)
            {
            }
            column(TotalFor; TotalFor)
            {
            }
            column(Qty_Control25; Qty)
            {
            }
            column(PrdPrc_Control1000000003; PrdPrc)
            {
            }
            column(NairaVal_Control1000000007; NairaVal)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
            {
            }
            column(QtyCaption; QtyCaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(N_Caption; N_CaptionLbl)
            {
            }
            column(Job__Lost_Days_Caption; Job__Lost_Days_CaptionLbl)
            {
            }
            column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
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
            column(QtyCaption_Control1000000082; QtyCaption_Control1000000082Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000083; EmptyStringCaption_Control1000000083Lbl)
            {
            }
            column(N_Caption_Control1000000084; N_Caption_Control1000000084Lbl)
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
            column(Job_Ledger_Entry_Entry_No_; "Job Ledger Entry"."Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                Qty:=Quantity*-1;
                Itempr.SETRANGE(Itempr."Item No.","No.");
                Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date");
                IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE
                BEGIN
                  Prc:=0;
                  IF Flag THEN MESSAGE('Price Missing for Item %1',Itempr."Item No.");
                END;
                PrdPrc:=Qty*Prc;
                  */ //#1

            end;

            trigger OnPreDataItem()
            begin
                /*
                LastFieldNo := FIELDNO("Work Type Code");
                CurrReport.CREATETOTALS(PrdPrc,NairaVal,Qty);
                */  //#1

            end;
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
            column(Qty_Control1000000134; Qty)
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
            column(Sea_Food_categories__Sea_food_code_Caption; FieldCaption("Sea food code"))
            {
            }
            dataitem("Job Ledger Entry Rep"; "Job Ledger Entry")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING("Job No.", "Location Code", GroupSort) WHERE("Location Code" = CONST('CRM-ASL'));
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
                    /*
                    Qty:=Quantity*-1;
                    Itempr.SETRANGE(Itempr."Item No.","No.");
                    Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date");
                    IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE Prc:=0;
                    */ //#1

                end;

                trigger OnPreDataItem()
                begin
                    /*
                    "Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Job Ledger Entry Rep"."Job No.");
                    LastFieldNo := FIELDNO(GroupSort);
                    CurrReport.CREATETOTALS(PrdPrc2,NairaVal2,Qty);
                    */  //#1

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
                    /*
                    Syntesis(Code,"Pack Size",Brand); //Compose No.
                    QtyB:="Budget Quantity";
                    Itempr.SETRANGE(Itempr."Item No.","No.B");
                    Itempr.SETRANGE(Itempr."Starting Date",0D,TODAY);
                    IF Itempr.FIND('+') THEN PrcB:=Itempr."Unit Price" ELSE PrcB:=0;
                    PrdPrcB:=QtyB*PrcB;
                     */  //#1

                end;

                trigger OnPreDataItem()
                begin
                    /*
                    "Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Job catch Default"."No.");
                    LastFieldNo := FIELDNO(GroupSort);
                    CurrReport.CREATETOTALS(PrdPrcB,NairaValB,QtyB);
                      */  //#1

                end;
            }

            trigger OnAfterGetRecord()
            begin
                /*
                A1[1]:=0;A1[2]:=0;A1[3]:=0;A1[4]:=0;
                A2[1]:=0;A2[2]:=0;A2[3]:=0;A2[4]:=0;
                 */  //#

            end;

            trigger OnPreDataItem()
            begin
                /*
                CurrReport.CREATETOTALS(PrdPrc2,NairaVal2,Qty);
                CurrReport.CREATETOTALS(PrdPrcB,NairaValB,QtyB);
                */  //#1

            end;
        }
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Document No.", "Gen. Prod. Posting Group") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'));
            column(Value_Entry__Document_No__; "Document No.")
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L_; "Cost Posted to G/L")
            {
            }
            column(Value_Entry__Gen__Prod__Posting_Group_; "Gen. Prod. Posting Group")
            {
            }
            column(Cost_Posted_to_G_L_; -"Cost Posted to G/L")
            {
            }
            column(GPPGDesc; GPPGDesc)
            {
            }
            column(ValQty; ValQty)
            {
            }
            column(ValRate; ValRate)
            {
            }
            column(Cost_Posted_to_G_L__Control1000000090; -"Cost Posted to G/L")
            {
            }
            column(TotalFor_Control1000000091; TotalFor)
            {
            }
            column(Value_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Value_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Value Entry"."Document No.");    #1
            end;
        }
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            column(DataStor_3_; DataStor[3])
            {
            }
            column(Text03; Text03)
            {
            }
            column(Text04; Text04)
            {
            }
            column(DataStor_4_; DataStor[4])
            {
            }
            column(DataStor_5_; DataStor[5])
            {
            }
            column(Text05; Text05)
            {
            }
            column(Text06; Text06)
            {
            }
            column(DataStor_6_; DataStor[6])
            {
            }
            column(DataStor_7_; DataStor[7])
            {
            }
            column(DataStor_8_; DataStor[8])
            {
            }
            column(Text07; Text07)
            {
            }
            column(Text08; Text08)
            {
            }
            column(TotDirExp; TotDirExp)
            {
            }
            column(Text09; Text09)
            {
            }
            column(PeopleOnVoy; PeopleOnVoy)
            {
            }
            column(expcnt; expcnt)
            {
            }
            column(ResCount; ResCount)
            {
            }
            column(ExpTonnage; ExpTonnage)
            {
            }
            column(Text10; Text10)
            {
            }
            column(GrossPerct; GrossPerct)
            {
            }
            column(Text11; Text11)
            {
            }
            column(GrossMarg; GrossMarg)
            {
            }
            column(Text13; Text13)
            {
            }
            column(Text14; Text14)
            {
            }
            column(DataStor_13_; DataStor[13])
            {
            }
            column(DataStor_14_; DataStor[14])
            {
            }
            column(DataStor_12_; DataStor[12])
            {
            }
            column(Text12; Text12)
            {
            }
            column(TotIndirExp; TotIndirExp)
            {
            }
            column(Text17; Text17)
            {
            }
            column(NetProfit; NetProfit)
            {
            }
            column(Text15; Text15)
            {
            }
            column(NetProfPerct; NetProfPerct)
            {
            }
            column(Text11_Control1000000064; Text11)
            {
            }
            column(Integer_Number; Number)
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
        TotalFor: Label 'Total';
        "---": Integer;
        Job: Record Job;
        Job2: Record Job;
        Itempr: Record "Item Ledger Entry";
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobSetUp: Record "Jobs Setup";
        JBudLn: Record "Job Ledger Entry";
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
        Text08: Label 'Clearing & FWRD. & NPA';
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
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        QtyCaptionLbl: Label 'Quantity';
        EmptyStringCaptionLbl: Label '$';
        N_CaptionLbl: Label '=N=';
        Job__Lost_Days_CaptionLbl: Label 'Lost Days';
        ETACaptionLbl: Label 'Label1000000010';
        ETDCaptionLbl: Label 'Label1000000014';
        CycleDayCaptionLbl: Label 'Cycle Day';
        FishgDayCaptionLbl: Label 'Fishing Day';
        LostDayCaptionLbl: Label 'Lost At Sea';
        PortDayCaptionLbl: Label 'Port Day';
        QtyCaption_Control1000000082Lbl: Label 'Quantity';
        EmptyStringCaption_Control1000000083Lbl: Label '$';
        N_Caption_Control1000000084Lbl: Label '=N=';
        RateCaptionLbl: Label 'Rate';
        Bud__Qty_CaptionLbl: Label 'Bud. Qty.';
        Bud___CaptionLbl: Label 'Bud. $';
        Bud___N_CaptionLbl: Label 'Bud. =N=';
        Var___N_CaptionLbl: Label 'Var. =N=';

    [Scope('OnPrem')]
    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        /*
        //Syntesis Item Code Name
        IF UOM.GET(Pk) THEN UOMCd:=UOM."Catch Code";  //Get Unit of measure Code
        ItemVar:=FORMAT(Cd)+UOMCd+COPYSTR(Br,1,1);    //Requip Code Name
        "No.B":=ItemVar;
         */  //#1

    end;

    [Scope('OnPrem')]
    procedure BIN()
    begin
        /*  //AGO Credit from G/L Entry
          GLEntry.SETCURRENTKEY(GLEntry."G/L Account No.",GLEntry."Job No.",GLEntry."Gen. Prod. Posting Group");
          GLEntry.SETRANGE(GLEntry."G/L Account No.",JobSetUp."AGO Account");
          GLEntry.SETRANGE(GLEntry."Job No.","Job No.");
          GLEntry.SETRANGE(GLEntry."Gen. Prod. Posting Group",JobSetUp."AGO Posting Code");
          IF GLEntry.FIND('-') THEN
          REPEAT
             DataStor[15]:=DataStor[15]+GLEntry.Amount;
          UNTIL GLEntry.NEXT()=0;
        */
        /*IF ("Gen. Prod. Posting Group"=JobSetUp."AGO Posting Code")
          //OR
          // ("Gen. Prod. Posting Group"=JobSetUp."LUB.  Posting Code")
        THEN
        BEGIN
          "Cost Posted to G/L":="Cost Posted to G/L"-DataStor[15];
          ValQty:=-"Valued Quantity"
        END
        ELSE
          ValQty:=0;
        */

    end;
}

