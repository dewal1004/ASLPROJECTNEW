report 99969 "Catch to Cold Room & Budget"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/CatchtoColdRoomBudget.rdlc';

    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = SORTING(Code);
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
            column(Location__Qty_to_Cold_Room_; "Qty to Cold Room")
            {
            }
            column(Location__Qty_Budgeted_; "Qty Budgeted")
            {
            }
            column(Location__Qty_Budgeted__Control1000000000; "Qty Budgeted")
            {
            }
            column(Location__Qty_to_Cold_Room__Control1000000007; "Qty to Cold Room")
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
            column(Location__Qty_to_Cold_Room_Caption; FieldCaption("Qty to Cold Room"))
            {
            }
            column(Location__Qty_Budgeted_Caption; FieldCaption("Qty Budgeted"))
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
        LocationCaptionLbl: Label 'Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

