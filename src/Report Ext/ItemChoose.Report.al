report 60500 "Item_Choose"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ItemChoose.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Item Category Code";
            column(No; Item."No.")
            {
            }
            column(Description; Item.Description)
            {
            }
            column(UOM; Item."Base Unit of Measure")
            {
            }
            column(Unit_Cost; Item."Unit Cost")
            {
            }
            column(Purch_Qty; Item."Purchases (Qty.)")
            {
            }
            column(Item_Category_Code; Item."Item Category Code")
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
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

    trigger OnPreReport()
    begin
        Company_Info.Get;
    end;

    var
        Company_Info: Record "Company Information";
}

