report 50069 "OUTSTANDING LOANS"
{
    // UNL-ASL3.60.01.007 (Santus) May 24, 2005
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/OUTSTANDINGLOANS.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Loan."; "Loan.")
        {
            DataItemTableView = SORTING("Loan Type", "Posting Date for Loan", "Voucher No. for Loan", "Staff No.");
            RequestFilterFields = "Loan Type", "Staff No.", "Posting Date for Loan";
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
            column(GETFILTERS; GetFilters)
            {
            }
            column(Loan___Loan_Type_; "Loan Type")
            {
            }
            column(Loan___Posting_Date_for_Loan_; "Posting Date for Loan")
            {
            }
            column(Loan___Staff_Name_; "Staff Name")
            {
            }
            column(Loan__Description; Description)
            {
            }
            column(Loan___Loan_Amount_; "Loan Amount")
            {
            }
            column(Loan___Remaining_Amount_; "Remaining Amount")
            {
            }
            column(Loan___Staff_No__; "Staff No.")
            {
            }
            column(TotalFor___FORMAT__Loan_Type__; TotalFor + Format("Loan Type"))
            {
            }
            column(Loan___Loan_Amount__Control29; "Loan Amount")
            {
            }
            column(Loan___Remaining_Amount__Control30; "Remaining Amount")
            {
            }
            column(Loan_Caption; Loan_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(FiltersCaption; FiltersCaptionLbl)
            {
            }
            column(Loan___Posting_Date_for_Loan_Caption; FieldCaption("Posting Date for Loan"))
            {
            }
            column(Loan___Staff_Name_Caption; FieldCaption("Staff Name"))
            {
            }
            column(Loan__DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Loan___Loan_Amount_Caption; FieldCaption("Loan Amount"))
            {
            }
            column(Loan___Remaining_Amount_Caption; FieldCaption("Remaining Amount"))
            {
            }
            column(Loan___Staff_No__Caption; FieldCaption("Staff No."))
            {
            }
            column(Loan___Loan_Type_Caption; FieldCaption("Loan Type"))
            {
            }
            column(Loan__Loan_ID; "Loan ID")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Loan Type");
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
        Loan_CaptionLbl: Label 'Loan.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        FiltersCaptionLbl: Label 'Filters';
        CompanyInformation: Record "Company Information";
}

