report 50055 "PRoll; Create next Payroll"
{
    // This batch Job copies payroll entries from one period to another for the
    // employee. Further, it closes the entries of the source period.

    ProcessingOnly = true;

    dataset
    {
        dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
        {
            DataItemTableView = SORTING ("Payroll Period", "Employee No");
            RequestFilterFields = "Payroll Period", "Employee No";

            trigger OnAfterGetRecord()
            begin
                //susp. by hassan//Codeunit65005.RUN("Payroll-Payslip Header");
                Counter := Counter + 1;
                Window.Update(1, Counter);
            end;

            trigger OnPreDataItem()
            begin
                if not Confirm('You are sure you want to create the next payroll', true) then CurrReport.Break;

                if GetFilter("Payroll Period") = '' then
                    Error('One Period must be entered as a parameter');

                if GetRangeMin("Payroll Period") <>
                    GetRangeMax("Payroll Period") then
                    /* A range of Periods was requested as a Delimitation */
                  Error('Transfer for multiple period is not possible');

                Comma := ',';
                if StrPos(GetFilter("Payroll Period"), Comma) <> 0 then
                    /* More than one period was requested as a delimitation */
                  Error('Transfer for multiple period is not possible');


                Window.Open('Total Number of PaySlips Created  #1###');

                Counter := 0;

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
        YesNo: Boolean;
        Comma: Text[1];
        OrSymbol: Text[1];
        Counter: Integer;
        Window: Dialog;
}

