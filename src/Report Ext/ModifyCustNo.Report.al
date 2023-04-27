report 99982 "Modify Cust No"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ModifyCustNo.rdlc';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.");
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
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(Customer__Salesperson_Code_; "Salesperson Code")
            {
            }
            column(CustomerCaption; CustomerCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Customer__No__Caption; FieldCaption("No."))
            {
            }
            column(Customer_NameCaption; FieldCaption(Name))
            {
            }
            column(Customer__Salesperson_Code_Caption; FieldCaption("Salesperson Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                StFrom := IncStr(StFrom);
                //MESSAGE('New No %1',StFrom);
                if cust.Get("No.") then cust.Rename(StFrom);
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
        cust: Record Customer;
        StFrom: Code[20];
        CustomerCaptionLbl: Label 'Customer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

