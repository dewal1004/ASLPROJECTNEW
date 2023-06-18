report 50163 "Online loan"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/Onlineloan.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Online loan';
    dataset
    {
        dataitem("Loan."; "Loan.")
        {
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
            column(Loan___Loan_Amount_; "Loan Amount")
            {
            }
            column(Loan__Department; Department)
            {
            }
            column(Loan___Date_of_Joining_; "Date of Joining")
            {
            }
            column(Loan__EmployeeGrp; EmployeeGrp)
            {
            }
            column(Loan___Emp__Status_; "Emp. Status")
            {
            }
            column(Loan___AnnualBasic_1_2__; "AnnualBasic(1/2)")
            {
            }
            column(Loan___Loan_ID_; "Loan ID")
            {
            }
            column(Loan___Staff_No__; "Staff No.")
            {
            }
            column(Loan___Staff_Name_; "Staff Name")
            {
            }
            column(Loan_Type; "Loan Type")
            {
            }
            column(Loan___Start_Period_; "Start Period")
            {
            }
            column(Loan___Number_of_Payments_; "Number of Payments")
            {
            }
            column(Loan___Monthly_Repayment_; "Monthly Repayment")
            {
            }
            column(Loan___Voucher_No__for_Loan_; "Voucher No. for Loan")
            {
            }
            column(Loan___Posting_Date_for_Loan_; "Posting Date for Loan")
            {
            }
            column(Loan_Caption; Loan_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(LOAN_APPROVALCaption; LOAN_APPROVALCaptionLbl)
            {
            }
            column(Loan___Loan_Amount_Caption; FieldCaption("Loan Amount"))
            {
            }
            column(Loan__DepartmentCaption; FieldCaption(Department))
            {
            }
            column(Loan___Date_of_Joining_Caption; FieldCaption("Date of Joining"))
            {
            }
            column(Loan__EmployeeGrpCaption; FieldCaption(EmployeeGrp))
            {
            }
            column(Loan___Emp__Status_Caption; FieldCaption("Emp. Status"))
            {
            }
            column(V50____Of_Annual_BasicCaption; V50____Of_Annual_BasicCaptionLbl)
            {
            }
            column(Loan___Loan_ID_Caption; FieldCaption("Loan ID"))
            {
            }
            column(Loan___Staff_No__Caption; FieldCaption("Staff No."))
            {
            }
            column(Loan___Staff_Name_Caption; FieldCaption("Staff Name"))
            {
            }
            column(Loan___Loan_Type_Caption; FieldCaption("Loan Type"))
            {
            }
            column(Loan___Start_Period_Caption; FieldCaption("Start Period"))
            {
            }
            column(Loan___Number_of_Payments_Caption; FieldCaption("Number of Payments"))
            {
            }
            column(Loan___Monthly_Repayment_Caption; FieldCaption("Monthly Repayment"))
            {
            }
            column(Loan___Voucher_No__for_Loan_Caption; FieldCaption("Voucher No. for Loan"))
            {
            }
            column(Loan___Posting_Date_for_Loan_Caption; FieldCaption("Posting Date for Loan"))
            {
            }
            column(Loan_Recommended_by_HOD__Caption; Loan_Recommended_by_HOD__CaptionLbl)
            {
            }
            column(Loan_Recommended_by_HR_Caption; Loan_Recommended_by_HR_CaptionLbl)
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
        Loan_CaptionLbl: Label 'Loan.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        LOAN_APPROVALCaptionLbl: Label 'LOAN APPROVAL';
        V50____Of_Annual_BasicCaptionLbl: Label '50 %  Of Annual Basic';
        Loan_Recommended_by_HOD__CaptionLbl: Label 'Loan Recommended by HOD :';
        Loan_Recommended_by_HR_CaptionLbl: Label 'Loan Recommended by HR:';
}
