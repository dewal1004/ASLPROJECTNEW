report 50993 "Voyage P&L Ledger LineP"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyagePLLedgerLineP.rdlc';
    Caption = 'Voyage P&L Ledger LineP';
    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
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
        TotalFor: Label 'Total';
        Job: Record Job;
        Coutry: Record "Country/Region";
        Res: Record Resource;
        PrdPrc: Decimal;
        NairaVal: Decimal;
        Qty: Decimal;
        PntStor: array[8] of Decimal;
        ETD: Date;
        ETA: Date;
        CycleDay: Decimal;
        PortDay: Decimal;
        LostDay: Decimal;
        FishgDay: Decimal;
        a: Decimal;
        Vess: Text[30];
        Text18: Label 'VOYAGE PROFIT AND LOSS STATEMENT';
        Text21: Label 'Shrimp Points';
        Text22: Label 'Fish Points';
        Text23: Label 'Total Points';
        Text24: Label 'Avg. Shrimp Points';
        Text25: Label 'Avg. Fish Points';
        Text26: Label 'Avg. Total Points';
        Text27: Label 'Exchange Rate';
        UOM: Record "Unit of Measure";
        UOMCd: Code[10];
        ItemVar: Code[10];
        "No.B": Code[10];
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
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        ItemVar := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);    //Requip Code Name
        "No.B" := ItemVar;
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
