report 80041 "catch record"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/catchrecord.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Statistics Group", "Inventory Posting Group") WHERE("Gen. Prod. Posting Group" = CONST('CTH'));
            RequestFilterFields = "Statistics Group", "Inventory Posting Group", "Date Filter", "Variant Filter";
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
            column(Item__Statistics_Group_; "Statistics Group")
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item_Inventory_Control23; Inventory)
            {
                DecimalPlaces = 2 : 5;
            }
            column(Colum_3_; Colum[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(Colum_2_; Colum[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(Colum_1_; Colum[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(Item_Description_Control1000000005; Description)
            {
            }
            column(Item__Inventory_Posting_Group__Control1000000006; "Inventory Posting Group")
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Item_Inventory_Control25; Inventory)
            {
                DecimalPlaces = 2 : 5;
            }
            column(Item_Inventory_Control1000000012; Inventory)
            {
                DecimalPlaces = 2 : 5;
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(V0_5_KGCaption; V0_5_KGCaptionLbl)
            {
            }
            column(V1_KGCaption; V1_KGCaptionLbl)
            {
            }
            column(V2_KGCaption; V2_KGCaptionLbl)
            {
            }
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Item__No__Caption; FieldCaption("No."))
            {
            }
            column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Inventory Posting Group");

                CurrReport.ShowOutput(CurrReport.TotalsCausedBy = Item.FieldNo("Inventory Posting Group"));
                CurrReport.ShowOutput(false);
                for I := 1 to 3 do begin
                    Colum[I] := 0;
                    I := I + 1;
                end;
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
        "---": Text[30];
        Colum: array[3] of Decimal;
        RespCenter: Record "Responsibility Center";
        CompanyInfo: Record "Company Information";
        FormatAddr: Codeunit "Format Address";
        I: Integer;
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        V0_5_KGCaptionLbl: Label '0.5 KG';
        V1_KGCaptionLbl: Label '1 KG';
        V2_KGCaptionLbl: Label '2 KG';
}

