report 60153 "Voyage P&L Ledger LineT"
{
    // "Job Ledger Entry"."Total Price"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyagePLLedgerLineT.rdlc';


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
            column(SeaDay; SeaDay)
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
            column(SeaDayCaption; SeaDayCaptionLbl)
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
            column(Job_Ledger_Entry__No__Caption_Control1000000085; FieldCaption("No."))
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Job Ledger Entry"."Phase Code")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Qty := Quantity * -1;
                Itempr.SetRange(Itempr."Item No.", "No.");
                // Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date"); & u
                if Itempr.Find('+') then Prc := Itempr1."Unit Price" else Prc := 0;
                PrdPrc := Qty * Prc;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Work Type Code");
                CurrReport.CreateTotals(PrdPrc, NairaVal, Qty);

                CurrReport.ShowOutput(CurrReport.TotalsCausedBy = "Job Ledger Entry".FieldNo("Job No."));
                if (CurrReport.TotalsCausedBy = "Job Ledger Entry".FieldNo("Job No.")) then begin
                    if Job.Get("Job No.") then;
                    ETD := Job."Starting Date";
                    ETA := Job."Ending Date";

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
                        CycleDay := ETA - ETA2;
                    Job.CalcFields(Job."Lost Days");
                    if Job."Lost At Sea (Manual)" <> 0 then
                        LostDay := Job."Lost At Sea (Manual)"
                    else
                        LostDay := Job."Lost Days";
                    if Job."Fishing Day (Manual)" <> 0 then
                        SeaDay := Job."Fishing Day (Manual)"
                    else
                        SeaDay := Job."Sea Days";
                    if Job."Port Day (Manual)" <> 0 then
                        PortDay := Job."Port Day (Manual)"
                    else
                        PortDay := CycleDay - (SeaDay + LostDay);

                    //Find Total Tonnage of Export
                    //Job.SETFILTER(Job."Task Filter",'SHR');
                    Job.CalcFields(Job."Product Quantity", Job."Points Actual");
                    ExpTonnage := Job."Product Quantity" / 1000;
                    PntStor[1] := Job."Points Actual";

                    // Job.SETFILTER(Job."Task Filter",'');
                    Job.CalcFields(Job."Points Actual");
                    PntStor[3] := Job."Points Actual";
                    PntStor[2] := PntStor[3] - PntStor[1];

                    if SeaDay <> 0 then begin
                        PntStor[4] := PntStor[1] / SeaDay + LostDay;
                        PntStor[5] := PntStor[2] / SeaDay + LostDay;
                        PntStor[6] := PntStor[3] / SeaDay + LostDay;
                    end;
                    Job.Validate(Job."Net Incentive Actual");
                    DataStor[3] := Job."Net Incentive Actual";


                    JobSetUp.Get;
                    a := 100;

                    //Calculate the Fixed Salaries
                    JBudLn.SetRange(JBudLn."Job No.", Job."No.");
                    //JBudLn.SETRANGE(JBudLn.Type,JBudLn.Type::Resource);
                    if JBudLn.Find('-') then begin
                        ///JBudLn.CALCFIELDS(JBudLn.Counter);
                        /// PeopleOnVoy:=JBudLn.Counter;
                    end
                    else
                        PeopleOnVoy := Job."No. of Deck Hands" + 2;
                    DataStor[4] := JobSetUp."Fixed Salary Rate" * CycleDay * (PeopleOnVoy);

                    //Travelling Expenses for Expatriate
                    repeat
                        Employee.SetCurrentKey(Employee."Resource No.");
                        Employee.SetRange(Employee."Resource No.", JBudLn."No.");
                        //   Employee.SETFILTER(Employee."Country Code",'<>NG');
                        if Employee.Find('-') then expcnt := expcnt + 1;
                        ResCount := ResCount + 1;
                    until JBudLn.Next() = 0;
                    DataStor[5] := JobSetUp."Travelling Expenses Rate" * expcnt * CycleDay;

                    //License Fee
                    //IF Coutry.GET(Job."Country Code") THEN
                    DataStor[6] := Coutry."License Fees Rate" * CycleDay
                end;
                DataStor[6] := JobSetUp."License Fee Rate" * CycleDay;

                if Loc.Get(Job.Vessel) then begin
                    DataStor[7] := Loc."Insurance Rate" * CycleDay;
                    DataStor[13] := Loc."Depreciation Rate" * CycleDay;
                    DataStor[14] := Loc."Interest Rate" * CycleDay;
                    Vess := Loc.Name;
                end;

                DataStor[8] := JobSetUp.Clearing_Fwrd_NPA * ExpTonnage;
                DataStor[12] := JobSetUp."Shore Overheads" * CycleDay;

                //AGO Credit from G/L Entry
                GLEntry.SetCurrentKey(GLEntry."G/L Account No.", GLEntry."Job No.", GLEntry."Gen. Prod. Posting Group");
                GLEntry.SetRange(GLEntry."G/L Account No.", JobSetUp."AGO Account");
                GLEntry.SetRange(GLEntry."Job No.", "Job No.");
                GLEntry.SetRange(GLEntry."Gen. Prod. Posting Group", JobSetUp."AGO Posting Code");
                if GLEntry.Find('-') then
                    repeat
                        DataStor[15] := DataStor[15] + GLEntry.Amount;
                    until GLEntry.Next() = 0;

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
        }
        dataitem("Job Ledger Entry Rep"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Location Code", GroupSort) WHERE("Location Code" = CONST('CRM-ASL'));
            column(Job_Ledger_Entry_Rep_GroupSort; GroupSort)
            {
            }
            column(Job_Ledger_Entry_Rep__No__; "No.")
            {
            }
            column(NairaVal2; NairaVal2)
            {
            }
            column(PrdPrc2; PrdPrc2)
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
            column(Job_Ledger_Entry_Rep_Entry_No_; "Job Ledger Entry Rep"."Phase Code")
            {
            }
            column(Job_Ledger_Entry_Rep_Job_No_; "Job No.")
            {
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = "No." = FIELD("Job No."), GroupSort = FIELD(GroupSort);
                DataItemTableView = SORTING("No.", GroupSort);
                column(Job_catch_Default__No__; "No.")
                {
                }
                column(Job_catch_Default_Code; Code)
                {
                }
                column(Job_catch_Default_Description; Description)
                {
                }
                column(Job_catch_Default__Pack_Size_; "Pack Size")
                {
                }
                column(Job_catch_Default_Brand; Brand)
                {
                }
                column(Job_catch_Default__Budget_Quantity_; "Budget Quantity")
                {
                }
                column(Job_catch_Default_GroupSort; GroupSort)
                {
                }
                column(Job_catch_Default__Budget_Quantity__Control1000000107; "Budget Quantity")
                {
                }
                column(Job_catch_Default_Table_Name; "Table Name")
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                Qty := Quantity * -1;
                Itempr.SetRange(Itempr."Item No.", "No.");
                // Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date"); & u
                if Itempr.Find('+') then Prc := Itempr1."Unit Price" else Prc := 0;
                PrdPrc2 := Qty * Prc;
            end;

            trigger OnPreDataItem()
            begin
                "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", "Job Ledger Entry Rep"."Job No.");
                LastFieldNo := FieldNo(GroupSort);
                CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
            end;
        }
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Document No.", "Gen. Prod. Posting Group") WHERE("Document No." = FILTER('I' ..), "Gen. Prod. Posting Group" = FILTER(<> 'FIS'));
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
                "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", "Value Entry"."Document No.");
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
            column(GrossPerct_Control1000000063; GrossPerct)
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
        Itempr1: Record Item;
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobSetUp: Record "Jobs Setup";
        JBudLn: Record "Job Ledger Entry";
        Employee: Record Employee;
        Loc: Record Location;
        Coutry: Record "Country/Region";
        GLEntry: Record "G/L Entry";
        Prc: Decimal;
        PrdPrc: Decimal;
        PrdPrc2: Decimal;
        CurrRate: Decimal;
        NairaVal: Decimal;
        NairaVal2: Decimal;
        GPPGDesc: Text[30];
        DataStor: array[15] of Decimal;
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
        Qty: Decimal;
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
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        QtyCaptionLbl: Label 'Quantity';
        EmptyStringCaptionLbl: Label '$';
        N_CaptionLbl: Label '=N=';
        Job__Lost_Days_CaptionLbl: Label 'Lost Days';
        ETACaptionLbl: Label 'Label1000000010';
        ETDCaptionLbl: Label 'Label1000000014';
        CycleDayCaptionLbl: Label 'Cycle Day';
        SeaDayCaptionLbl: Label 'Fishing Day';
        LostDayCaptionLbl: Label 'Lost At Sea';
        PortDayCaptionLbl: Label 'Port Day';
        QtyCaption_Control1000000082Lbl: Label 'Quantity';
        EmptyStringCaption_Control1000000083Lbl: Label '$';
        N_Caption_Control1000000084Lbl: Label '=N=';
        Itempr: Record "Item Ledger Entry";
}

