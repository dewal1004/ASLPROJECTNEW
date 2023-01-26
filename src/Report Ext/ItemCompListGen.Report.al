report 90998 "Item Comp List Gen"
{
    // Caught Item category= C
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ItemCompListGen.rdlc';


    dataset
    {
        dataitem("Unit of Measure"; "Unit of Measure")
        {
            DataItemTableView = WHERE("Catch Code" = FILTER(<> ''));
            column(Unit_of_Measure_Code; Code)
            {
            }
            dataitem(Item; Item)
            {
                RequestFilterFields = "No.";
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
                column(Item__No__; "No.")
                {
                }
                column(Item_Description; Description)
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
                column(Item_DescriptionCaption; FieldCaption(Description))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    //Item.Class:='C';
                    ItemsList.Init;
                    ItemsList := Item;
                    ItemsList."No." := Item."No." + "Unit of Measure"."Catch Code" + 'P';
                    if ItemsList.Description = '_' then
                        ItemsList.Description := ItemsList.Description else
                        ItemsList.Description := Item.Description + ' ' + "Unit of Measure".Code + ' ' + 'P';
                    ItemsList."Description 2" := "Unit of Measure".Code + '-' + 'Prim 7 Star';
                    //ItemsList.Class:='S';  //Sea  Catches//@mahendar
                    if not ItemsList.Insert then ItemsList.Modify;
                    ValidateItemUOM(ItemsList."No.");
                    ItemsList."No." := Item."No." + "Unit of Measure"."Catch Code" + 'K';
                    if ItemsList.Description = '_' then
                        ItemsList.Description := ItemsList.Description else
                        ItemsList.Description := Item.Description + ' ' + "Unit of Measure".Code + ' ' + 'K';
                    ItemsList."Description 2" := "Unit of Measure".Code + '-' + 'Krustasud';
                    if not ItemsList.Insert then ItemsList.Modify;
                    ValidateItemUOM(ItemsList."No.");
                end;
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
        ItemsList: Record Item;
        ItemUOM: Record "Item Unit of Measure";
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';

    [Scope('OnPrem')]
    procedure ValidateItemUOM(Itemsno: Code[10])
    begin
        ItemUOM.Init;
        ItemUOM."Item No." := Itemsno;
        ItemUOM.Code := 'KG';
        ItemUOM."Qty. per Unit of Measure" := 1;
        if not ItemUOM.Insert then ItemUOM.Modify;
    end;
}

