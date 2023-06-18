report 99998 "Update Location rec"
{
    // To Update Vessel, Voyage No. And Operation No on Location Record
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateLocationrec.rdlc';
    Caption = 'Update Location rec';
    dataset
    {
        dataitem(Job; Job)
        {
            RequestFilterFields = "No.";
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
            column(Job__No__; "No.")
            {
            }
            column(Job__Search_Description_; "Search Description")
            {
            }
            column(Job_Description; Description)
            {
            }
            column(Job__Description_2_; "Description 2")
            {
            }
            column(Job__Bill_to_Customer_No__; "Bill-to Customer No.")
            {
            }
            column(Job__Creation_Date_; "Creation Date")
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job__Search_Description_Caption; FieldCaption("Search Description"))
            {
            }
            column(Job_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Job__Description_2_Caption; FieldCaption("Description 2"))
            {
            }
            column(Job__Bill_to_Customer_No__Caption; FieldCaption("Bill-to Customer No."))
            {
            }
            column(Job__Creation_Date_Caption; FieldCaption("Creation Date"))
            {
            }
            column(Job__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Validate(Vessel, Vessel);
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
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
