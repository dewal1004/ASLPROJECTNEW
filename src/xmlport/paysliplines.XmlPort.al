xmlport 50029 "paysliplines"
{
    DefaultFieldsValidation = false;
    Direction = Export;
    Format = VariableText;
    Caption = 'paysliplines';
    schema
    {
        textelement(Node)
        {
            tableelement("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
            {
                AutoSave = false;
                AutoUpdate = false;
                XmlName = 'Employee';
                fieldelement(No; "Payroll-Payslip Lines."."Payroll Period")
                {
                    FieldValidate = no;
                }
                fieldelement(BirthDate; "Payroll-Payslip Lines."."Employee No")
                {
                    FieldValidate = no;
                }
                fieldelement(EmploymentDate; "Payroll-Payslip Lines."."E/D Code")
                {
                }
                fieldelement(InactiveDate; "Payroll-Payslip Lines.".Amount)
                {
                    FieldValidate = no;
                }
                fieldelement(TerminationDate; "Payroll-Payslip Lines."."Global Dimension 1 Code")
                {
                    FieldValidate = no;
                }
                fieldelement(SuspensionModifiedDate; "Payroll-Payslip Lines."."Global Dimension 2 Code")
                {
                }
                fieldelement(a; "Payroll-Payslip Lines.".AmountToBook)
                {
                }
                fieldelement(b; "Payroll-Payslip Lines."."Debit Account")
                {
                }
                fieldelement(c; "Payroll-Payslip Lines."."Credit Account")
                {
                }
                fieldelement(d; "Payroll-Payslip Lines."."Payslip Group ID")
                {
                }
                fieldelement(e; "Payroll-Payslip Lines."."Pos. In Payslip Grp.")
                {
                }
                fieldelement(f; "Payroll-Payslip Lines."."Payslip appearance")
                {
                }
                fieldelement(g; "Payroll-Payslip Lines."."Debit Acc. Type")
                {
                }
                fieldelement(h; "Payroll-Payslip Lines."."Credit Acc. Type")
                {
                }
                fieldelement(i; "Payroll-Payslip Lines.".HasBeenChanged)
                {
                }
                fieldelement(j; "Payroll-Payslip Lines.".ChangeCounter)
                {
                }
                fieldelement(k; "Payroll-Payslip Lines."."Payslip Column")
                {
                }
                fieldelement(l; "Payroll-Payslip Lines."."S. Report appearance")
                {
                }
                fieldelement(m; "Payroll-Payslip Lines."."Overline Column")
                {
                }
                fieldelement(n; "Payroll-Payslip Lines."."Underline Amount")
                {
                }
                fieldelement(o; "Payroll-Payslip Lines."."Loan ID")
                {
                }
                fieldelement(p; "Payroll-Payslip Lines."."Monthly Variable")
                {
                }
                fieldelement(q; "Payroll-Payslip Lines."."Postg Group")
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
