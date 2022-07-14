report 50026 "Consolidated Voyage P &  L2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ConsolidatedVoyagePL2.rdlc';
    Caption = 'Consolidated Voyage P&L2';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;
    Permissions = TableData "Job Ledger Entry" = rimd,
                  TableData "Value Entry" = rimd;

    dataset
    {
        dataitem(Jobss; Job)
        {
            DataItemTableView = SORTING("Ending Date") WHERE("Voyage Ended" = CONST(true));
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(DataStor_3_; DataStor[3])
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
            column(DataStor_4_; DataStor[4])
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
            column(TotalPrice; TotalPrice)
            {
            }
            column(CurrReport_PAGENOr; CurrReport.PageNo)
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
            column(ETDConsCaption; ETDConsCaptionLbl)
            {
            }
            column(ETAConsCaption; ETAConsCaptionLbl)
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
                    if Loc.Get(Vessel) then begin
                        if Loc."Begining ETA" <> 0D then
                            ETA2 := Loc."Begining ETA"
                        else
                            ETA2 := 20030101D;
                    end else
                        ETA2 := 20030101D;
                end;

                if "Cycle Day (Manual)" <> 0 then begin
                    CycleDay := "Cycle Day (Manual)"
                end else begin
                    if ETA2 <> 0D then begin
                        CycleDay := ETA - ETA2;
                    end;
                end;
                // CALCFIELDS("Lost Days");
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
                //SETFILTER("Task Filter",'SHR');  #1
                //CALCFIELDS("Product Quantity","Points Actual");
                "Product Quantity" :=
                  Jobss.ProductQty("No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                "Points Actual" :=
                  Jobss.PointsActual("No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                ExpTonnage := "Product Quantity" / 1000;
                PntStor[1] := "Points Actual";

                //SETFILTER("Task Filter",'');  #1
                //CALCFIELDS("Points Actual");
                "Points Actual" :=
                  Jobss.PointsActual("No.", Job.GetFilter("Date Filter"), '', '', '');
                PntStor[3] := "Points Actual";
                PntStor[2] := PntStor[3] - PntStor[1];

                if SeaDay <> 0 then begin
                    PntStor[4] := PntStor[1] / SeaDay;
                    PntStor[5] := PntStor[2] / SeaDay;
                    PntStor[6] := PntStor[3] / SeaDay;
                end;
                Validate("Net Incentive Actual");
                DataStor[3] := "Net Incentive Actual";
                //Jan 2005 start AAA
                CalcFields("Incentive (Hook Fish)", "Add/Ded. Crew");
                DataStor[3] := "Net Incentive Actual" + "Incentive (Hook Fish)" + "Add/Ded. Crew";
                //AAA Jan 2005 stop
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
                //DataStor[4]:=RateSetUp."Fixed Salary Rate"*CycleDay*(PeopleOnVoy);    //AAA Feb 2005



                //Travelling Expenses for Expatriate
                expcnt := 0;
                repeat
                    Employee.SetCurrentKey(Employee."Resource No.");
                    Employee.SetRange(Employee."Resource No.", JBudLn."Job No.");
                    Employee.SetFilter(Employee."Country/Region Code", '<>NG');
                    if Employee.Find('-') then expcnt := expcnt + 1;
                    ResCount := ResCount + 1;
                until JBudLn.Next() = 0;
                expcntTot := expcnt;
                //DataStor[5]:=RateSetUp."Travelling Expenses Rate"*expcnt*CycleDay; //AAA Feb 2005

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

                DataStor[8] := RateSetUp."Other Direct Cost" * CycleDay;
                DataStor[12] := RateSetUp."Shore Overheads" * CycleDay;
                TotalPrice += TotDirExp - TotPrice + DataStor[3] + DataStor[6] + DataStor[7] + DataStor[8];
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

                //Window.UPDATE(1,ROUND(10 / Countrs * 10000,1));
            end;

            trigger OnPreDataItem()
            begin
                GrossMarg := 0;
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
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", "Location Code", "Work Type Code") WHERE("Location Code" = CONST('CRM-ASL'));
                column(FirstDataItem; 1)
                {
                }
                column(JobLedger_No; "No.")
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
                column(Loc__Vessel_Endurance_; Loc."Vessel Endurance")
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
                column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
                {
                }
                column(QtyCaption; QtyCaptionLbl)
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
                column(TotalQty; TotalQty)
                {
                }
                column(Job_LedgerEntryNo; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    if Job.Get("Job No.") then;
                    ETD := Job."Starting Date";
                    ETA := Job."Ending Date";
                    if Res.Get(Job."Person Responsible") then;
                    //Cycle Day
                    Job2.Get(Job."No.");
                    Job2.SetRange(Job2.Vessel, Job.Vessel);    //Find last voyage
                    if Job2.Next(-1) <> 0 then begin
                        ETA2 := Job2."Ending Date";
                        //MESSAGE('%1',ETA2)
                    end else begin
                        Loc.Get(Job.Vessel);
                        ETA2 := Loc."Begining ETA";
                        //MESSAGE('2nd %1',ETA2);
                    end;
                    if Job."Cycle Day (Manual)" <> 0 then
                        CycleDay := Job."Cycle Day (Manual)"
                    else
                        if ETA2 <> 0D then begin
                            Cycledays := ETA - ETA2;
                        end;
                    CycleDay := Cycledays;

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
                    Job.SetFilter(Job."Task Filter", 'SHR');
                    //Job.CALCFIELDS(Job."Product Quantity",Job."Points Actual");
                    Job."Product Quantity" :=
                      Job.ProductQty("Job No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                    Job."Points Actual" :=
                      Job.PointsActual("Job No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                    ExpTonnage := Job."Product Quantity" / 1000;
                    PntStor[1] := Job."Points Actual";

                    Job.SetFilter(Job."Task Filter", '');
                    //Job.CALCFIELDS(Job."Points Actual");
                    Job."Points Actual" :=
                      Job.PointsActual("Job No.", Job.GetFilter("Date Filter"), '', '', '');
                    PntStor[3] := Job."Points Actual";
                    PntStor[2] := PntStor[3] - PntStor[1];

                    if SeaDay <> 0 then begin
                        PntStor[4] := PntStor[1] / SeaDay;
                        PntStor[5] := PntStor[2] / SeaDay;
                        PntStor[6] := PntStor[3] / SeaDay;
                    end;
                    Job.Validate(Job."Net Incentive Actual");
                    Job.CalcFields(Job."Incentive (Hook Fish)", Job."Add/Ded. Crew");
                    DataStor[3] := Job."Net Incentive Actual" + Job."Incentive (Hook Fish)" + Job."Add/Ded. Crew";

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
                        Employee.SetRange(Employee."Resource No.", JBudLn."No.");
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
                    /* IF Loc.GET(Job.Vessel) THEN
                     BEGIN
                       DataStor[7] :=Loc."Insurance Rate"*CycleDay;
                       DataStor[13]:=Loc."Depreciation Rate"*CycleDay;
                       DataStor[14]:=Loc."Interest Rate"*CycleDay;
                       Vess:=Loc.Name;
                     END;
                     */
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
                            GLEntry.SetRange(GLEntry."Job No.", "Job No.");
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
                    //END;

                    if Itempr."Currency Code" <> '' then
                        NairaVal := PrdPrc * CurrRate
                    //
                    else begin
                        NairaVal := PrdPrc * 1;
                        PrdPrc := 0;
                    end;
                    if InvtPostGrp.Get("Job Posting Group") then
                        GroupSort := InvtPostGrp.Category;

                    Modify;

                    if NairaVal <> 0 then NetProfPerct := NetProfit * 100 / NairaVal;

                    //License Fee
                    if Coutry.Get(Job."Fishing Country Code") then
                        DataStor[6] := Coutry."License Fees Rate" * CycleDay
                    else begin
                        DataStor[6] := RateSetUp."License Fee Rate" * CycleDay;
                        Coutry.Name := 'Nigeria';
                        // MESSAGE('%1',Coutry.Name);
                    end;
                    if Loc.Get(Job.Vessel) then begin
                        DataStor[7] := Loc."Insurance Rate" * CycleDay;
                        DataStor[13] := Loc."Depreciation Rate" * CycleDay;
                        DataStor[14] := Loc."Interest Rate" * CycleDay;
                        Vess := Loc.Name;
                    end;

                    DataStor[8] := RateSetUp."Other Direct Cost" * CycleDay;
                    DataStor[12] := RateSetUp."Shore Overheads" * CycleDay;
                    //Find Total Tonnage of Export
                    Job.SetFilter(Job."Task Filter", 'SHR');
                    //Job.CALCFIELDS(Job."Product Quantity",Job."Points Actual");
                    Job."Product Quantity" :=
                      Job.ProductQty("Job No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                    Job."Points Actual" :=
                      Job.PointsActual("Job No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                    ExpTonnage := Job."Product Quantity" / 1000;
                    PntStor[1] := Job."Points Actual";

                    Job.SetFilter(Job."Task Filter", '');
                    //Job.CALCFIELDS(Job."Points Actual");
                    Job."Points Actual" :=
                      Job.PointsActual("Job No.", Job.GetFilter("Date Filter"), '', '', '');
                    PntStor[3] := Job."Points Actual";
                    PntStor[2] := PntStor[3] - PntStor[1];

                    // Coutry.Name:='Nigeria';
                    //MESSAGE('%1',Coutry.Name);
                    TotalQty += "Job Ledger Entry".Quantity;
                    //MESSAGE('%1',TotalQty);
                    //MESSAGE('%1',DataStor[3]);
                    Qty := Quantity * -1;
                    ///ItemPrice := GetItPrice("Job No.","No.","Posting Date");
                    PrdPrc := Qty * ItemPrice;

                    if Job.Get("Job No.") then;
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
                        //END;///
                        if Job."Cycle Day (Manual)" <> 0 then
                            CycleDay := Job."Cycle Day (Manual)"
                        else
                            if ETA2 <> 0D then begin
                                CycleDay := ETA - ETA2;
                            end;

                        Job.CalcFields(Job."Lost Days");
                        if Job."Lost At Sea (Manual)" <> 0 then
                            LostDay := Job."Lost At Sea (Manual)"
                        else
                            LostDay := Job."Lost Days";
                        //IF Job."Fishing Day (Manual)"<>0 THEN
                        FishgDay := Job."Fishing Day (Manual)";
                        //ELSE FishgDay:=Job."Sea Days"-LostDay;
                        if Job."Port Day (Manual)" <> 0 then
                            PortDay := Job."Port Day (Manual)"
                        else
                            PortDay := CycleDay - (FishgDay + LostDay);
                        SeaDay := FishgDay + LostDay;

                        //Find Total Tonnage of Export
                        Job.SetFilter(Job."Task Filter", 'SHR');
                        //Job.CALCFIELDS(Job."Product Quantity",Job."Points Actual");
                        Job."Product Quantity" :=
                          Job.ProductQty("Job No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                        Job."Points Actual" :=
                          Job.PointsActual("Job No.", Job.GetFilter("Date Filter"), '', 'SHR', '');
                        ExpTonnage := Job."Product Quantity" / 1000;
                        PntStor[1] := Job."Points Actual";

                        Job.SetFilter(Job."Task Filter", '');
                        //Job.CALCFIELDS(Job."Points Actual");
                        Job."Points Actual" :=
                          Job.PointsActual("Job No.", Job.GetFilter("Date Filter"), '', '', '');
                        PntStor[3] := Job."Points Actual";
                        PntStor[2] := PntStor[3] - PntStor[1];

                        if SeaDay <> 0 then begin
                            PntStor[4] := PntStor[1] / SeaDay;
                            PntStor[5] := PntStor[2] / SeaDay;
                            PntStor[6] := PntStor[3] / SeaDay;
                            //
                        end;
                    end;
                    Job.Validate(Job."Net Incentive Actual");
                    Job.CalcFields(Job."Incentive (Hook Fish)", Job."Add/Ded. Crew");

                    DataStor[3] := Job."Net Incentive Actual" + Job."Incentive (Hook Fish)" + Job."Add/Ded. Crew";
                    //DataStor[3] := 123;
                    //MESSAGE('%1',DataStor[3]);

                    a := 100;
                    RateSetUp.SetRange(RateSetUp."Starting Date", 0D, Job."Ending Date");
                    if RateSetUp.Find('+') then;

                    if Itempr."Currency Code" <> '' then
                        NairaVal := PrdPrc * CurrRate
                    else begin
                        NairaVal := PrdPrc * 1;
                        PrdPrc := 0;
                    end;

                    //Prepare data for Sorting
                    if InvtPostGrp.Get("Job Posting Group") then begin
                        GroupSort := InvtPostGrp.Category;
                    end;
                    Modify;

                    "Job Ledger Entry"."Marked Rec" := true;
                    "Job Ledger Entry".Modify;

                end;

                trigger OnPreDataItem()
                begin
                    "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", Jb."No.");
                    TotalQty := 0;
                    DataStor[3] := 0;
                end;
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Gen. Prod. Posting Group", "Document No.", "Marked Rec") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'), "Marked Rec" = CONST(true));
                column(Table_ValueEntry; 1)
                {
                }
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
                column(Markedrec; "Value Entry"."Marked Rec")
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
                column(TotDirExp_TotPrice; TotDirExp - TotPrice)
                {
                }
                column(TotPrice; TotPrice)
                {
                }
                column(Value_Entry__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    //"Value Entry".SETRANGE("Posting Date","Period Start","Period End");

                    //"Value Entry".SETRANGE("Value Entry"."Document No.","Job Ledger Entry"."Job No.");

                    /*IF "Value Entry"."Document No." <> "Job Ledger Entry"."Job No." THEN
                      CurrReport.SKIP;
                    CurrReport.SHOWOUTPUT :=
                      CurrReport.TOTALSCAUSEDBY = "Value Entry".FIELDNO("Document No.");
                    CurrReport.SHOWOUTPUT(FALSE);
                    
                    CurrReport.SHOWOUTPUT :=
                      CurrReport.TOTALSCAUSEDBY = "Value Entry".FIELDNO("Gen. Prod. Posting Group");
                    */
                    if ProdPostGrp.Get("Gen. Prod. Posting Group") then
                        GPPGDesc := ProdPostGrp.Description
                    else
                        GPPGDesc := "Gen. Prod. Posting Group";
                    /*
                   IF "Value Entry"."Cost Posted to G/L"=0 THEN
                      CurrReport.SKIP;

                   IF "Value Entry"."Invoiced Quantity"=0 THEN
                      CurrReport.SKIP;

                   *///nitin
                    CountG := 0;
                    repeat
                        CountG := CountG + 1;
                        if ("Gen. Prod. Posting Group" = "GLGPP Caption"[CountG])
                        then begin
                            "Cost Posted to G/L" := "Cost Posted to G/L";
                            ValQty := -"Invoiced Quantity"
                        end
                        else
                            ValQty := 0;
                    until CountG >= 25;

                    if ("Gen. Prod. Posting Group" = JobSetUp."AGO Posting Code")
                    then
                        ValQty := -"Invoiced Quantity"
                    else
                        ValQty := 0;

                    if ValQty <> 0 then
                        ValRate := -"Cost Posted to G/L" / ValQty
                    else begin
                        ValRate := 0;
                        //"Cost Posted to G/L" := 0; dik
                    end;

                    TotPrice := TotPrice - "Cost Posted to G/L";

                end;

                trigger OnPostDataItem()
                begin
                    //Window.UPDATE(1,ROUND(90 / 100 * 10000,1));
                end;

                trigger OnPreDataItem()
                begin
                    "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", "Value Entry"."Document No.");
                end;
            }
            dataitem(JobcatchMarked; "Job catch Default")
            {
                DataItemLink = "No." = FIELD("No.");
                DataItemTableView = SORTING("No.", GroupSort);

                trigger OnAfterGetRecord()
                begin
                    JobcatchMarked."Marked Rec" := true;
                    JobcatchMarked.Modify;
                end;
            }
            dataitem(ValueEntryMarked; "Value Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Gen. Prod. Posting Group") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'));

                trigger OnAfterGetRecord()
                begin
                    ValueEntryMarked."Marked Rec" := true;
                    ValueEntryMarked.Modify;
                end;
            }

            trigger OnPostDataItem()
            begin
                //Window.UPDATE(1,ROUND(50 / 100 * 10000,1));
            end;

            trigger OnPreDataItem()
            begin
                Copy(Jobss);
                MarkedOnly(true);
            end;
        }
        dataitem("Sea Food categories"; "Sea Food categories")
        {
            DataItemTableView = SORTING("Sea food code");
            PrintOnlyIfDetail = false;
            column(SeaFoodData; 1)
            {
            }
            column(PRC; Prc)
            {
            }
            column(Sea_Food_categories__Sea_food_code_; "Sea food code")
            {
            }
            column(COPYSTR___Sea_food_code__5_; CopyStr("Sea food code", 5))
            {
            }
            column(Sea_Food_categories__Sea_food_code_Caption; FieldCaption("Sea food code"))
            {
            }
            dataitem("Job Ledger Entry Rep"; "Job Ledger Entry")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING("Job No.", "Location Code", GroupSort) WHERE("Location Code" = CONST('CRM-ASL'), "Marked Rec" = CONST(true));
                column(SeaFood_Cat_2; CopyStr("Sea Food categories"."Sea food code", 5))
                {
                }
                column(jobno; "Job Ledger Entry Rep"."Job No.")
                {
                }
                column(ExportTotal; ExportTotal)
                {
                }
                column(LocalTotal; LocalTotal)
                {
                }
                column(ExportDollar; ExportDollar)
                {
                }
                column(LocalDollar; LocalDollar)
                {
                }
                column(TotalNaira; TotalNaira)
                {
                }
                column(LocalNaira; LocalNaira)
                {
                }
                column(A1_3_; A1[3])
                {
                }
                column(A1_1_; A1[1])
                {
                }
                column(A1_2_; A1[2])
                {
                }
                column(A1_4__1000; A1[4] * 1000)
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
                column(Job_Ledger_Entry_Rep_Entry_No_; "Job Ledger Entry"."Entry No.")
                {
                }
                column(Job_Ledger_Entry_Rep_Job_No_; "Job No.")
                {
                }
                column(JobLedger_Entry2; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    //"Job Ledger Entry Rep".SETRANGE("Job Ledger Entry Rep"."Posting Date","Period Start","Period End");
                    /*IF ("Job Ledger Entry Rep"."Posting Date" < "Period Start") AND ("Job Ledger Entry Rep"."Posting Date" > "Period End") THEN
                      CurrReport.SKIP;*/
                    PrdPrc2 := Qty * Prc;
                    if Itempr."Currency Code" <> '' then begin
                        PrdPrc2 := Qty * Prc;
                        NairaVal2 := PrdPrc2 * CurrRate
                    end
                    else begin
                        NairaVal2 := Qty * Prc;
                        PrdPrc2 := 0;
                    end;

                    if Evaluate(NOrder, CopyStr(GroupSort, 1, 1)) then;
                    if Evaluate(NOrder, CopyStr(GroupSort, 2, 2)) then;
                    if NOrder < 4 then
                        if NOrder < 8 then begin
                            QtyX += Qty;
                            PrdPrc2X := PrdPrc2X + PrdPrc2;
                            NairaVal2X := NairaVal2X + NairaVal2;
                        end;

                    Qty := Quantity * -1;
                    PrdPrc := Qty * GetItPrice("Job No.", "No.", "Posting Date");
                    //CurrReport.ShowOutput :=
                    // CurrReport.TotalsCausedBy = "Job Ledger Entry".FieldNo(GroupSort);


                    ExportTotal := 0;
                    LocalTotal := 0;
                    ExportDollar := 0;
                    LocalDollar := 0;
                    A1[1] := Qty;
                    if "Sea Food categories".Export then begin
                        A1[2] := Prc * Qty;
                        A1[3] := A1[2] * PntStor[7];
                    end else begin
                        A1[2] := 0;
                        A1[3] := Prc * Qty;
                    end;
                    ExportTotal := 0;
                    ExportDollar := 0;
                    TotalNaira := 0;
                    LocalTotal := 0;
                    LocalDollar := 0;
                    LocalNaira := 0;

                    if "Sea Food categories".Export then begin
                        ExportTotal := A1[1];
                        ExportDollar := A1[2];
                        TotalNaira := A1[3];
                    end else begin
                        LocalTotal := A1[1];
                        LocalDollar := A1[2];
                        LocalNaira := A1[3];
                    end;

                end;

                trigger OnPreDataItem()
                begin
                    "Job Ledger Entry".CopyFilter("Job Ledger Entry"."Job No.", "Job Ledger Entry Rep"."Job No.");
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                    A1[1] := 0;
                    A1[2] := 0;
                    A1[3] := 0;
                    A1[4] := 0;
                    A2[1] := 0;
                    A2[2] := 0;
                    A2[3] := 0;
                    A2[4] := 0;
                end;
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Marked Rec") WHERE("Marked Rec" = CONST(true));
                column(A2_1_; A2[1])
                {
                }
                column(A2_4_; A2[4])
                {
                }
                column(A2_2_; A2[2])
                {
                }
                column(A2_3_; A2[3])
                {
                }
                column(ExportBudQty; ExportBudQty)
                {
                }
                column(LocalBudQty; LocalBudQty)
                {
                }
                column(ExportBudgetDollar; ExportBudgetDollar)
                {
                }
                column(LocalBudgetDollar; LocalBudgetDollar)
                {
                }
                column(ExportBudNaira; ExportBudNaira)
                {
                }
                column(LocalVarN; LocalVarN)
                {
                }
                column(ExportVarN; ExportVarN)
                {
                }
                column(LocalBudNaira; LocalBudNaira)
                {
                }
                column(R; "No.B")
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
                column(JobCatch_Serial; TempEntry)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    TempEntry += 1;
                    Syntesis2(Code, "Pack Size", Brand); //Compose No.
                    QtyB := "Budget Quantity";
                    if QtyB <> 0 then begin
                        PrdPrcB := QtyB * GetItPrice("No.", "No.B", ETA);
                        PrcB := GetItPrice("No.", "No.B", ETA);
                    end
                    else begin
                        PrdPrcB := 0;
                        PrcB := 0;
                    end;
                    if Itempr."Currency Code" <> '' then begin
                        PrdPrcB := QtyB * PrcB;
                        NairaValB := PrdPrcB * CurrRate
                    end
                    else begin
                        NairaValB := QtyB * PrcB;
                        PrdPrcB := 0;
                    end;

                    if Evaluate(NOrder, CopyStr(GroupSort, 2, 2)) then;
                    if NOrder < 8 then begin
                        QtyBX := QtyBX + QtyB;
                        PrdPrcBX := PrdPrcBX + PrdPrcB;
                        NairaValBX := NairaValBX + NairaValB;
                    end;

                    A2[1] := "Budget Quantity";
                    A2[2] := Prc * "Budget Quantity";
                    A2[3] := NairaValB;
                    A2[4] := A1[3] - A2[3];

                    ExportBudQty := 0;
                    LocalBudQty := 0;
                    ExportBudgetDollar := 0;
                    LocalBudgetDollar := 0;
                    ExportBudNaira := 0;
                    LocalBudNaira := 0;
                    ExportVarN := 0;
                    LocalVarN := 0;

                    if "Sea Food categories".Export then begin
                        ExportBudQty := A2[1];
                        ExportBudgetDollar := A2[2];
                        ExportBudNaira := A2[3];
                        ExportVarN := A2[4];
                    end else begin
                        LocalBudQty := A2[1];
                        LocalBudgetDollar := A2[2];
                        LocalBudNaira := A2[3];
                        LocalVarN := A2[4];
                    end;

                    A2[4] := A1[3] - A2[3];
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                    TempEntry := 0;
                end;
            }

            trigger OnAfterGetRecord()
            var
                l_JobLedger: Record "Job Ledger Entry";
                l_JobCatchDefault: Record "Job catch Default";
            begin
                l_JobLedger.Reset;
                l_JobLedger.SetRange("Location Code", 'CRM-ASL');
                l_JobLedger.SetRange(GroupSort, "Sea food code");

                l_JobCatchDefault.Reset;
                l_JobCatchDefault.SetRange(GroupSort, "Sea food code");
                if l_JobLedger.IsEmpty and l_JobCatchDefault.IsEmpty then
                    CurrReport.Skip;
            end;

            trigger OnPostDataItem()
            begin
                //Window.UPDATE(1,ROUND(70 / 100 * 10000,1));
            end;
        }
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            column(Text03; Text03)
            {
            }
            column(Text06; Text06)
            {
            }
            column(Text07; Text07)
            {
            }
            column(Text08; Text08)
            {
            }
            column(Text09; Text09)
            {
            }
            column(ExpTonnage; ExpTonnage)
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
            column(DataStor_5_; DataStor[5])
            {
            }
            column(Text04; Text04)
            {
            }
            column(Text05; Text05)
            {
            }
            column(Text10; Text10)
            {
            }
            column(Text11; Text11)
            {
            }
            column(Text13; Text13)
            {
            }
            column(Text14; Text14)
            {
            }
            column(Text12; Text12)
            {
            }
            column(Text17; Text17)
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
            column(TotDirExp; TotDirExp)
            {
            }
            column(GrossMarg; GrossMarg)
            {
            }
            column(GrossPerct; GrossPerct)
            {
            }
            column(TotIndirExp; TotIndirExp)
            {
            }
            column(NetProfit; NetProfit)
            {
            }

            trigger OnAfterGetRecord()
            begin

                TotIndirExp := DataStor[12] + DataStor[13] + DataStor[14];
                NetProfit := NairaVal2 - TotDirExp - TotIndirExp;
                if NairaVal <> 0 then
                    NetProfPerct := NetProfit * 100 / NairaVal;
                PrdPrc2 := Qty * Prc;
                if Itempr."Currency Code" <> '' then begin
                    PrdPrc2 := Qty * Prc;
                    NairaVal2 := PrdPrc2 * CurrRate
                end
                else begin
                    NairaVal2 := Qty * Prc;
                    PrdPrc2 := 0;
                end;
                GrossMarg += NairaVal2 - TotDirExp;
                if NairaVal2 <> 0 then
                    GrossPerct := (GrossMarg) * 100 / NairaVal2;
            end;

            trigger OnPostDataItem()
            begin
                //Window.UPDATE(1,ROUND(100 / 100 * 10000,1));
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control10)
                {
                    ShowCaption = false;
                    field("Period Start"; "Period Start")
                    {
                    }
                    field("Period End"; "Period End")
                    {
                    }
                    field(Vessel; VesselSel)
                    {
                    }
                    field("Fishing Country"; FishingCount)
                    {
                    }
                    field("Job No"; Jb."No.")
                    {
                    }
                    field(Resource; ResourceOn)
                    {
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

    trigger OnPostReport()
    begin
        //Window.CLOSE;
    end;

    trigger OnPreReport()
    begin
        JobSetUp.Get;
        //Window.OPEN('Please wait... @1@@@@@@@@@@@@@@@@@@@@');

        //"Job led".SETCURRENTKEY("Job led".GroupSort,"Job led"."Location Code","Job led"."Gen. Prod. Posting Group","Job led"."Marked Rec")
        ;
        "Job led".SetRange("Job led"."Marked Rec", true);
        "Job led".ModifyAll("Job led"."Marked Rec", false);
        "job cath".SetCurrentKey("job cath".GroupSort, "job cath"."Marked Rec");
        "job cath".SetRange("job cath"."Marked Rec", true);
        "job cath".ModifyAll("job cath"."Marked Rec", false);
        "Val Ent".SetCurrentKey("Val Ent"."Gen. Prod. Posting Group", "Val Ent"."Document No.", "Val Ent"."Marked Rec");
        "Val Ent".SetRange("Val Ent"."Marked Rec", true);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total';
        "---": Integer;
        Job: Record Job;
        Job2: Record Job;
        Itempr: Record "Sales Price";
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobSetUp: Record "Jobs Setup";
        RateSetUp: Record "P & L Rates";
        JBudLn: Record "Job Planning Line";
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
        TotalQty: Decimal;
        AAA: Decimal;
        TempEntry: Integer;
        ExportTotal: Decimal;
        LocalTotal: Decimal;
        ExportDollar: Decimal;
        LocalDollar: Decimal;
        TotalNaira: Decimal;
        LocalNaira: Decimal;
        ExportBudQty: Decimal;
        LocalBudQty: Decimal;
        ExportBudgetDollar: Decimal;
        LocalBudgetDollar: Decimal;
        ExportBudNaira: Decimal;
        LocalBudNaira: Decimal;
        ExportVarN: Decimal;
        LocalVarN: Decimal;
        ItemPrice: Decimal;
        JobRange: Record Job;
        JobETA: Record Job;
        ETDCons: Date;
        ETACons: Date;
        "Period Start": Date;
        "Period End": Date;
        VesselSel: Code[25];
        JobsNo: Code[250];
        Countrs: Integer;
        Window: Dialog;
        RecCount: Integer;
        FC: Code[10];
        ResourceOn: Code[30];
        VoyageFilter: Code[1024];
        expcntTot: Integer;
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
        QuantityCaptionLbl: Label 'Quantity';
        ETDConsCaptionLbl: Label 'ETD';
        ETAConsCaptionLbl: Label 'ETA';
        "Job led": Record "Job Ledger Entry";
        "job cath": Record "Job catch Default";
        "Val Ent": Record "Value Entry";
        FishingCount: Code[30];
        Cycledays: Integer;
        TotalPrice: Decimal;

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
        Itempr.SetRange(Itempr."Item No.", Nos);
        Itempr.SetRange(Itempr."Starting Date", 0D, ETA);
        //MESSAGE('%1',PDays);
        Itempr.SetRange(Itempr."Sales Type", Itempr."Sales Type"::"Customer Price Group");
        Itempr.SetRange(Itempr."Sales Code", job3."Price Group Code");
        if Itempr.FindFirst then
            Prc := Itempr."Unit Price" else begin
            Itempr.SetRange(Itempr."Sales Code", JobSetUp."Default Price Group Code");
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
}

