report 90901 "Caught for Incentive"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CaughtforIncentive.rdlc';
    Caption = 'Caught for Incentive';
    dataset
    {
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = SORTING("Statistics Group", Category) WHERE("Group Type" = CONST(Operation), Inventory = FILTER(<> 0));
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
            column(T001; T001)
            {
            }
            column(Cat1; Cat1)
            {
            }
            column(Inventory_Posting_Group_Code; Code)
            {
            }
            column(Inventory_Posting_Group_Description; Description)
            {
            }
            column(Inventory_Posting_Group_Inventory; Inventory)
            {
            }
            column(Inventory_Posting_Group__Points_KG_; "Points/KG")
            {
            }
            column(Inventory_Posting_Group_Points; Points)
            {
            }
            column(TotalFor___FIELDCAPTION_Category_; TotalFor + FieldCaption(Category))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control1000000029; Inventory)
            {
            }
            column(Inventory_Posting_Group_Points_Control1000000030; Points)
            {
            }
            column(TotalFor___COPYSTR_FIELDCAPTION__Statistics_Group___12_; TotalFor + CopyStr(FieldCaption("Statistics Group"), 12))
            {
            }
            column(Inventory_Posting_Group_Inventory_Control1000000032; Inventory)
            {
            }
            column(Inventory_Posting_Group_Points_Control1000000033; Points)
            {
            }
            column(Inventory_Posting_Group_Points_Control1000000025; Points)
            {
            }
            column(Inventory_Posting_Group_Inventory_Control1000000034; Inventory)
            {
            }
            column(T002; T002)
            {
            }
            column(Inventory_Posting_GroupCaption; Inventory_Posting_GroupCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Inventory_Posting_Group_CodeCaption; FieldCaption(Code))
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(KGSCaption; KGSCaptionLbl)
            {
            }
            column(Inventory_Posting_Group__Points_KG_Caption; FieldCaption("Points/KG"))
            {
            }
            column(Inventory_Posting_Group_PointsCaption; FieldCaption(Points))
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

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Category);

                //AAA-JUNE 2002
                if "Statistics Group" = 1 then T001 := 'WHITE/FLOWER TIGER HON, WILD TIGER,HEADLESS';
                if "Statistics Group" = 2 then T001 := 'BRHON, CUTTLE FISH/CRAB/OTHER EXPORTS';
                if "Statistics Group" = 3 then T001 := 'CUTTLE FISH/CRAB/OTHER EXPORTS';
                if "Statistics Group" = 4 then T001 := 'SHRIMP IN BAG/NET FISH/HOOK FISH';

                if not FooterPrinted then
                    LastFieldNo := CurrReport.TotalsCausedBy();
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
        Cat1: Code[20];
        T001: Text[50];
        T002: Label 'Over all Total';
        Inventory_Posting_GroupCaptionLbl: Label 'Inventory Posting Group';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        KGSCaptionLbl: Label 'KGS';
        T001CaptionLbl: Label 'Group';
        Cat1CaptionLbl: Label 'Category';
}
