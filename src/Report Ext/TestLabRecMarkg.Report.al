report 99124 "Test Lab Rec Markg"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/TestLabRecMarkg.rdlc';
    Caption = 'Test Lab Rec Markg';
    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.") WHERE("No." = FILTER('C000001' .. 'C000010'));
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
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(Customer_Amount; Amount)
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
            column(Customer_AmountCaption; FieldCaption(Amount))
            {
            }

            trigger OnAfterGetRecord()
            begin
                marked := Customer.Mark(); // Test if marked
                if marked then Message(Text000, Customer."No.", marked);
            end;

            trigger OnPreDataItem()
            begin
                Customer.SetCurrentKey("No.");
                Customer."No." := 'C000005';
                Customer.Find('=');
                Customer.Mark(true); // Mark a record
                Customer.Find('-'); // Find first record

                /*
                REPEAT // Go through records
                  marked := Customer.MARK; // Test if marked
                  MESSAGE(Text000, Customer."No.", marked);
                UNTIL Customer.NEXT = 0;
                */
                No1 := Count();
                Customer.MarkedOnly(true);
                No2 := Count();
                Message(Text001 + Text002, No1, No2);
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
        marked: Boolean;
        Text000: Label 'Customer.No.:%1, Marked?:%2';
        No1: Integer;
        No2: Integer;
        Text001: Label 'Number of records before MARKEDONLY: %1\';
        Text002: Label 'Number of records after MARKEDONLY: %2';
        CustomerCaptionLbl: Label 'Customer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
