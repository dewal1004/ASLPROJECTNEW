xmlport 90995 "50001 Payroll ED-Code import"
{
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement("Payroll-E/D Codes."; "Payroll ED Codes.")
            {
                XmlName = 'PayrollEDCodes';
                fieldelement(ed; "Payroll-E/D Codes."."E/D Code")
                {
                }
                fieldelement(search; "Payroll-E/D Codes."."Search Name")
                {
                }
                fieldelement(Payslip; "Payroll-E/D Codes."."Payslip Text")
                {
                }
                fieldelement(PayslipApperence; "Payroll-E/D Codes."."Payslip appearance")
                {
                }
                fieldelement(Units; "Payroll-E/D Codes.".Units)
                {
                }
                fieldelement(Compute; "Payroll-E/D Codes.".Compute)
                {
                }
                fieldelement(Factor; "Payroll-E/D Codes."."Factor Of")
                {
                }
                fieldelement(Perct; "Payroll-E/D Codes.".Percentage)
                {
                }
                fieldelement(Addsub; "Payroll-E/D Codes."."Add/Subtract")
                {
                }
                fieldelement(Tablelookup; "Payroll-E/D Codes."."Table Look Up")
                {
                }
                fieldelement(editamt; "Payroll-E/D Codes."."Edit Amount?")
                {
                }
                fieldelement(yesno; "Payroll-E/D Codes."."Yes/No Req.?")
                {
                }
                fieldelement(maxamt; "Payroll-E/D Codes."."Max. Amount")
                {
                }
                fieldelement(minamt; "Payroll-E/D Codes."."Min. Amount")
                {
                }
                fieldelement(rate; "Payroll-E/D Codes.".Rate)
                {
                }
                fieldelement(payslipgrpid; "Payroll-E/D Codes."."Payslip Group ID")
                {
                }
                fieldelement(posinpayslip; "Payroll-E/D Codes."."Pos. In Payslip Grp.")
                {
                }
                fieldelement(reset; "Payroll-E/D Codes."."Reset Next Period?")
                {
                }
                fieldelement(rnddirect; "Payroll-E/D Codes."."Rounding Direction")
                {
                }
                fieldelement(rndprecision; "Payroll-E/D Codes."."Rounding Precision")
                {
                }
                fieldelement(payslipcolum; "Payroll-E/D Codes."."Payslip Column")
                {
                }
                fieldelement(changed; "Payroll-E/D Codes.".Changed)
                {
                }
                fieldelement(sreportappence; "Payroll-E/D Codes."."S. Report appearance")
                {
                }
                fieldelement(editgrup; "Payroll-E/D Codes."."Edit Grp. Amount?")
                {
                }
                fieldelement(overlinecolm; "Payroll-E/D Codes."."Overline Column")
                {
                }
                fieldelement(underlineamt; "Payroll-E/D Codes."."Underline Amount")
                {
                }
                fieldelement(descrp; "Payroll-E/D Codes.".Description)
                {
                }
                fieldelement(loan; "Payroll-E/D Codes."."Loan (Y/N)")
                {
                }
                fieldelement(overtime; "Payroll-E/D Codes."."OverTime(Y/N)")
                {
                }
                fieldelement(absentdeduction; "Payroll-E/D Codes."."Absent Deduction")
                {
                }
                fieldelement(partofabsdec; "Payroll-E/D Codes."."Part of Absent Deduction")
                {
                }
                fieldelement(payslipprintcolum; "Payroll-E/D Codes."."Payslip Print Column")
                {
                }
                fieldelement(edtype; "Payroll-E/D Codes."."ED Type")
                {
                }
                fieldelement(contrl; "Payroll-E/D Codes."."Control Type")
                {
                }
                fieldelement(apportionable; "Payroll-E/D Codes.".Apportionable)
                {
                }
                fieldelement(monthlyvairable; "Payroll-E/D Codes."."Monthly Variable")
                {
                }
                fieldelement(taxableref; "Payroll-E/D Codes."."Taxable Ref")
                {
                }
                fieldelement(prorate; "Payroll-E/D Codes.".Prorate)
                {
                }
                fieldelement(variablerate; "Payroll-E/D Codes."."Variable Unit")
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

