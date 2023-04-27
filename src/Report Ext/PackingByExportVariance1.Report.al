report 59181 "Packing By Export Variance1"
{
    // Stat Cd 1 to 3 : Export
    // Stat Cd 4      : Local
    // Stat Cd 0 filtered to Packg Materials Only
    // "Inventory Posting Group".Inventory
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/PackingByExportVariance1.rdlc';


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
                DecimalPlaces = 0 : 0;
            }
            column(Stor_10_; Stor[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Stor_4_; Stor[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Stor_1__Stor_2__Stor_3_; Stor[1] + Stor[2] + Stor[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_Group__Inventory_Stor_10_; "Inventory Posting Group".Inventory - Stor[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Location_Code_Control1000000022; Code)
            {
            }
            column(Location_Name; Name)
            {
            }
            column(Stor_5__Control1000000035; Stor[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Stor_10__Control1000000036; Stor[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Stor_4__Control1000000037; Stor[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Stor_1__Stor_2__Stor_3__Control1000000038; Stor[1] + Stor[2] + Stor[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_Group__Inventory_Stor_10__Control1000000039; "Inventory Posting Group".Inventory - Stor[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Inventory_Posting_GroupCaption; Inventory_Posting_GroupCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VarianceCaption; VarianceCaptionLbl)
            {
            }
            column(PackgCaption; PackgCaptionLbl)
            {
            }
            column(LocalCaption; LocalCaptionLbl)
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
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_1__Stor_2__Stor_3__Control1000000007; Stor[1] + Stor[2] + Stor[3])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_4__Control1000000025; Stor[4])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_5__Control1000000026; Stor[5])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_10__Control1000000028; Stor[10])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_2_; Stor[2])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_3_; Stor[3])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Stor_6_; Stor[6])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Inventory_Posting_Group__Statistics_Group_Caption; FieldCaption("Statistics Group"))
                {
                }

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Statistics Group");
                    SetFilter("Inventory Posting Group"."Location Filter", Location.Code);
                    SetFilter("Inventory Posting Group".Reasoncodefilter, ' ');

                    Stor[5] := Inventory - Stor[10] - Stor[10];
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
        StatG: Integer;
        I: Integer;
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VarianceCaptionLbl: Label 'Variance';
        PackgCaptionLbl: Label 'Packg';
        LocalCaptionLbl: Label 'Local';
        ExportCaptionLbl: Label 'Export';
        Total_LandingCaptionLbl: Label 'Total Landing';
        TotalCaptionLbl: Label 'Total';
}

