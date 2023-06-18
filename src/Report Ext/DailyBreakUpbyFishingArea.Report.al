report 50044 "Daily BreakUp by Fishing Area"
{
    // T001
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/DailyBreakUpbyFishingArea.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Daily BreakUp by Fishing Area';
    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = SORTING("Statistics Group", Category, "S/No.") ORDER(Ascending) WHERE("Statistics Group" = FILTER(<> 0), "In Use" = CONST(true));
            RequestFilterFields = "Statistics Group", Category;
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
            column(SeaRange_24_; SeaRange[24])
            {
            }
            column(SeaRange_23_; SeaRange[23])
            {
            }
            column(SeaRange_22_; SeaRange[22])
            {
            }
            column(SeaRange_21_; SeaRange[21])
            {
            }
            column(SeaRange_20_; SeaRange[20])
            {
            }
            column(SeaRange_19_; SeaRange[19])
            {
            }
            column(SeaRange_18_; SeaRange[18])
            {
            }
            column(SeaRange_17_; SeaRange[17])
            {
            }
            column(SeaRange_16_; SeaRange[16])
            {
            }
            column(SeaRange_15_; SeaRange[15])
            {
            }
            column(SeaRange_14_; SeaRange[14])
            {
            }
            column(SeaRange_13_; SeaRange[13])
            {
            }
            column(SeaRange_12_; SeaRange[12])
            {
            }
            column(SeaRange_11_; SeaRange[11])
            {
            }
            column(SeaRange_10_; SeaRange[10])
            {
            }
            column(SeaRange_9_; SeaRange[9])
            {
            }
            column(SeaRange_8_; SeaRange[8])
            {
            }
            column(SeaRange_7_; SeaRange[7])
            {
            }
            column(SeaRange_6_; SeaRange[6])
            {
            }
            column(SeaRange_5_; SeaRange[5])
            {
            }
            column(SeaRange_4_; SeaRange[4])
            {
            }
            column(SeaRange_3_; SeaRange[3])
            {
            }
            column(SeaRange_2_; SeaRange[2])
            {
            }
            column(SeaRange_1_; SeaRange[1])
            {
            }
            column(Inventory_Posting_Group__Statistics_Group__; "Statistics Group")
            {
            }
            column(T001; T001)
            {
            }
            column(Cat; Cat)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(SeaRangeC_6_; SeaRangeC[6])
            {
            }
            column(SeaRangeC_5_; SeaRangeC[5])
            {
            }
            column(SeaRangeC_4_; SeaRangeC[4])
            {
            }
            column(SeaRangeC_3_; SeaRangeC[3])
            {
            }
            column(SeaRangeC_2_; SeaRangeC[2])
            {
            }
            column(SeaRangeC_1_; SeaRangeC[1])
            {
            }
            column(SeaRangeC_7_; SeaRangeC[7])
            {
            }
            column(SeaRangeC_8_; SeaRangeC[8])
            {
            }
            column(SeaRangeC_9_; SeaRangeC[9])
            {
            }
            column(SeaRangeC_10_; SeaRangeC[10])
            {
            }
            column(SeaRangeC_11_; SeaRangeC[11])
            {
            }
            column(SeaRangeC_12_; SeaRangeC[12])
            {
            }
            column(SeaRangeC_13_; SeaRangeC[13])
            {
            }
            column(SeaRangeC_14_; SeaRangeC[14])
            {
            }
            column(SeaRangeC_15_; SeaRangeC[15])
            {
            }
            column(SeaRangeC_16_; SeaRangeC[16])
            {
            }
            column(SeaRangeC_17_; SeaRangeC[17])
            {
            }
            column(SeaRangeC_18_; SeaRangeC[18])
            {
            }
            column(SeaRangeC_19_; SeaRangeC[19])
            {
            }
            column(SeaRangeC_20_; SeaRangeC[20])
            {
            }
            column(SeaRangeC_21_; SeaRangeC[21])
            {
            }
            column(SeaRangeC_22_; SeaRangeC[22])
            {
            }
            column(SeaRangeC_23_; SeaRangeC[23])
            {
            }
            column(SeaRangeC_24_; SeaRangeC[24])
            {
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
            }
            column(Inventory_Posting_Group_Inventory_Control1000000058; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control17; Inventory)
            {
            }
            column(Daily_Break_Up_By_Fising_AreaCaption; Daily_Break_Up_By_Fising_AreaCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group__Statistics_Group__Caption; Inventory_Posting_Group__Statistics_Group__CaptionLbl)
            {
            }
            column(CatCaption; CatCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Category; Category)
            {
            }

            trigger OnAfterGetRecord()
            begin
                level := TotLoc;
                repeat
                    SetFilter("Source Filter", SeaRange[level]);
                    CalcFields(Inventory);
                    SeaRangeC[level] := Inventory;
                    level := level - 1;
                until level = 0;

                //Show Inventory for all location by releasing location filter
                SetRange("Source Filter");
                //SETFILTER("Location Filter",'<>%1 & <>%2','CRM-ASL','''');
                CalcFields(Inventory);
                Message('%1', Inventory);
            end;

            trigger OnPreDataItem()
            begin

                if "Statistics Group" = 1 then T001 := '  HON';
                if "Statistics Group" = 2 then T001 := '  HDLS';
                if "Statistics Group" = 3 then T001 := '  OTHER';
                if "Statistics Group" = 4 then T001 := '  LOCAL';

                LastFieldNo := FieldNo("Statistics Group");
                //AAA-April 2002
                //locate.SETRANGE(locate."Location Type",1);
                TotLoc := locate.Count;
                Countx := 1;
                repeat
                    SeaRange[Countx] := locate.Code;
                    Countx := Countx + 1;
                until locate.Next() = 0;

                //AAA-Aug 2002
                //locate2.SETFILTER(locate2."date filter",'%1',GETRANGEMAX("Date Filter"));
                if locate2.Find('-') then
                    repeat
                        locate2.CalcFields(locate2."Voyage Sea Days");
                        locate2.VSDVal := locate2."Voyage Sea Days";
                        locate2.Modify();
                    until locate2.Next() = 0;

                //AAA-April 2002
                TotLoc := locate.Count;
                Countx := 1;
                if locate.Find('-') then
                    repeat
                        if locate.VSDVal <> 0 then begin
                            SeaRange[Countx] := locate.Code;
                            //MESSAGE('Reported %1 of Sea Days %2',locate.Code,locate.VSDVal);
                            Countx := Countx + 1;
                        end;
                    until locate.Next() = 0;
                TotLoc := Countx - 1;
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

    trigger OnInitReport()
    begin
        CompanyInfo.Get()
    end;

    var
        LastFieldNo: Integer;
        TotalFor: Label 'Total for ';
        CompanyInfo: Record "Company Information";
        locate: Record "Fishing Area +";
        locate2: Record "Fishing Area +";
        SeaRange: array[100] of Text[30];
        SeaRangeC: array[100] of Decimal;
        Countx: Integer;
        TotLoc: Integer;
        level: Integer;
        T001: Text[50];
        Cat: Code[15];
        Daily_Break_Up_By_Fising_AreaCaptionLbl: Label 'Daily Break Up By Fising Area';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Inventory_Posting_Group__Statistics_Group__CaptionLbl: Label 'Label9';
        CatCaptionLbl: Label 'Category';
}
