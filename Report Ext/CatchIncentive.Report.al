report 50089 "Catch Incentive"
{
    //"Inventory Posting Group"."Inventory Incentive"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/CatchIncentive.rdlc';


    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.";
            column(Job_No_; "No.")
            {
            }
            dataitem("Job Planning Line"; "Job Planning Line")
            {
                DataItemLink = "Job No." = FIELD("No.");
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
                column(VessNam; VessNam)
                {
                }
                column(Voyage; Voyage)
                {
                }
                column(Comp__Ship_to_Name_; Comp."Ship-to Name")
                {
                }
                column(Skipper; Skipper)
                {
                }
                column(Description; "Job Planning Line".Description)
                {
                }
                column(CountryText; CountryText)
                {
                }
                column(SeaDays; SeaDays)
                {
                }
                column(ETA; ETA)
                {
                }
                column(ETD; ETD)
                {
                }
                column(Incentive_Sea_Days_; "Incentive Sea Days")
                {
                }
                column(COMPTitle; COMPTitle)
                {
                }
                column(Job_Ledger_Entry__Job_No__; "Job No.")
                {
                }
                column(CrewList; CrewList)
                {
                }
                column(Job_Ledger_Entry_Description; Description)
                {
                }
                column(Designation_; Designation)
                {
                }
                column(nation; nation)
                {
                }
                column(Desig; Desig)
                {
                }
                column(Res_No; Res."No.")
                {
                }
                column(Nam; Nam)
                {
                }
                column(countz; countz)
                {
                }
                column(Jobs__Incentive__Hook_Fish__; Jobs."Incentive (Hook Fish)")
                {
                }
                column(Jobs__Incentive_Rate_Actual_; Jobs."Incentive Rate Actual")
                {
                }
                column(Jobs__Incentive__Pt__Based__Actual_; Jobs."Incentive (Pt. Based) Actual")
                {
                }
                column(Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish___Jobs__Add_Ded__Crew_; Jobs."Incentive (Pt. Based) Actual" + Jobs."Incentive (Hook Fish)" + Jobs."Add/Ded. Crew")
                {
                }
                column(Jobs__Incentive_Pts_Determt_Actual_; Jobs."Incentive Pts Determt Actual")
                {
                }
                column(Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish__; Jobs."Incentive (Pt. Based) Actual" + Jobs."Incentive (Hook Fish)")
                {
                }
                column(Jobs__Add_Ded__Crew_; Jobs."Add/Ded. Crew")
                {
                }
                column(Job__Points_Actual_; Job."Points Actual")
                {
                }
                column(Job_Budget_LineCaption; Job_Budget_LineCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(VoyageCaption; VoyageCaptionLbl)
                {
                }
                column(INCENTIVE_CALCULATION___AUTHORIZATIONCaption; INCENTIVE_CALCULATION___AUTHORIZATIONCaptionLbl)
                {
                }
                column(SkipperCaption; SkipperCaptionLbl)
                {
                }
                column(CountryTextCaption; CountryTextCaptionLbl)
                {
                }
                column(ETDCaption; ETDCaptionLbl)
                {
                }
                column(ETACaption; ETACaptionLbl)
                {
                }
                column(SeaDaysCaption; SeaDaysCaptionLbl)
                {
                }
                column(Incentive_Sea_Days_Caption; Incentive_Sea_Days_CaptionLbl)
                {
                }
                column(Crew_Sailing_ListCaption; Crew_Sailing_ListCaptionLbl)
                {
                }
                column(Job_Ledger_Entry_DescriptionCaption; Job_Ledger_Entry_DescriptionCaptionLbl)
                {
                }
                column(SignatureCaption; SignatureCaptionLbl)
                {
                }
                column(Designation_Caption; Designation_CaptionLbl)
                {
                }
                column(Res__Employee_No__Caption; Res__Employee_No__CaptionLbl)
                {
                }
                column(nationCaption; nationCaptionLbl)
                {
                }
                column(DesigCaption; DesigCaptionLbl)
                {
                }
                column(NamCaption; NamCaptionLbl)
                {
                }
                column(countzCaption; countzCaptionLbl)
                {
                }
                column(Res__Employee_No___Control1000000102Caption; Res__Employee_No___Control1000000102CaptionLbl)
                {
                }
                column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
                {
                }
                column(SkipperCaption_Control1000000007; SkipperCaption_Control1000000007Lbl)
                {
                }
                column(TotalCaption; TotalCaptionLbl)
                {
                }
                column(Jobs__Incentive__Hook_Fish__Caption; Jobs__Incentive__Hook_Fish__CaptionLbl)
                {
                }
                column(Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish___Jobs__Add_Ded__Crew_Caption; Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish___Jobs__Add_Ded__Crew_CaptionLbl)
                {
                }
                column(Jobs__Incentive_Rate_Actual_Caption; Jobs__Incentive_Rate_Actual_CaptionLbl)
                {
                }
                column(Jobs__Incentive__Pt__Based__Actual_Caption; Jobs__Incentive__Pt__Based__Actual_CaptionLbl)
                {
                }
                column(Jobs__Incentive_Pts_Determt_Actual_Caption; Jobs__Incentive_Pts_Determt_Actual_CaptionLbl)
                {
                }
                column(Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish__Caption; Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish__CaptionLbl)
                {
                }
                column(Jobs__Add_Ded__Crew_Caption; Jobs__Add_Ded__Crew_CaptionLbl)
                {
                }
                column(Job__Points_Actual_Caption; Job__Points_Actual_CaptionLbl)
                {
                }
                column(Received_ByCaption; Received_ByCaptionLbl)
                {
                }
                column(Checked_ByCaption; Checked_ByCaptionLbl)
                {
                }
                column(Authorized_ByCaption; Authorized_ByCaptionLbl)
                {
                }
                column(OperationsCaption; OperationsCaptionLbl)
                {
                }
                column(Job_Ledger_Entry_Entry_No_; "Job Planning Line"."No.")
                {
                }
                column(Job_Ledger_Entry__Alloted__; Alloted)
                {
                }
                column(Job_Planning_Line_HookInc; "Job Planning Line"."Hook Inc")
                {
                }
                column(Job_Planning_Line_Incentive; "Job Planning Line".Incentive)
                {
                }
                column(Job_Planning_Line_Add; "Job Planning Line"."Add/Ded")
                {
                }
                column(Job_Planning_Line_NetInc; "Job Planning Line"."Net Inc")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Job Planning Line".Validate("Job Planning Line"."Ending Date");

                    //code from 3.0//
                    Comp.Get;
                    if Jobs.Get("Job Planning Line"."Job No.") then begin
                        if Loc.Get(Jobs.Vessel) then VessNam := Loc.Name;
                        Voyage := Jobs."Voyage No.";
                        if Res.Get(Jobs."Person Responsible") then Skipper := Res.Name;
                        if Jobs."Fishing Country Code" = '' then Jobs."Fishing Country Code" := 'NG';
                        if Country.Get(Jobs."Fishing Country Code") then CountryText := Country.Name else CountryText := Jobs."Fishing Country Code";
                        ETD := Jobs."Starting Date";
                        ETA := Jobs."Ending Date";
                        SeaDays := Jobs."Sea Days";
                        "Incentive Sea Days" := Jobs."Sea Days" - Job."Deductible Lost Days (Incentiv";
                        DayFrac := Quantity / Job."Sea Days";
                        Alloted := "Allocation %" * DayFrac;
                        Validate(Incentive, Job."Incentive (Pt. Based) Actual" * "Allocation %" * 0.01 * DayFrac);
                        Modify(true);
                    end;


                    if Jobs.Get("Job Planning Line"."Job No.") then
                        if DimVal.Get('BUSINESS UNIT', Jobs."Global Dimension 2 Code") then
                            COMPTitle := DimVal.Name;

                    //*** CurrReport.ShowOutput(CrewList);


                    //*** CurrReport.ShowOutput(not CrewList);
                    if ResG.Get("Resource Group") then Designation := ResG.Name;
                    if Res.Get("Job Planning Line"."No.") then;


                    countz := countz + 1;
                    if Res.Get("Job Planning Line"."No.") then begin
                        Nam := Res.Name;
                        Desig := Res."Resource Group No.";
                        if Country.Get(Res."Country Code") then
                            nation := Country.Name else
                            nation := Res."Country Code";
                    end;
                    //*** CurrReport.ShowOutput(CrewList);

                    if Jobs.Get(Job."No.") then
                        Jobs.CalcFields(Jobs."Incentive (Hook Fish)", Jobs."Add/Ded. Crew")
                    else
                        Message(' Job not found');
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Job No.");

                    if Jobs.Get("Job Planning Line"."Job No.") then
                        if DimVal.Get('BUSINESS UNIT', Jobs."Global Dimension 2 Code") then
                            COMPTitle := DimVal.Name;
                    //*** CurrReport.ShowOutput := FooterPrinted;
                    FooterPrinted := false;

                    //*** CurrReport.ShowOutput :=
                    //CurrReport.TotalsCausedBy := "Job Planning Line".FieldNo("Job No.");
                    //*** CurrReport.ShowOutput(not CrewList);

                    //*** CurrReport.ShowOutput :=
                    //*** CurrReport.TotalsCausedBy = LastFieldNo;

                    if not FooterPrinted then
                        LastFieldNo := CurrReport.TotalsCausedBy;
                    //*** CurrReport.ShowOutput := not FooterPrinted;
                    FooterPrinted := true;
                end;
            }
            dataitem("Inventory Posting Group"; "Inventory Posting Group")
            {
                DataItemLink = "Source No. Filter" = FIELD("No.");
                DataItemTableView = SORTING("Statistics Group", Category) WHERE("Location Filter" = CONST('CRM-ASL'), "Inventory Incentive" = FILTER(<> 0));
                RequestFilterFields = "Location Filter";
                column(T001; T001)
                {
                }
                column(Cat1; Cat1)
                {
                }
                column(Inventory_Posting_Group_Points; Points)
                {
                }
                column(Inventory_Posting_Group__Points_KG_; "Points/KG")
                {
                }
                column(Inventory_Posting_Group_Description; Description)
                {
                }
                column(Inventory_Posting_Group_Code; Code)
                {
                }
                column(Inventory_Posting_Group__Inventory_Incentive_; "Inventory Incentive")
                {
                }
                column(Inventory_Posting_Group_Points_Control1000000040; Points)
                {
                }
                column(Inventory_Posting_Group__Inventory_Incentive__Control1000000041; "Inventory Incentive")
                {
                }
                column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
                {
                }
                column(Inventory_Posting_Group_Points_Control1000000043; Points)
                {
                }
                column(Inventory_Posting_Group__Inventory_Incentive__Control1000000045; "Inventory Incentive")
                {
                }
                column(TotalFor___COPYSTR_FIELDCAPTION__Statistics_Group___12_; TotalFor + CopyStr(FieldCaption("Statistics Group"), 12))
                {
                }
                column(Inventory_Posting_Group_Points_Control1000000048; Points)
                {
                }
                column(Inventory_Posting_Group__Inventory_Incentive__Control1000000049; "Inventory Incentive")
                {
                }
                column(T002; T002)
                {
                }
                column(Inventory_Posting_Group_Points_Control1000000092; Points)
                {
                }
                column(Inventory_Posting_Group__Inventory_Incentive__Control1000000093; "Inventory Incentive")
                {
                }
                column(T002_Control1000000094; T002)
                {
                }
                column(CodeCaption; CodeCaptionLbl)
                {
                }
                column(DescriptionCaption; DescriptionCaptionLbl)
                {
                }
                column(Points_KgCaption; Points_KgCaptionLbl)
                {
                }
                column(InventoryCaption; InventoryCaptionLbl)
                {
                }
                column(PointsCaption; PointsCaptionLbl)
                {
                }
                column(T001Caption; T001CaptionLbl)
                {
                }
                column(Cat1Caption; Cat1CaptionLbl)
                {
                }
                column(Inventory_Posting_Group_Statistics_Group; "Statistics Group")
                {
                }
                column(Inventory_Posting_Group_Category; Category)
                {
                }
                column(Inventory_Posting_Group_Source_No__Filter; "Source No. Filter")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    Cat1 := '';
                    Cat1 := CopyStr(Category, 3);
                    if "Statistics Group" = 1 then T001 := 'HON';
                    if "Statistics Group" = 2 then T001 := 'HDLS';
                    if "Statistics Group" = 3 then T001 := 'OTHER';
                    if "Statistics Group" = 4 then T001 := 'LOCAL';

                    /*
                    //AAA-JUNE 2002
                    IF "Statistics Group"=1 THEN T001:='HON';
                    IF "Statistics Group"=2 THEN T001:='HDLS';
                    IF "Statistics Group"=3 THEN T001:='OTHER';
                    IF "Statistics Group"=4 THEN T001:='LOCAL';
                    *///#1

                end;

                trigger OnPostDataItem()
                begin
                    CurrReport.NewPage;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(Category);
                    CurrReport.NewPage;
                    //SETFILTER("Source No.  Filter","Job Budget Line"."Job No.");
                    //SETFILTER("Source Filter",Job.Vessel);

                    //*** CurrReport.ShowOutput := FooterPrinted;
                    FooterPrinted := false;

                    //*** CurrReport.ShowOutput :=
                    //CurrReport.TotalsCausedBy(Category); //"Inventory Posting Group".Category);
                    Cat1 := CopyStr(Category, 3);

                    //*** CurrReport.ShowOutput :=
                    // CurrReport.TotalsCausedBy(LastFieldNo);

                    if not FooterPrinted then
                        LastFieldNo := CurrReport.TotalsCausedBy;
                    //*** CurrReport.ShowOutput := not FooterPrinted;
                    FooterPrinted := true;

                    //*** CurrReport.ShowOutput :=
                    /// CurrReport.TotalsCausedBy = "Inventory Posting Group".FieldNo("Statistics Group");

                    //AAA-JUNE 2002
                end;
            }

            trigger OnAfterGetRecord()
            begin
                //Recorded
                //CALCFIELDS(Points);
                Points := Job.PointZ("No.", '', GetFilter("Date Filter"), '', '', '', Vessel);
                "Incentive Days" := ("Sea Days" - "Deductible Lost Days (Incentiv");
                if JobSetup.Get then
                    if "Incentive Days" > 0 then
                        "Incentive Points Determinant" := Points * (JobSetup."Standard Sea Days" / "Incentive Days");

                //IncentiveLookUp.GET;
                IncentiveLookUp.SetRange(IncentiveLookUp.TableId, JobSetup."Incentive Rate Code" + "Fishing Country Code");
                IncentiveLookUp.SetRange(IncentiveLookUp."Lower Amount", 0, "Incentive Points Determinant");
                IncentiveLookUp.SetRange(IncentiveLookUp."Upper Amount", "Incentive Points Determinant", 999999);
                if IncentiveLookUp.Find('-') then
                    Validate("Incentive Rate", IncentiveLookUp."Extract Amount");

                Validate("Incentive (Pt. Based)", "Incentive Rate" * Points);
                //"Incentive (Hook Fish)":= "Incentive (Hook Fish)"/2;  //Incentive does not
                Validate("Total Incentive", "Incentive (Pt. Based)" + "Incentive (Hook Fish)");
                Validate("Net Incentive", "Total Incentive" + "Add/Ded. Crew");


                //Actual
                //CALCFIELDS("Points Actual");
                "Points Actual" := Job.PointsActual("No.", GetFilter("Date Filter"), '', '', '');
                if JobSetup.Get then
                    if "Incentive Days" > 0 then
                        "Incentive Pts Determt Actual" := "Points Actual" * (JobSetup."Standard Sea Days" / "Incentive Days");

                //IncentiveLookUp.GET;
                IncentiveLookUp.SetRange(IncentiveLookUp.TableId, JobSetup."Incentive Rate Code" + "Fishing Country Code");
                IncentiveLookUp.SetRange(IncentiveLookUp."Lower Amount", 0, "Incentive Pts Determt Actual");
                IncentiveLookUp.SetRange(IncentiveLookUp."Upper Amount", "Incentive Pts Determt Actual", 999999);
                if IncentiveLookUp.Find('-') then
                    Validate("Incentive Rate Actual", IncentiveLookUp."Extract Amount");

                Validate("Incentive (Pt. Based) Actual", "Incentive Rate Actual" * "Points Actual");
                //MESSAGE('%1 %2 %3', "Incentive (Pt. Based) Actual","Incentive Rate Actual","Points Actual");
                Validate("Total Incentive Actual", "Incentive (Pt. Based) Actual" + "Incentive (Hook Fish)");
                Validate("Net Incentive Actual", "Total Incentive Actual" + "Add/Ded. Crew");
                Modify;
            end;

            trigger OnPreDataItem()
            begin
                //*** CurrReport.ShowOutput(CrewList);
                //*** CurrReport.ShowOutput(not CrewList);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(CrewList; CrewList)
                    {
                        Caption = 'Show Crew Sailing List';
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

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        "------------------": Integer;
        Res: Record Resource;
        ResG: Record "Resource Group";
        Country: Record "Country/Region";
        Jobs: Record Job;
        DimVal: Record "Dimension Value";
        Comp: Record "Company Information";
        Loc: Record Location;
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        JobSetup: Record "Jobs Setup";
        CrewList: Boolean;
        countz: Integer;
        "Incentive Days": Decimal;
        SeaDays: Integer;
        "Incentive Sea Days": Integer;
        COMPTitle: Text[30];
        T001: Text[50];
        VessNam: Text[30];
        Voyage: Text[30];
        Skipper: Text[30];
        CountryText: Text[30];
        Designation: Text[30];
        ETD: Date;
        ETA: Date;
        Nam: Code[50];
        Desig: Code[20];
        nation: Code[20];
        Vessel: Code[20];
        Dato: Date;
        Cat1: Code[20];
        TotalFor: Label 'Total for ';
        T002: Label 'Over all Total';
        Job_Budget_LineCaptionLbl: Label 'Job Budget Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VoyageCaptionLbl: Label 'Label1000000053';
        INCENTIVE_CALCULATION___AUTHORIZATIONCaptionLbl: Label 'INCENTIVE CALCULATION & AUTHORIZATION';
        SkipperCaptionLbl: Label 'Label1000000056';
        CountryTextCaptionLbl: Label 'Country';
        ETDCaptionLbl: Label 'Label1000000062';
        ETACaptionLbl: Label 'Label1000000064';
        SeaDaysCaptionLbl: Label 'Label1000000065';
        Incentive_Sea_Days_CaptionLbl: Label 'Label1000000096';
        Crew_Sailing_ListCaptionLbl: Label 'Crew Sailing List';
        Job_Ledger_Entry_DescriptionCaptionLbl: Label 'Name';
        SignatureCaptionLbl: Label 'Signature';
        Designation_CaptionLbl: Label 'Designation';
        Res__Employee_No__CaptionLbl: Label 'No.';
        nationCaptionLbl: Label 'Nationality';
        DesigCaptionLbl: Label 'Designation';
        NamCaptionLbl: Label 'Name';
        countzCaptionLbl: Label 'S/N';
        Res__Employee_No___Control1000000102CaptionLbl: Label 'No.';
        SkipperCaption_Control1000000007Lbl: Label 'Skipper';
        TotalCaptionLbl: Label 'Total';
        Jobs__Incentive__Hook_Fish__CaptionLbl: Label 'Add: Hook Fish Inc.';
        Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish___Jobs__Add_Ded__Crew_CaptionLbl: Label 'Net Incentive';
        Jobs__Incentive_Rate_Actual_CaptionLbl: Label 'Incentive/Point';
        Jobs__Incentive__Pt__Based__Actual_CaptionLbl: Label 'Point Based Inc.';
        Jobs__Incentive_Pts_Determt_Actual_CaptionLbl: Label 'Points for rate of Commision';
        Jobs__Incentive__Pt__Based__Actual__Jobs__Incentive__Hook_Fish__CaptionLbl: Label 'Total Incentive';
        Jobs__Add_Ded__Crew_CaptionLbl: Label 'Add/Ded Crew';
        Job__Points_Actual_CaptionLbl: Label 'Actual Point';
        Received_ByCaptionLbl: Label 'Received By';
        Checked_ByCaptionLbl: Label 'Checked By';
        Authorized_ByCaptionLbl: Label 'Authorized By';
        OperationsCaptionLbl: Label 'Operations';
        CodeCaptionLbl: Label 'Code';
        DescriptionCaptionLbl: Label 'Description';
        Points_KgCaptionLbl: Label 'Points/Kg';
        InventoryCaptionLbl: Label 'Inventory';
        PointsCaptionLbl: Label 'Points';
        T001CaptionLbl: Label 'Group';
        Cat1CaptionLbl: Label 'Category';
        DayFrac: Decimal;
        Alloted: Decimal;
}

