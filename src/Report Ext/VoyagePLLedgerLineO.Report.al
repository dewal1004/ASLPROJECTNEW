report 50991 "Voyage P&L Ledger LineO"
{
    // 
    // "Period Start"
    // "Period End"
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/VoyagePLLedgerLineO.rdlc';


    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            RequestFilterFields = "Job No.", "Work Type Code", "Source Code", "Posting Date";
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
            column(Job_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin

                /*Qty:=Quantity*-1;
                Itempr.SETRANGE(Itempr."Item No.","No.");
                Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date");
                IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE
                BEGIN
                  Prc:=0;
                  IF Flag THEN MESSAGE('Price Missing for Item %1',Itempr."Item No.");
                END;
                PrdPrc:=Qty*Prc;
                */ //AA

            end;

            trigger OnPreDataItem()
            begin

                LastFieldNo := FieldNo("Work Type Code");
                CurrReport.CreateTotals(PrdPrc, NairaVal, Qty);
                SetRange("Posting Date", 20030101D, 20030630D);
            end;
        }
        dataitem(Jobss; Job)
        {
            DataItemTableView = SORTING(Vessel, "Starting Date") WHERE(Vessel = CONST('ADNA'));
            column(FORMAT_TODAY_0_4__Control1000000153; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME_Control1000000155; CompanyName)
            {
            }
            column(CurrReport_PAGENO_Control1000000156; CurrReport.PageNo)
            {
            }
            column(USERID_Control1000000158; UserId)
            {
            }
            column(GETFILTERS__; GetFilters())
            {
            }
            column(Text27_Control1000000160; Text27)
            {

            }
            column(Text26_Control1000000161; Text26)
            {

            }
            column(Text25_Control1000000162; Text25)
            {

            }
            column(Text24_Control1000000163; Text24)
            {

            }
            column(Text23_Control1000000164; Text23)
            {
            }
            column(Text22_Control1000000165; Text22)
            {
            }
            column(Text21_Control1000000166; Text21)
            {
            }
            column(Jobss_Vessel; Vessel)
            {
            }
            column(PntStor_7__Control1000000176; PntStor[7])
            {
            }
            column(PntStor_6__Control1000000177; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5__Control1000000178; PntStor[5])
            {
            }
            column(PntStor_4__Control1000000179; PntStor[4])
            {
            }
            column(PntStor_3__Control1000000180; PntStor[3])
            {
            }
            column(PntStor_2__Control1000000181; PntStor[2])
            {
            }
            column(PntStor_1__Control1000000182; PntStor[1])
            {
            }
            column(PortDay_Control1000000183; PortDay)
            {

            }
            column(LostDay_Control1000000184; LostDay)
            {

            }
            column(FishgDay_Control1000000185; FishgDay)
            {

            }
            column(CycleDay_Control1000000186; CycleDay)
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
            column(Coutry_Name_Control1000000218; Coutry.Name)
            {
            }
            column(Res_Name_Control1000000219; Res.Name)
            {
            }
            column(Vess_Control1000000220; Vess)
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
            column(ETD_Control1000000195; ETD)
            {
            }
            column(ETA_Control1000000198; ETA)
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
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENO_Control1000000156Caption; CurrReport_PAGENO_Control1000000156CaptionLbl)
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
            column(ETD_Control1000000195Caption; ETD_Control1000000195CaptionLbl)
            {
            }
            column(ETA_Control1000000198Caption; ETA_Control1000000198CaptionLbl)
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

            trigger OnAfterGetRecord()
            begin
                /*
                IF Res.GET("Person Responsible") THEN;
                  ETD:= "Starting Date";
                  ETA:= "Ending Date";
                
                  //Cycle Day
                  Job2.GET("No.");
                  Job2.SETRANGE(Job2.Vessel,Vessel);    //Find last voyage
                  IF Job2.NEXT(-1)<>0 THEN
                    ETA2:=Job2."Ending Date"
                  ELSE
                  BEGIN
                    Loc.GET(Vessel);
                    ETA2:=Loc."Begining ETA";
                  END;
                
                  IF "Cycle Day (Manual)"<>0 THEN CycleDay:="Cycle Day (Manual)"
                    ELSE CycleDay:=ETA-ETA2;
                
                  CALCFIELDS("Lost Days");
                  IF "Lost At Sea (Manual)"<>0 THEN LostDay:= "Lost At Sea (Manual)"
                    ELSE LostDay:="Lost Days";
                
                  IF "Fishing Day (Manual)"<>0 THEN FishgDay:="Fishing Day (Manual)"
                     ELSE FishgDay:="Sea Days"-LostDay;
                
                  IF "Port Day (Manual)"<>0 THEN PortDay:="Port Day (Manual)"
                    ELSE PortDay:=CycleDay-(FishgDay+LostDay);
                  SeaDay:=FishgDay+LostDay;
                
                  //Find Total Tonnage of Export
                  SETFILTER("Task Filter",'SHR');
                  CALCFIELDS("Product Quantity","Points Actual");
                  ExpTonnage:="Product Quantity"/1000;
                  PntStor[1]:="Points Actual";
                
                  SETFILTER("Task Filter",'');
                  CALCFIELDS("Points Actual");
                  PntStor[3]:="Points Actual";
                  PntStor[2]:=PntStor[3]-PntStor[1];
                
                  IF SeaDay<>0 THEN
                  BEGIN
                    PntStor[4]:=PntStor[1]/SeaDay;
                    PntStor[5]:=PntStor[2]/SeaDay;
                    PntStor[6]:=PntStor[3]/SeaDay;
                  END;
                  VALIDATE("Net Incentive Actual");
                  DataStor[3]:="Net Incentive Actual";
                
                
                  JobSetUp.GET; a:=100;
                
                  //Calculate the Fixed Salaries
                  JBudLn.SETRANGE(JBudLn."Job No.","No.");
                  //JBudLn.SETRANGE(JBudLn.Type,JBudLn.Type::Resource);
                  IF JBudLn.FIND('-') THEN
                  BEGIN
                     JBudLn.CALCFIELDS(JBudLn.Counter);
                     PeopleOnVoy:=JBudLn.Counter;
                  END
                  ELSE PeopleOnVoy:="No. of Deck Hands"+2;
                  DataStor[4]:=JobSetUp."Fixed Salary Rate"*CycleDay*(PeopleOnVoy);
                
                  //Travelling Expenses for Expatriate
                  REPEAT
                    Employee.SETCURRENTKEY(Employee."Resource No.");
                    Employee.SETRANGE(Employee."Resource No.",JBudLn."No.");
                    Employee.SETFILTER(Employee."Country Code",'<>NG');
                    IF Employee.FIND('-') THEN expcnt:=expcnt+1;
                    ResCount:=ResCount+1;
                  UNTIL JBudLn.NEXT()=0;
                  DataStor[5]:=JobSetUp."Travelling Expenses Rate"*expcnt*CycleDay;
                
                  //License Fee
                  IF Coutry.GET("Country Code") THEN
                     DataStor[6]:=Coutry."License Fees Rate"*CycleDay
                  ELSE
                    BEGIN
                      DataStor[6]:=JobSetUp."License Fee Rate"*CycleDay;
                      Coutry.Name:='Nigeria';
                    END;
                  IF Loc.GET(Vessel) THEN
                  BEGIN
                    DataStor[7] :=Loc."Insurance Rate"*CycleDay;
                    DataStor[13]:=Loc."Depreciation Rate"*CycleDay;
                    DataStor[14]:=Loc."Interest Rate"*CycleDay;
                    Vess:=Loc.Name;
                  END;
                
                  DataStor[8]:=JobSetUp.Clearing_Fwrd_NPA*ExpTonnage;
                  DataStor[12]:=JobSetUp."Shore Overheads"*CycleDay;
                
                  //Credit from G/L Entry
                  CountGPPG:=0;
                  IF ProdPostGrp.FIND('-') THEN
                  REPEAT
                    CountGPPG:=CountGPPG+1;
                    "GLGPP Caption"[CountGPPG]:=ProdPostGrp.Code;
                    GLEntry.SETCURRENTKEY(GLEntry."G/L Account No.",GLEntry."Job No.",GLEntry."Gen. Prod. Posting Group");
                    GLEntry.SETRANGE(GLEntry."G/L Account No.",JobSetUp."Job Val Begin Account",JobSetUp."Job Val End Account");
                    GLEntry.SETRANGE(GLEntry."Job No.","No.");
                    GLEntry.SETRANGE(GLEntry."Gen. Prod. Posting Group",ProdPostGrp.Code);
                    IF GLEntry.FIND('-') THEN
                    REPEAT
                        GLStr[CountGPPG]:=GLStr[CountGPPG] +GLEntry.Amount;
                    UNTIL GLEntry.NEXT()=0;
                  UNTIL ProdPostGrp.NEXT()=0;
                
                CurrExc.SETRANGE(CurrExc."Currency Code",'USD');
                CurrExc.SETRANGE(CurrExc."Starting Date",0D,ETA);
                IF CurrExc.FIND('+') THEN
                  BEGIN
                    CurrRate:=CurrExc."Relational Exch. Rate Amount";
                    //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                  END
                  ELSE CurrRate:=1;
                  PntStor[7]:=CurrRate;
                */ //AA

            end;

            trigger OnPreDataItem()
            begin
                /*
                LastFieldNo := FIELDNO(Vessel);
                SETRANGE("Ending Date",010103D,063003D);
                CurrReport.CREATETOTALS(CycleDay,PortDay,LostDay,SeaDay,FishgDay);
                CurrReport.CREATETOTALS(PntStor[1],PntStor[2],PntStor[3],PntStor[4],PntStor[5],PntStor[6],PntStor[7]);
                Countrs:=COUNT;
                IF Countrs=0 THEN Countrs:=1;
                */ //AA

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
                DataItemTableView = SORTING("Location Code", GroupSort) WHERE("Location Code" = CONST('CRM-ASL'));
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
                    */ //AA

                end;

                trigger OnPreDataItem()
                begin
                    //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Job Ledger Entry Rep"."Job No.");
                    //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Source Code","Job Ledger Entry Rep"."Source Code");
                    //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Posting Date","Job Ledger Entry Rep"."Posting Date");
                    /*
                    SETFILTER("Source Code",VesselSel);
                    LastFieldNo := FIELDNO(GroupSort);
                    CurrReport.CREATETOTALS(PrdPrc2,NairaVal2,Qty);
                    */ //AA

                end;
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort);
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
                    */ //AA

                end;

                trigger OnPreDataItem()
                begin
                    //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Job Catch Default"."No.");
                    /*
                    SETFILTER("No.",VoyageFilter);
                    LastFieldNo := FIELDNO(GroupSort);
                    CurrReport.CREATETOTALS(PrdPrcB,NairaValB,QtyB);
                    */ //AA

                end;
            }

            trigger OnAfterGetRecord()
            begin
                /*
                A1[1]:=0;A1[2]:=0;A1[3]:=0;A1[4]:=0;
                A2[1]:=0;A2[2]:=0;A2[3]:=0;A2[4]:=0;
                */ //AA

            end;

            trigger OnPreDataItem()
            begin
                /*
                CurrReport.CREATETOTALS(PrdPrc2,NairaVal2,Qty);
                CurrReport.CREATETOTALS(PrdPrcB,NairaValB,QtyB);
                
                JobRange.SETCURRENTKEY(Vessel,"Starting Date");
                JobRange.SETFILTER(JobRange.Vessel,VesselSel);
                IF JobRange.FIND('-') THEN
                REPEAT
                  VoyageFilter:=VoyageFilter+JobRange."No."+'|';
                UNTIL JobRange.NEXT()=0;
                IF STRLEN(VoyageFilter)>1 THEN VoyageFilter:=COPYSTR(VoyageFilter,1,STRLEN(VoyageFilter)-1);
                */ //AA

            end;
        }
        dataitem("Value Entry"; "Value Entry")
        {
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
                //"Job Ledger Entry".COPYFILTER("Job Ledger Entry"."Job No.","Value Entry"."Document No.");
                /*
                SETFILTER("Document No.",VoyageFilter);
                */ //AA

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
        JobRange: Record Job;
        Itempr: Record "Item Translation";
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
        "----": Integer;
        "Voyage No.": Code[30];
        "Period Start": Date;
        "Period End": Date;
        VesselSel: Code[25];
        VoyageFilter: Code[250];
        Countrs: Integer;
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
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENO_Control1000000156CaptionLbl: Label 'Page';
        Control1000000167CaptionLbl: Label 'Label1000000167';
        Control1000000168CaptionLbl: Label 'Label1000000168';
        Control1000000169CaptionLbl: Label 'Label1000000169';
        Control1000000170CaptionLbl: Label 'Label1000000170';
        Control1000000171CaptionLbl: Label 'Label1000000171';
        Control1000000172CaptionLbl: Label 'Label1000000172';
        Control1000000173CaptionLbl: Label 'Label1000000173';
        GETFILTER__No___CaptionLbl: Label 'Job Filter:';
        ETD_Control1000000195CaptionLbl: Label 'Label1000000197';
        ETA_Control1000000198CaptionLbl: Label 'Label1000000199';
        CycleDay_Control1000000202CaptionLbl: Label 'Cycle Day';
        FishgDay_Control1000000206CaptionLbl: Label 'Fishing Day';
        LostDay_Control1000000210CaptionLbl: Label 'Lost At Sea';
        PortDay_Control1000000216CaptionLbl: Label 'Port Day';

    [Scope('OnPrem')]
    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        /*
        //Syntesis Item Code Name
        IF UOM.GET(Pk) THEN UOMCd:=UOM."Catch Code";  //Get Unit of measure Code
        ItemVar:=FORMAT(Cd)+UOMCd+COPYSTR(Br,1,1);    //Requip Code Name
        "No.B":=ItemVar;
        */ //AA

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

