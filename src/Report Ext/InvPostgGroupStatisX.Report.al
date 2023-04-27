report 99099 "Inv Postg Group StatisX"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/InvPostgGroupStatisX.rdlc';

    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
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
            column(Inventory_Posting_Group__Statistics_Group_; "Statistics Group")
            {
            }
            column(Inventory_Posting_Group_Category; Category)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(Inventory_Posting_Group_Category_Control17; Category)
            {
            }
            column(Inventory_Posting_Group__Statistics_Group__Control20; "Statistics Group")
            {
            }
            column(Inventory_Posting_Group__Points_KG_; "Points/KG")
            {
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group__Points_KG__Control29; "Points/KG")
            {
            }
            column(Inventory_Posting_Group_Inventory_Control30; Inventory)
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group__Points_KG__Control32; "Points/KG")
            {
            }
            column(Inventory_Posting_Group_Inventory_Control33; Inventory)
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
            column(Inventory_Posting_Group_Category_Control17Caption; FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group__Statistics_Group__Control20Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group__Points_KG_Caption; FieldCaption("Points/KG"))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption; FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Inventory_Posting_Group_CategoryCaption; FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Code; Code)
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
        TotalFor: Label 'Total for ';
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

