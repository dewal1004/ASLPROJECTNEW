report 70042 "Daily BreakUp by VesselY"
{
    // T001
    // "Inventory Posting Group".Category
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DailyBreakUpbyVesselY.rdlc';


    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            RequestFilterFields = "Statistics Group", Category;
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
                //*** DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_Group_Category; Category)
            {
            }
            column(T001; T001)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(SeaRangeC_6_; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5_; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4_; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3_; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2_; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1_; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7_; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8_; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9_; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10_; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11_; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12_; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13_; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14_; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15_; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16_; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17_; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18_; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19_; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_20_; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_21_; SeaRangeC[21])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_22_; SeaRangeC[22])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_23_; SeaRangeC[23])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_24_; SeaRangeC[24])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control17; Inventory)
            {
            }
            column(Inventory_Posting_GroupCaption; Inventory_Posting_GroupCaptionLbl)
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
            column(Inventory_Posting_Group_CategoryCaption; FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }

            trigger OnAfterGetRecord()
            begin

                level := TotLoc;
                repeat
                    SetFilter("Location Filter", SeaRange[level]);
                    CalcFields(Inventory);
                    SeaRangeC[level] := Inventory;
                    level := level - 1;
                until level = 0
            end;

            trigger OnPreDataItem()
            begin

                LastFieldNo := FieldNo(Category);
                //AAA-April 2002
                locate.SetRange(locate."Location Type", 1);
                locate.SetRange(locate."Location Group", 1);
                TotLoc := locate.Count;
                Countx := 1;
                repeat
                    SeaRange[Countx] := locate.Code;
                    Countx := Countx + 1;
                until locate.Next = 0;


                CurrReport.ShowOutput(false);
                //*** CurrReport.TotalsCausedBy ="Inventory Posting Group";. //Category;
                if "Statistics Group" = 1 then T001 := 'WHITE/FLOWER TIGER HON, WILD TIGER,HEADLESS';
                if "Statistics Group" = 2 then T001 := 'BRHON, CUTTLE FISH/CRAB/OTHER EXPORTS';
                if "Statistics Group" = 3 then T001 := 'CUTTLE FISH/CRAB/OTHER EXPORTS';
                if "Statistics Group" = 4 then T001 := 'SHRIMP IN BAG/NET FISH/HOOK FISH';

                if not FooterPrinted then
                    LastFieldNo := CurrReport.TotalsCausedBy;
                CurrReport.ShowOutput(not FooterPrinted);
                FooterPrinted := true;
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

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "-------": Integer;
        Colum001: array[3] of Decimal;
        RespCenter: Record "Responsibility Center";
        CompanyInfo: Record "Company Information";
        FormatAddr: Codeunit "Format Address";
        I: Integer;
        locate: Record Location;
        SeaRange: array[100] of Text[30];
        SeaRangeC: array[100] of Decimal;
        Countx: Integer;
        TotLoc: Integer;
        level: Integer;
        T001: Text[50];
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

