xmlport 50049 "Payroll lines"
{
    //*** Encoding = UTF16;
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Payroll-Lookup Lines."; "Payroll-Lookup Lines.")
            {
                XmlName = 'Payrollline';
                fieldelement(Tableid; "Payroll-Lookup Lines.".TableId)
                {
                }
                fieldelement(loweramount; "Payroll-Lookup Lines."."Lower Amount")
                {
                }
                fieldelement(upperamount; "Payroll-Lookup Lines."."Upper Amount")
                {
                }
                fieldelement(Lowercode; "Payroll-Lookup Lines."."Lower Code")
                {
                }
                fieldelement(Uppercode; "Payroll-Lookup Lines."."Upper Code")
                {
                }
                fieldelement(ExtractAmount; "Payroll-Lookup Lines."."Extract Amount")
                {
                }
                fieldelement(TaxRate; "Payroll-Lookup Lines."."Tax Rate %")
                {
                }
                fieldelement(CumTax; "Payroll-Lookup Lines."."Cum. Tax Payable")
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

