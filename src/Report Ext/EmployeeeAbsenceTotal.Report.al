report 50152 "Employeee Absence Total"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/EmployeeeAbsenceTotal.rdlc';

    dataset
    {
        dataitem("Employee Absence"; "Employee Absence")
        {
            DataItemTableView = SORTING("Employee No.", "Cause of Absence Code", "From Date");
            RequestFilterFields = "Employee No.", "Cause of Absence Code";
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
            column(Employee_Absence__Employee_No__; "Employee No.")
            {
            }
            column(Employee_Absence__Cause_of_Absence_Code_; "Cause of Absence Code")
            {
            }
            column(Employee_Absence__Employee_No___Control1000000014; "Employee No.")
            {
            }
            column(Employee_Absence__Cause_of_Absence_Code__Control1000000017; "Cause of Absence Code")
            {
            }
            column(Employee_Absence_Quantity; Quantity)
            {
            }
            column(AbsenceLessByForDate; AbsenceLessByForDate)
            {

            }
            column(Quantity_DayDiff; Quantity - DayDiff)
            {

            }
            column(TotalFor___FIELDCAPTION__Cause_of_Absence_Code__; TotalFor + FieldCaption("Cause of Absence Code"))
            {
            }
            column(Employee_Absence_Quantity_Control1000000023; Quantity)
            {
            }
            column(Employee_Absence__Cause_of_Absence_Code__Control1000000000; "Cause of Absence Code")
            {
            }
            column(DayDiff; DayDiff)
            {

            }
            column(Quantity_DayDiff_Control1000000028; Quantity - DayDiff)
            {

            }
            column(TotalFor___FIELDCAPTION__Employee_No___; TotalFor + FieldCaption("Employee No."))
            {
            }
            column(Employee_Absence_Quantity_Control1000000025; Quantity)
            {
            }
            column(Employee_Absence__Employee_No___Control1000000007; "Employee No.")
            {
            }
            column(Emp_FullName; Emp.FullName)
            {
            }
            column(DayDiff_Control1000000019; DayDiff)
            {

            }
            column(Quantity_DayDiff_Control1000000026; Quantity - DayDiff)
            {

            }
            column(Quantity_DayDiff_Control1000000030; Quantity - DayDiff)
            {

            }
            column(Employee_Absence_Quantity_Control1000000031; Quantity)
            {
            }
            column(Employee_AbsenceCaption; Employee_AbsenceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee_Absence__Employee_No___Control1000000014Caption; FieldCaption("Employee No."))
            {
            }
            column(Emp_FullNameCaption; Emp_FullNameCaptionLbl)
            {
            }
            column(Employee_Absence_QuantityCaption; Employee_Absence_QuantityCaptionLbl)
            {
            }
            column(Quantity_DayDiff_Control1000000026Caption; Quantity_DayDiff_Control1000000026CaptionLbl)
            {
            }
            column(Employee_Absence__Employee_No__Caption; FieldCaption("Employee No."))
            {
            }
            column(Employee_Absence__Cause_of_Absence_Code_Caption; FieldCaption("Cause of Absence Code"))
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Employee_Absence_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Cause of Absence Code");
                CurrReport.CreateTotals(DayDiff);
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
        "--------------": Integer;
        Emp: Record Employee;
        DayDiff: Decimal;
        "Show Details": Boolean;
        AbsenceLessByForDate: Code[10];
        Employee_AbsenceCaptionLbl: Label 'Employee Absence';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Emp_FullNameCaptionLbl: Label 'Full Name';
        Employee_Absence_QuantityCaptionLbl: Label 'Projected Quantity';
        Quantity_DayDiff_Control1000000026CaptionLbl: Label 'Days Absent';
        TotalCaptionLbl: Label 'Total';
}

