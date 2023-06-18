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
                field("Employee No"; Rec."Employee No")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field(EmpNAme; EmpNAme)
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Payroll Period"; Rec."Payroll Period")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("E/D Code"; Rec."E/D Code")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Payslip Text"; Rec."Payslip Text")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    Visible = true;
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        if EmpRec.Get(Rec."Employee No") then
            EmpNAme := EmpRec.FullName()
    end;

    var
        EmpRec: Record Employee;
        EmpNAme: Text[100];
}
