report 60151 "Voyage P&L Ledger LineX"
{
    // PeopleOnVoyJob."No. of Deck Hands"
    // expcnt  //
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyagePLLedgerLineX.rdlc';


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
                DecimalPlaces = 0 : 0;
            }
            column(Job__Sea_Days_; Job."Sea Days")
            {
            }
            column(Job__Lost_Days__Control1000000030; Job."Lost Days")
            {
                DecimalPlaces = 0 : 0;
            }
            column(PortDay; PortDay)
            {
                DecimalPlaces = 0 : 0;
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
            column(Job_Ledger_Entry_Quantity; Quantity)
            {
            }
            column(PrdPrc; PrdPrc)
            {
            }
            column(NairaVal; NairaVal)
            {
            }
            column(Job_Ledger_Entry_Quantity_Control23; Quantity)
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
            column(Job_Ledger_Entry_Quantity_Control25; Quantity)
            {
            }
            column(PrdPrc_Control1000000003; PrdPrc)
            {
            }
            column(NairaVal_Control1000000007; NairaVal)
            {
            }
            column(Job_Ledger_EntryCaption; Job_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
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
            column(Job__Sea_Days_Caption; Job__Sea_Days_CaptionLbl)
            {
            }
            column(Job__Lost_Days__Control1000000030Caption; Job__Lost_Days__Control1000000030CaptionLbl)
            {
            }
            column(PortDayCaption; PortDayCaptionLbl)
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Job Ledger Entry"."Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Quantity := Quantity * -1;
                Itempr.SetRange(Itempr."Item No.", "No.");
                // Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date"); & u
                if Itempr.Find('+') then Prc := Itempr1."Unit Price" else Prc := 0;
                PrdPrc := Quantity * Prc;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Work Type Code");
                CurrReport.CreateTotals(PrdPrc, NairaVal);
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
            column(NairaVal_Control1000000066; NairaVal)
            {
            }
            column(PrdPrc_Control1000000067; PrdPrc)
            {
            }
            column(Job_Ledger_Entry_Rep_Quantity; Quantity)
            {
            }
            column(Job_Ledger_Entry_Rep_GroupSort_Control1000000069; GroupSort)
            {
            }
            column(NairaVal_Control1000000071; NairaVal)
            {
            }
            column(PrdPrc_Control1000000072; PrdPrc)
            {
            }
            column(Job_Ledger_Entry_Rep_Quantity_Control1000000073; Quantity)
            {
            }
            column(Job_Ledger_Entry_Rep_GroupSort_Control1000000074; GroupSort)
            {
            }
            column(NairaVal_Control1000000075; NairaVal)
            {
            }
            column(PrdPrc_Control1000000076; PrdPrc)
            {
            }
            column(Job_Ledger_Entry_Rep_Quantity_Control1000000077; Quantity)
            {
            }
            column(TotalFor_Control1000000078; TotalFor)
            {
            }
            column(Job_Ledger_Entry_Rep_Entry_No_; "Job Ledger Entry Rep"."Entry No.")
            {
            }
            column(Job_Ledger_Entry_Rep_Job_No_; "Job No.")
            {
            }

            trigger OnPreDataItem()
            begin
                "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", "Job Ledger Entry Rep"."Job No.");
            end;
        }
        dataitem("Job Ledger Entry2"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("Job No.", "Entry Type", Type, "Gen. Prod. Posting Group", "No.") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'), Type = CONST(Item));
            column(Job_Ledger_Entry2__Total_Price__LCY__; "Total Price (LCY)")
            {
            }
            column(Job_Ledger_Entry2_Quantity; Quantity)
            {
            }
            column(Job_Ledger_Entry2__Work_Type_Code_; "Work Type Code")
            {
            }
            column(Job_Ledger_Entry2__No__; "No.")
            {
            }
            column(Job_Ledger_Entry2__Total_Price__LCY___Control1000000006; "Total Price (LCY)")
            {
            }
            column(GPPGDesc; GPPGDesc)
            {
            }
            column(Job_Ledger_Entry2__Total_Price__LCY___Control1000000019; "Total Price (LCY)")
            {
            }
            column(TotalFor_Control1000000020; TotalFor)
            {
            }
            column(Job_Ledger_Entry2_Entry_No_; "Job Ledger Entry2"."Entry No.")
            {
            }
            column(Job_Ledger_Entry2_Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
            {
            }

            trigger OnPreDataItem()
            begin
                "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", "Job Ledger Entry2"."Job No.");
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
            column(Text10; Text10)
            {
            }
            column(GrossPerct; GrossPerct)
            {
            }
            column(Text11; Text11)
            {
            }
            column(NairaVal_TotDirExp; NairaVal - TotDirExp)
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
        Itempr1: Record Item;
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobSetUp: Record "Jobs Setup";
        JBudLn: Record "Job Ledger Entry";
        Employee: Record Employee;
        Loc: Record Location;
        Prc: Decimal;
        PrdPrc: Decimal;
        CurrRate: Decimal;
        NairaVal: Decimal;
        GPPGDesc: Text[30];
        DataStor: array[15] of Decimal;
        Text03: Label 'Catch Incentive';
        Text04: Label 'Salaries & Wages';
        Text05: Label 'Travelling Expenses';
        Text06: Label 'License Fees';
        Text07: Label 'Insurance';
        Text08: Label 'Clearing & FWRD. & NPA';
        Text09: Label 'Total Direct Expenses';
        ETD: Date;
        ETA: Date;
        CycleDay: Decimal;
        PortDay: Decimal;
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
        GrossPerct: Decimal;
        NetProfPerct: Decimal;
        TotPrice: Decimal;
        NetProfit: Decimal;
        Job_Ledger_EntryCaptionLbl: Label 'Job Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        EmptyStringCaptionLbl: Label '$';
        N_CaptionLbl: Label '=N=';
        Job__Lost_Days_CaptionLbl: Label 'Lost Days';
        ETACaptionLbl: Label 'Label1000000010';
        ETDCaptionLbl: Label 'Label1000000014';
        CycleDayCaptionLbl: Label 'Cycle Day';
        Job__Sea_Days_CaptionLbl: Label 'Fishing Day';
        Job__Lost_Days__Control1000000030CaptionLbl: Label 'Lost At Sea';
        PortDayCaptionLbl: Label 'Port Day';
        Itempr: Record "Item Ledger Entry";
}

