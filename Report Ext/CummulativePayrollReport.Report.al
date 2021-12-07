report 50117 "Cummulative Payroll Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/CummulativePayrollReport.rdlc';

    dataset
    {
        dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
        {
            DataItemTableView = SORTING("Employee No", "Payroll Period") ORDER(Ascending);
            RequestFilterFields = "Payroll Period", "Employee No";
            column(filters; filters)
            {
            }
            column(ED14; ED14)
            {
            }
            column(ED13; ED13)
            {
            }
            column(ED12; ED12)
            {
            }
            column(ED11; ED11)
            {
            }
            column(ED10; ED10)
            {
            }
            column(ED9; ED9)
            {
            }
            column(ED8; ED8)
            {
            }
            column(ED7; ED7)
            {
            }
            column(ED6; ED6)
            {
            }
            column(ED5; ED5)
            {
            }
            column(ED4; ED4)
            {
            }
            column(ED3; ED3)
            {
            }
            column(ED2; ED2)
            {
            }
            column(ED1; ED1)
            {
            }
            column(ED1_Control1000000000; ED1)
            {
            }
            column(ED2_Control1000000001; ED2)
            {
            }
            column(ED3_Control1000000017; ED3)
            {
            }
            column(ED4_Control1000000016; ED4)
            {
            }
            column(ED5_Control1000000023; ED5)
            {
            }
            column(ED6_Control1000000022; ED6)
            {
            }
            column(ED7_Control1000000021; ED7)
            {
            }
            column(ED8_Control1000000020; ED8)
            {
            }
            column(ED9_Control1000000019; ED9)
            {
            }
            column(ED10_Control1000000018; ED10)
            {
            }
            column(ED11_Control1000000041; ED11)
            {
            }
            column(ED12_Control1000000040; ED12)
            {
            }
            column(ED13_Control1000000039; ED13)
            {
            }
            column(ED14_Control1000000038; ED14)
            {
            }
            column(AMT10; AMT10)
            {
            }
            column(AMT9; AMT9)
            {
            }
            column(AMT8; AMT8)
            {
            }
            column(AMT7; AMT7)
            {
            }
            column(AMT6; AMT6)
            {
            }
            column(AMT5; AMT5)
            {
            }
            column(AMT4; AMT4)
            {
            }
            column(AMT3; AMT3)
            {
            }
            column(AMT2; AMT2)
            {
            }
            column(AMT1; AMT1)
            {
            }
            column(name; name)
            {
            }
            column(Payroll_Payslip_Lines___Employee_No_; "Employee No")
            {
            }
            column(AMT14; AMT14)
            {
            }
            column(AMT13; AMT13)
            {
            }
            column(AMT12; AMT12)
            {
            }
            column(AMT11; AMT11)
            {
            }
            column(AMT10_Control1000000024; AMT10)
            {
            }
            column(AMT9_Control1000000025; AMT9)
            {
            }
            column(AMT8_Control1000000026; AMT8)
            {
            }
            column(AMT7_Control1000000027; AMT7)
            {
            }
            column(AMT6_Control1000000028; AMT6)
            {
            }
            column(AMT5_Control1000000029; AMT5)
            {
            }
            column(AMT4_Control1000000030; AMT4)
            {
            }
            column(AMT3_Control1000000031; AMT3)
            {
            }
            column(AMT2_Control1000000032; AMT2)
            {
            }
            column(AMT1_Control1000000033; AMT1)
            {
            }
            column(Payroll_Payslip_Lines___Employee_No__Control1000000034; "Employee No")
            {
            }
            column(name_Control1000000035; name)
            {
            }
            column(AMT14_Control1000000046; AMT14)
            {
            }
            column(AMT13_Control1000000047; AMT13)
            {
            }
            column(AMT12_Control1000000048; AMT12)
            {
            }
            column(AMT11_Control1000000049; AMT11)
            {
            }
            column(Cummulative_Payroll_ReportCaption; Cummulative_Payroll_ReportCaptionLbl)
            {
            }
            column(Emp_NameCaption; Emp_NameCaptionLbl)
            {
            }
            column(Emp_No_Caption; Emp_No_CaptionLbl)
            {
            }
            column(Emp_No_Caption_Control1000000003; Emp_No_Caption_Control1000000003Lbl)
            {
            }
            column(Emp_NameCaption_Control1000000006; Emp_NameCaption_Control1000000006Lbl)
            {
            }
            column(Payroll_Payslip_Lines__Payroll_Period; "Payroll Period")
            {
            }
            column(Payroll_Payslip_Lines__E_D_Code; "E/D Code")
            {
            }

            trigger OnAfterGetRecord()
            begin
                "empno." := "Payroll-Payslip Lines."."Employee No";
                if Emptable.Get("Payroll-Payslip Lines."."Employee No") then
                    name := Emptable."First Name";
                if Block then
                    if Emptable.Blocked then CurrReport.Skip;


                AMT1 := 0;
                AMT2 := 0;
                AMT3 := 0;
                AMT4 := 0;
                AMT5 := 0;
                AMT6 := 0;
                AMT7 := 0;
                AMT8 := 0;
                AMT9 := 0;
                AMT10 := 0;
                AMT11 := 0;
                AMT12 := 0;
                AMT13 := 0;
                AMT14 := 0;

                if "Payroll-Payslip Lines."."E/D Code" = ED1 then
                    AMT1 := Amount + AMT1
                else
                    if "Payroll-Payslip Lines."."E/D Code" = ED2 then
                        AMT2 := Amount + AMT2
                    else
                        if "Payroll-Payslip Lines."."E/D Code" = ED3 then
                            AMT3 := Amount + AMT3
                        else
                            if "Payroll-Payslip Lines."."E/D Code" = ED4 then
                                AMT4 := Amount + AMT4
                            else
                                if "Payroll-Payslip Lines."."E/D Code" = ED5 then
                                    AMT5 := Amount + AMT5
                                else
                                    if "Payroll-Payslip Lines."."E/D Code" = ED6 then
                                        AMT6 := Amount + AMT6
                                    else
                                        if "Payroll-Payslip Lines."."E/D Code" = ED7 then
                                            AMT7 := Amount + AMT7
                                        else
                                            if "Payroll-Payslip Lines."."E/D Code" = ED8 then
                                                AMT8 := Amount + AMT8
                                            else
                                                if "Payroll-Payslip Lines."."E/D Code" = ED9 then
                                                    AMT9 := Amount + AMT9
                                                else
                                                    if "Payroll-Payslip Lines."."E/D Code" = ED10 then
                                                        AMT10 := Amount + AMT10;

                if "Payroll-Payslip Lines."."E/D Code" = ED11 then
                    AMT11 := Amount + AMT11;

                if "Payroll-Payslip Lines."."E/D Code" = ED12 then
                    AMT12 := Amount + AMT12;

                if "Payroll-Payslip Lines."."E/D Code" = ED13 then
                    AMT13 := Amount + AMT13;

                if "Payroll-Payslip Lines."."E/D Code" = ED14 then
                    AMT14 := Amount + AMT14;

                CurrReport.ShowOutput(BodyPrinted);
                BodyPrinted := false;
            end;

            trigger OnPreDataItem()
            begin
                filters := "Payroll-Payslip Lines.".GetFilters;

                ED1 := '100';
                ED2 := '200';
                ED3 := '3200';
                ED4 := '3400';
                ED5 := '5930';
                ED6 := '5935';
                ED7 := '5940';
                ED8 := '5941';
                ED9 := '5942';
                ED10 := '5944';
                ED11 := '5946';
                ED12 := '5950';
                ED13 := '6000';
                ED14 := '7000';


                AMT1 := 0;
                AMT2 := 0;
                AMT3 := 0;
                AMT4 := 0;
                AMT5 := 0;
                AMT6 := 0;
                AMT7 := 0;
                AMT8 := 0;
                AMT9 := 0;
                AMT10 := 0;
                AMT11 := 0;
                AMT12 := 0;
                AMT13 := 0;
                AMT14 := 0;


                if "Payroll-Payslip Lines."."E/D Code" = ED1 then
                    AMT1 := Amount + AMT1
                else
                    if "Payroll-Payslip Lines."."E/D Code" = ED2 then
                        AMT2 := Amount + AMT2
                    else
                        if "Payroll-Payslip Lines."."E/D Code" = ED3 then
                            AMT3 := Amount + AMT3
                        else
                            if "Payroll-Payslip Lines."."E/D Code" = ED4 then
                                AMT4 := Amount + AMT4
                            else
                                if "Payroll-Payslip Lines."."E/D Code" = ED5 then
                                    AMT5 := Amount + AMT5
                                else
                                    if "Payroll-Payslip Lines."."E/D Code" = ED6 then
                                        AMT6 := Amount + AMT6
                                    else
                                        if "Payroll-Payslip Lines."."E/D Code" = ED7 then
                                            AMT7 := Amount + AMT7
                                        else
                                            if "Payroll-Payslip Lines."."E/D Code" = ED8 then
                                                AMT8 := Amount + AMT8
                                            else
                                                if "Payroll-Payslip Lines."."E/D Code" = ED9 then
                                                    AMT9 := Amount + AMT9
                                                else
                                                    if "Payroll-Payslip Lines."."E/D Code" = ED10 then
                                                        AMT10 := Amount + AMT10;

                if "Payroll-Payslip Lines."."E/D Code" = ED11 then
                    AMT11 := Amount + AMT11;

                if "Payroll-Payslip Lines."."E/D Code" = ED12 then
                    AMT12 := Amount + AMT12;

                if "Payroll-Payslip Lines."."E/D Code" = ED13 then
                    AMT13 := Amount + AMT13;

                if "Payroll-Payslip Lines."."E/D Code" = ED14 then
                    AMT14 := Amount + AMT14;

                CurrReport.ShowOutput(BodyPrinted);
                BodyPrinted := false;
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

    trigger OnInitReport()
    begin
        Block := true;
    end;

    var
        seadays: Integer;
        Date: Date;
        points: Decimal;
        Emptable: Record Employee;
        "empno.": Code[20];
        Block: Boolean;
        ED1: Code[20];
        AMT1: Decimal;
        ED2: Code[20];
        AMT2: Decimal;
        name: Text[30];
        ED3: Code[20];
        ED4: Code[20];
        ED5: Code[20];
        ED6: Code[20];
        ED7: Code[20];
        ED8: Code[20];
        ED9: Code[20];
        ED10: Code[20];
        ED11: Code[20];
        ED12: Code[20];
        ED13: Code[20];
        ED14: Code[20];
        AMT3: Decimal;
        AMT4: Decimal;
        AMT5: Decimal;
        AMT6: Decimal;
        AMT7: Decimal;
        AMT8: Decimal;
        AMT9: Decimal;
        AMT10: Decimal;
        BodyPrinted: Boolean;
        AMT11: Decimal;
        AMT12: Decimal;
        AMT13: Decimal;
        AMT14: Decimal;
        filters: Text[255];
        Cummulative_Payroll_ReportCaptionLbl: Label 'Cummulative Payroll Report';
        Emp_NameCaptionLbl: Label 'Emp Name';
        Emp_No_CaptionLbl: Label 'Emp No.';
        Emp_No_Caption_Control1000000003Lbl: Label 'Emp No.';
        Emp_NameCaption_Control1000000006Lbl: Label 'Emp Name';
}

