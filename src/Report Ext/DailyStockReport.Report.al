report 99039 "Daily Stock Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DailyStockReport.rdlc';

    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = WHERE("Location Type" = FILTER(Store));
            RequestFilterFields = "Code";
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
            column(Location_Code; Code)
            {
            }
            column(Location_Name; Name)
            {
            }
            column(LocationCaption; LocationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Location_CodeCaption; FieldCaption(Code))
            {
            }
            column(Location_NameCaption; FieldCaption(Name))
            {
            }
            column(Inventory_Posting_Group_InventoryCaption; "Inventory Posting Group".FieldCaption(Inventory))
            {
            }
            column(Inventory_Posting_Group_DescriptionCaption; "Inventory Posting Group".FieldCaption(Description))
            {
            }
            column(Inventory_Posting_Group_CodeCaption; "Inventory Posting Group".FieldCaption(Code))
            {
            }
            dataitem("Inventory Posting Group"; "Inventory Posting Group")
            {
                DataItemTableView = WHERE(Inventory = FILTER(<> 0), Code = FILTER('0' .. '5'));
                column(Inventory_Posting_Group_Code; Code)
                {
                }
                column(Inventory_Posting_Group_Description; Description)
                {
                }
                column(Inventory_Posting_Group_Inventory; Inventory)
                {
                }

                trigger OnPreDataItem()
                begin
                    SetFilter("Location Filter", Location.Code);
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
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

