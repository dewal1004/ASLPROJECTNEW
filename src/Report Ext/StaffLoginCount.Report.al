report 50100 "Staff Login Count"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/StaffLoginCount.rdlc';
    Caption = 'Staff Login Count';
    dataset
    {
        dataitem(Employee; Employee)
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
            column(Employee__No__; "No.")
            {
            }
            column(Employee__Bar_Code_ID_; "Bar Code ID")
            {
            }
            column(CTOTAL; CTOTAL)
            {
            }
            column(EmployeeCaption; EmployeeCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FieldCaption("No."))
            {
            }
            column(Employee__Bar_Code_ID_Caption; FieldCaption("Bar Code ID"))
            {
            }
            dataitem("Staff Log In"; "Monthly Variables Lines.")
            {
                DataItemLink = "Employee No" = FIELD("No."), "Payroll Period" = FIELD("Bar Code ID");
                DataItemTableView = SORTING("Payroll Period", Units, Rate) WHERE(Quantity = CONST(0));
                RequestFilterFields = Units;
                column(AIN_1_; AIN[1])
                {
                }
                column(AIN_2_; AIN[2])
                {
                }
                column(AIN_3_; AIN[3])
                {
                }
                column(CTOTAL_Control1000000000; CTOTAL)
                {
                }
                column(Staff_Log_In_Payroll_Period; "Payroll Period")
                {
                }
                column(Staff_Log_In_Employee_No; "Employee No")
                {
                }
                column(Staff_Log_In_E_D_Code; "E/D Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /*i:=i+1;
                    AIN[i]:= Rate;
                                  */
                end;

                trigger OnPreDataItem()
                begin
                    //SETRANGE("Bar Code ID",Employee."Bar Code ID");
                    i := 0;
                end;
            }
            dataitem("Staff Log Out"; "Monthly Variables Lines.")
            {
                DataItemLink = "Employee No" = FIELD("No."), "Payroll Period" = FIELD("Bar Code ID");
                DataItemTableView = SORTING("Payroll Period", Units, Rate) WHERE(Quantity = CONST(1));
                column(BOUT_1_; BOUT[1])
                {
                }
                column(BOUT_2_; BOUT[2])
                {
                }
                column(BOUT_3_; BOUT[3])
                {
                }
                column(Staff_Log_Out_Payroll_Period; "Payroll Period")
                {
                }
                column(Staff_Log_Out_Employee_No; "Employee No")
                {
                }
                column(Staff_Log_Out_E_D_Code; "E/D Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    i := i + 1;
                    //BOUT[i]:= Rate; ///AAA
                end;

                trigger OnPreDataItem()
                begin
                    i := 0;
                end;
            }

            trigger OnPostDataItem()
            begin
                //FOR i:=1 TO 5 DO
                //   CTOTAL:= (AIN[i]-BOUT[i]);
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
        AIN: array[10] of Time;
        BOUT: array[10] of Time;
        CTOTAL: Integer;
        i: Integer;
        EmployeeCaptionLbl: Label 'Employee';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
