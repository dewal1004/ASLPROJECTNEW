xmlport 90993 "Employees Import"
{
    Format = VariableText;
    Caption = 'Employees Import';
    schema
    {
        textelement(Rootnode)
        {
            tableelement("Payroll-Employee Group Lines."; "Payroll-Employee Group Lines.")
            {
                AutoReplace = false;
                AutoUpdate = true;
                XmlName = 'EmployeeGroupLines';
                fieldelement(a; "Payroll-Employee Group Lines."."Employee Group")
                {
                }
                fieldelement(s; "Payroll-Employee Group Lines."."E/D Code")
                {
                }
                fieldelement(d; "Payroll-Employee Group Lines.".Units)
                {
                }
                fieldelement(f; "Payroll-Employee Group Lines.".Rate)
                {
                }
                fieldelement(g; "Payroll-Employee Group Lines.".Flag)
                {
                }
                fieldelement(h; "Payroll-Employee Group Lines."."Default Amount")
                {
                }
                fieldelement(j; "Payroll-Employee Group Lines.".ChangeOthers)
                {
                }
                fieldelement(k; "Payroll-Employee Group Lines.".HasBeenChanged)
                {
                }
                fieldelement(l; "Payroll-Employee Group Lines.".ChangeCounter)
                {
                }
                fieldelement(p; "Payroll-Employee Group Lines."."Employee Name")
                {
                }
                fieldelement(o; "Payroll-Employee Group Lines."."ED Category")
                {
                }
                fieldelement(i; "Payroll-Employee Group Lines."."Old Default Amount")
                {
                }
                fieldelement(u; "Payroll-Employee Group Lines."."Date Changed")
                {
                }
                fieldelement(y; "Payroll-Employee Group Lines."."Payslip Group ID")
                {
                }
                fieldelement(q; "Payroll-Employee Group Lines.".Quantity)
                {
                }
            }
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
}
