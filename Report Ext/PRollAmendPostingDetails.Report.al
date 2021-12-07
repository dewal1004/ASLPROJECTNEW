report 50660 "PRoll; Amend Posting Details"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING ("No.");
            RequestFilterFields = "No.", "Posting Group";
            dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
            {
                DataItemLink = "Employee No" = FIELD ("No.");
                DataItemTableView = SORTING ("Employee No", "Payroll Period");
                RequestFilterFields = "Payroll Period", "E/D Code";

                trigger OnAfterGetRecord()
                begin
                    Window.Update(3, "Payroll Period");
                    Window.Update(4, "E/D Code");
                    InfoCounter := InfoCounter + 1;
                    Window.Update(5, InfoCounter);

                    if BookGrLinesRec.Get(Employee."Posting Group", "E/D Code")
                    then begin
                        begin
                            "Debit Account" := BookGrLinesRec."Debit Account No.";
                            "Credit Account" := BookGrLinesRec."Credit Account No.";
                            "Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                            "Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                            "Global Dimension 1 Code" := BookGrLinesRec."Global Dimension 1 Code";
                            "Global Dimension 2 Code" := BookGrLinesRec."Global Dimension 2 Code";
                        end;
                        if not BookGrLinesRec."Transfer Department" then
                            "Global Dimension 1 Code" := ''
                        else
                            if "Global Dimension 1 Code" = '' then
                                "Global Dimension 1 Code" := Employee."Global Dimension 1 Code";

                        if not BookGrLinesRec."Transfer Business Units" then
                            "Global Dimension 2 Code" := ''
                        else
                            if "Global Dimension 2 Code" = '' then
                                "Global Dimension 2 Code" := Employee."Global Dimension 2 Code";

                        if BookGrLinesRec."Debit Acc. Type" = 1 then
                            if Employee."SAM Number" <> '' then
                                "Debit Account" := Employee."SAM Number";

                        if BookGrLinesRec."Credit Acc. Type" = 1 then
                            if Employee."SAM Number" <> '' then
                                "Credit Account" := Employee."SAM Number";

                        Modify;
                    end
                    else begin
                        "Global Dimension 1 Code" := '';
                        "Global Dimension 2 Code" := '';
                        "Debit Account" := '';
                        "Credit Account" := '';
                        Modify;
                    end;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                if Employee.Blocked then CurrReport.Skip; //Added by Adam to skip Blocked Employees
                Window.Update(2, "No.");
            end;

            trigger OnPreDataItem()
            begin
                Window.Open('Total Employees Selected   #1##\' +
                            'Current Employee Number    #2###\' +
                            'Current Period     #3####\' +
                            'Current E/D        #4###\' +
                            'Counter   #5###');
                Window.Update(1, Count);
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
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
        InfoCounter: Integer;
        Window: Dialog;
}

