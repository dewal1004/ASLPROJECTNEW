report 50181 "Packing By Export Variance"
{
    // Stat Cd 1 to 3 : Export
    // Stat Cd 4      : Local
    // Stat Cd 0 filtered to Packg Materials Only
    // "Inventory Posting Group".Inventory
    // Item."Product Group Code"
    // Stor[i]
    // 1,2,3 :: Export
    // 4  :: Local
    // 5  :: Variance
    // 10 :: Inventory
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/PackingByExportVariance.rdlc';


    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = SORTING(Code) WHERE("Location Type" = FILTER(Vessel));
            column(COMPANYNAME; CompanyName)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(Location_Code; Code)
            {
            }
            column(Stor_5_; Stor[5])
            {

            }
            column(Stor_10_; Stor[10])
            {

            }
            column(Stor_4_; Stor[4])
            {

            }
            column(Stor_1__Stor_2__Stor_3_; Stor[1] + Stor[2] + Stor[3])
            {

            }
            column(Inventory_Posting_Group__Inventory_Stor_10_; "Inventory Posting Group".Inventory - Stor[10])
            {

            }
            column(Location_Code_Control1000000022; Code)
            {
            }
            column(Location_Name; Name)
            {
            }
            column(StorP_2_; StorP[2])
            {

            }
            column(Stor_1__Stor_2__Stor_3__Control1000000038; Stor[1] + Stor[2] + Stor[3])
            {

            }
            column(StorP_3_; StorP[3])
            {

            }
            column(StorP_1_; StorP[1])
            {

            }
            column(Stor_4__Control1000000037; Stor[4])
            {

            }
            column(VarCP_2_; VarCP[2])
            {

            }
            column(VarCP_1_; VarCP[1])
            {

            }
            column(Inventory_Posting_Group__Inventory_Stor_10__Control1000000039; "Inventory Posting Group".Inventory - Stor[10])
            {

            }
            column(Location_Name_Control1000000060; Name)
            {
            }
            column(Location_Code_Control1000000061; Code)
            {
            }
            column(Packing_By_Export_VarianceCaption; Packing_By_Export_VarianceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VarianceCaption; VarianceCaptionLbl)
            {
            }
            column(Local_Packing_Kgs_Caption; Local_Packing_Kgs_CaptionLbl)
            {
            }
            column(ExportCaption; ExportCaptionLbl)
            {
            }
            column(Total_LandingCaption; Total_LandingCaptionLbl)
            {
            }
            column(Location_NameCaption; FieldCaption(Name))
            {
            }
            column(Inventory_Posting_Group_CodeCaption; "Inventory Posting Group".FieldCaption(Code))
            {
            }
            column(Export_Paking_Kgs_Caption; Export_Paking_Kgs_CaptionLbl)
            {
            }
            column(VarianceCaption_Control1000000057; VarianceCaption_Control1000000057Lbl)
            {
            }
            column(LocalCaption; LocalCaptionLbl)
            {
            }
            column(TCaption; TCaptionLbl)
            {
            }
            column(BCaption; BCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            dataitem("Inventory Posting Group"; "Inventory Posting Group")
            {
                DataItemTableView = SORTING("Statistics Group", Category, "S/No.") WHERE(Code = FILTER('PK' | '0' .. '200'));
                RequestFilterFields = "Statistics Group";
                column(Inventory_Posting_Group__Statistics_Group_; "Statistics Group")
                {
                }
                column(Inventory_Posting_Group_Code; Code)
                {
                }
                column(Inventory_Posting_Group_Inventory; Inventory)
                {
                }
                column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
                {
                }
                column(Inventory_Posting_Group_Inventory_Control1000000020; Inventory)
                {
                }
                column(Inventory_Stor_10_; Inventory - Stor[10])
                {

                }
                column(Stor_1__Stor_2__Stor_3__Control1000000007; Stor[1] + Stor[2] + Stor[3])
                {

                }
                column(Stor_4__Control1000000025; Stor[4])
                {

                }
                column(Stor_5__Control1000000026; Stor[5])
                {

                }
                column(Stor_10__Control1000000028; Stor[10])
                {

                }
                column(Stor_2_; Stor[2])
                {

                }
                column(Stor_3_; Stor[3])
                {

                }
                column(Stor_6_; Stor[6])
                {

                }
                column(Inventory_Posting_Group__Statistics_Group_Caption; FieldCaption("Statistics Group"))
                {
                }

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Statistics Group");
                    SetFilter("Inventory Posting Group"."Source Filter", Location.Code);
                    SetFilter("Inventory Posting Group".Reasoncodefilter, ' ');
                end;
            }
            dataitem(Item; Item)
            {
                DataItemTableView = SORTING("item Category Code") WHERE("Item Category Code" = FILTER('PK'), "Inventory Entry Type Filter" = CONST(Transfer));
                column(Item__No__; "No.")
                {
                }
                column(Item__Item_Category_No__; "Item Category No.")
                {
                }
                column(Item_Inventory; Inventory)
                {
                }
                column(Item__Positive_Adjmt___Qty___; "Positive Adjmt. (Qty.)")
                {
                }
                column(Item__Positive_Adjmt___Qty____Control1000000049; "Positive Adjmt. (Qty.)")
                {
                }
                column(Item_Inventory_Control1000000050; Inventory)
                {
                }
                column(Item__Product_Group_Code_; "Item Category Code")
                {
                }
                column(Item__Positive_Adjmt___Qty____Control1000000051; "Positive Adjmt. (Qty.)")
                {
                }
                column(Item_Inventory_Control1000000052; Inventory)
                {
                }
                column(Item_InventoryCaption; FieldCaption(Inventory))
                {
                }
                column(Item__No__Caption; FieldCaption("No."))
                {
                }
                column(Item__Positive_Adjmt___Qty___Caption; FieldCaption("Positive Adjmt. (Qty.)"))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    SetFilter("Location Filter", Location.Code);
                    case Item."Item Category Code" of
                        'LOC':
                            StorP[1] := Inventory * "Pack Size (Kg).";
                        'ExpT':
                            StorP[2] := Inventory * "Pack Size (Kg).";
                        'ExpB':
                            StorP[3] := Inventory * "Pack Size (Kg).";
                    end
                end;

                trigger OnPreDataItem()
                begin
                    I := 1;
                    repeat CurrReport.CreateTotals(StorP[I]); I := I + 1; until I = 5;
                end;
            }

            trigger OnPreDataItem()
            begin
                I := 1;
                repeat CurrReport.CreateTotals(Stor[I]); I := I + 1; until I = 11;
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
        Stor: array[10] of Decimal;
        StorP: array[5] of Decimal;
        VarCP: array[2] of Decimal;
        StatG: Integer;
        I: Integer;
        Packing_By_Export_VarianceCaptionLbl: Label 'Packing By Export Variance';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VarianceCaptionLbl: Label 'Variance';
        Local_Packing_Kgs_CaptionLbl: Label 'Local Packing(Kgs)';
        ExportCaptionLbl: Label 'Export';
        Total_LandingCaptionLbl: Label 'Total Landing';
        Export_Paking_Kgs_CaptionLbl: Label 'Export Paking(Kgs)';
        VarianceCaption_Control1000000057Lbl: Label 'Variance';
        LocalCaptionLbl: Label 'Local';
        TCaptionLbl: Label 'T';
        BCaptionLbl: Label 'B';
        TotalCaptionLbl: Label 'Total';
}

