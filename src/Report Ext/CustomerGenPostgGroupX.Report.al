report 99989 "Customer Gen Postg GroupX"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CustomerGenPostgGroupX.rdlc';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Gen. Bus. Posting Group";
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
            column(Customer__Search_Name_; "Search Name")
            {
            }
            column(Customer__Name_2_; "Name 2")
            {
            }
            column(Customer__Gen__Bus__Posting_Group_; "Gen. Bus. Posting Group")
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
            column(Customer__Search_Name_Caption; FieldCaption("Search Name"))
            {
            }
            column(Customer__Name_2_Caption; FieldCaption("Name 2"))
            {
            }
            column(Customer__Gen__Bus__Posting_Group_Caption; FieldCaption("Gen. Bus. Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if "Gen. Bus. Posting Group" = 'NATIONAL' then
                    "Gen. Bus. Posting Group" := 'LOCAL';
                Customer."Global Dimension 1 Code" := 'MRKT';
                Customer."Global Dimension 2 Code" := 'ATLANTIC';
                Modify();
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
        CustomerCaptionLbl: Label 'Customer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

