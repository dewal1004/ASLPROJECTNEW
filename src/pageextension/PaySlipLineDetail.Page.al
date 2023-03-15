page 50071 "PaySlip Line Detail"
{
    ApplicationArea = All;
    Caption = 'PaySlip Line Detail';
    PageType = List;
    SourceTable = "Payroll-Payslip Lines.";
    UsageCategory = Administration;
    Editable = false;
    InsertAllowed = false;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Employee No";"Employee No")
                {
                    Visible = true;
                }
                field(EmpNAme;EmpNAme)
                {
                    Visible = true;
                }
                field("Payroll Period";"Payroll Period")
                {
                    Visible = true;
                }
                field("E/D Code";"E/D Code")
                {
                    Visible = true;
                }
                field("Payslip Text";"Payslip Text")
                {
                    Visible = true;
                }
                field(Amount;Amount)
                {
                    Visible = true;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
       if  EmpRec.Get("Employee No") then
       EmpNAme := EmpRec.FullName()
    end;
    var
    EmpRec: Record Employee;
    EmpNAme: Text [100];

}
