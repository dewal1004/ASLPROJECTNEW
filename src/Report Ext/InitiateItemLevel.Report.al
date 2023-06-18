report 90985 "Initiate Item Level"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/InitiateItemLevel.rdlc';
    Caption = 'Initiate Item Level';
    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Gen. Prod. Posting Group";
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
            column(Item__No__; "No.")
            {
            }
            column(Item__No__2_; "No. 2")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Search_Description_; "Search Description")
            {
            }
            column(Item__Description_2_; "Description 2")
            {
            }
            column(Item__Assembly_BOM_; "Assembly BOM")
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
            column(Item__No__2_Caption; FieldCaption("No. 2"))
            {
            }
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Item__Search_Description_Caption; FieldCaption("Search Description"))
            {
            }
            column(Item__Description_2_Caption; FieldCaption("Description 2"))
            {
            }
            column(Item__Assembly_BOM_Caption; FieldCaption("Assembly BOM"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                K := K + 10;
                IJL.Init();
                IJL."Journal Template Name" := 'ITEM';
                IJL."Journal Batch Name" := 'DEFAULT';
                IJL."Line No." := K;
                IJL."Posting Date" := Today;
                IJL."Entry Type" := 2;
                IJL."Document No." := 'OPBAL';
                IJL.Validate(IJL."Item List Cat", Item."Gen. Prod. Posting Group");
                IJL.Validate(IJL."Item No.", Item."No.");
                IJL.Validate(IJL."Shortcut Dimension 2 Code", 'ATLANTIC');
                IJL.Validate(IJL."Location Code", 'GNRL ASL');
                IJL.Validate(IJL."Gen. Bus. Posting Group", 'LOCAL');
                IJL.Validate(IJL."Gen. Prod. Posting Group", Item."Gen. Prod. Posting Group");
                IJL.Validate(IJL.Quantity, 10000);
                IJL.Validate(IJL."Unit Amount", 10);
                if not IJL.Insert() then IJL.Modify();
            end;

            trigger OnPreDataItem()
            begin
                K := 1000;
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
        IJL: Record "Item Journal Line";
        K: Integer;
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
