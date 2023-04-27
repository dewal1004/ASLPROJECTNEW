report 90041 "Prim7* Reporting ListZ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/Prim7ReportingListZ.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
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
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__Statistics_Group_; "Statistics Group")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Colum_3_; Colum[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(Colum_2_; Colum[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(Item__Inventory_Posting_Group__Control1000000000; "Inventory Posting Group")
            {
            }
            column(Item_Description_Control17; Description)
            {
            }
            column(Colum_1_; Colum[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Item_Inventory_Control23; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item_Inventory_Control25; Inventory)
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FieldCaption("No."))
            {
            }
            column(Item_Description_Control17Caption; FieldCaption(Description))
            {
            }
            column(V2_KGCaption; V2_KGCaptionLbl)
            {
            }
            column(V1_KGCaption; V1_KGCaptionLbl)
            {
            }
            column(V0_5_KGCaption; V0_5_KGCaptionLbl)
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }
            column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }

            trigger OnPreDataItem()
            begin

                if Item.Class = 'A' then
                    Colum[2] := Item.Inventory
                else
                    if Item.Class = 'B' then
                        Colum[3] := Item.Inventory
                    else
                        Colum[1] := Item.Inventory;
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
        "---": Text[30];
        Colum: array[3] of Decimal;
        RespCenter: Record "Responsibility Center";
        CompanyInfo: Record "Company Information";
        FormatAddr: Codeunit "Format Address";
        TotalFor: Label 'Total for ';
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        V2_KGCaptionLbl: Label '2 KG';
        V1_KGCaptionLbl: Label '1 KG';
        V0_5_KGCaptionLbl: Label '0.5 KG';
}

