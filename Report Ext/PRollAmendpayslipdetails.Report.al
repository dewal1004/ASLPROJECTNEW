report 50559 "PRoll; Amend payslip details"
{
    // This function copies any changes made in the fields Payslip appearance,
    // Payslip Group ID, Pos. In Payslip Grp., from the E/D file to the
    // Payslip file.

    ProcessingOnly = true;

    dataset
    {
        dataitem("Payroll-E/D Codes."; "Payroll ED Codes.")
        {
            DataItemTableView = SORTING ("E/D Code");
            RequestFilterFields = "E/D Code";
            dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
            {
                DataItemTableView = SORTING ("Payroll Period", "Employee No");
                RequestFilterFields = "Payroll Period", "Employee No", "Closed?";

                trigger OnAfterGetRecord()
                begin
                    Window.Update(2, "Payroll Period");
                    Window.Update(3, "Employee No");
                    InfoCounter := InfoCounter + 1;
                    Window.Update(4, InfoCounter);
                    EntryFile.Reset;
                    EntryFile.SetRange("Payroll Period", "Payroll Period");
                    EntryFile.SetRange("Employee No", "Employee No");
                    EntryFile.SetRange("E/D Code", "Payroll-E/D Codes."."E/D Code");

                    EntryFile.ModifyAll("Payslip Group ID",
                                "Payroll-E/D Codes."."Payslip Group ID");
                    EntryFile.ModifyAll("Pos. In Payslip Grp.",
                                "Payroll-E/D Codes."."Pos. In Payslip Grp.");
                    EntryFile.ModifyAll("Payslip appearance",
                                "Payroll-E/D Codes."."Payslip appearance");
                    EntryFile.ModifyAll("Overline Column",
                                "Payroll-E/D Codes."."Overline Column");
                    EntryFile.ModifyAll("Underline Amount",
                                "Payroll-E/D Codes."."Underline Amount");
                    EntryFile.ModifyAll("Payslip Print Column",
                                "Payroll-E/D Codes."."Payslip Print Column");
                end;

                trigger OnPreDataItem()
                begin
                    EntryFile.LockTable(false);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Window.Open('Current E/D         #1#####\' +
                            'Current Period      #2####\' +
                            'Current Employee    #3###\' +
                            'Counter    #4###');
                Window.Update(1, "E/D Code");
            end;

            trigger OnPreDataItem()
            begin
                InfoCounter := 0;
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
        EntryFile: Record "Payroll-Payslip Lines.";
        InfoCounter: Integer;
        Window: Dialog;
}

