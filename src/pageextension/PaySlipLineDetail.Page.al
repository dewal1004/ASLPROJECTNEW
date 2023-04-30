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
                field("Employee No"; "Employee No")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field(EmpNAme; EmpNAme)
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Payroll Period"; "Payroll Period")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("E/D Code"; "E/D Code")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Payslip Text"; "Payslip Text")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    Visible = true;
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        if EmpRec.Get("Employee No") then
            EmpNAme := EmpRec.FullName()
    end;

    var
        EmpRec: Record Employee;
        EmpNAme: Text[100];

}
