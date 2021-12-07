report 50067 "Payroll entries"
{
    // This report prints ALL the entries for an employee for the requested periods.
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/Payrollentries.rdlc';


    dataset
    {
        dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
        {
            DataItemTableView = SORTING("Payroll Period", "Employee No");
            RequestFilterFields = "Payroll Period", "Employee No", "Closed?";
            RequestFilterHeading = 'Parameters for payslips';
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(DELCHR__Employee_No________; DelChr("Employee No", '<>'))
            {
            }
            column(Payroll_Payslip_Header___Employee_Name_; "Employee Name")
            {
            }
            column(PRollRepTitle; PRollRepTitle)
            {
            }
            column(Employee_Caption; Employee_CaptionLbl)
            {
            }
            column(E_D_CodeCaption; E_D_CodeCaptionLbl)
            {
            }
            column(Payslip_TextCaption; Payslip_TextCaptionLbl)
            {
            }
            column(AmountCaption; AmountCaptionLbl)
            {
            }
            column(Payroll_Payslip_Header__Payroll_Period; "Payroll Period")
            {
            }
            column(Payroll_Payslip_Header__Employee_No; "Employee No")
            {
            }
            dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
            {
                DataItemLink = "Payroll Period" = FIELD("Payroll Period"), "Employee No" = FIELD("Employee No");
                DataItemTableView = SORTING("Payroll Period", "Employee No", "Payslip Group ID", "Pos. In Payslip Grp.");
                column(Payroll_Payslip_Lines___E_D_Code_; "E/D Code")
                {
                }
                column(PayEntryText; PayEntryText)
                {
                }
                column(ROUND__Amount_0_05_; Round(Amount, 0.05))
                {
                    DecimalPlaces = 2 : 2;
                }
                column(Payroll_Payslip_Lines__Payroll_Period; "Payroll Period")
                {
                }
                column(Payroll_Payslip_Lines__Employee_No; "Employee No")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /*””””””””””””””””””””””””””””””””””””””””””””
                    ‚ Get the text for the payslip line          ‚
                    ””””””””””””””””””””””””””””””””””””””””””””*/
                    if RecOfEDFile.Get("E/D Code") then
                        PayEntryText := RecOfEDFile."Payslip Text";

                end;
            }

            trigger OnAfterGetRecord()
            var
                PayEmp: Record Employee;
            begin
                if not PayEmp.Get("Payroll-Payslip Header."."Employee No") then CurrReport.Skip; //Added by Adam to skip Deleted? Employees//
                                                                                                 // Not: Employees are normally kept
                if PayEmp.Blocked then CurrReport.Skip; //Added by Adam to skip Blocked Employees

                PeriodRec.Get("Payroll Period");
                PRollRepTitle := 'Payroll entries for ' + DelChr("Payroll Period", '<>');
                if PeriodRec.Name <> '' then
                    PRollRepTitle := PRollRepTitle + ' (' + DelChr(PeriodRec.Name, '<>') +
                                                     ')';
                if "Closed?" then
                    PRollRepTitle := PRollRepTitle + '  [Closed Entries] ';
            end;

            trigger OnPreDataItem()
            begin
                CompanyData.Get;
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
        PRollRepTitle: Text[80];
        CompanyData: Record "Company Information";
        RecOfEDFile: Record "Payroll ED Codes.";
        PeriodRec: Record "Payroll-Periods.";
        PayEntryText: Text[30];
        AmountToPrint: Text[15];
        Employee_CaptionLbl: Label 'Employee:';
        E_D_CodeCaptionLbl: Label 'E/D Code';
        Payslip_TextCaptionLbl: Label 'Payslip Text';
        AmountCaptionLbl: Label 'Amount';
}

