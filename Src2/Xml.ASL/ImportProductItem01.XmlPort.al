xmlport 50004 "Import Product Item01"
{
    Direction = Import;
    Format = VariableText;

    schema
    {
        textelement(ROOT)
        {
            tableelement(Item; Item)
            {
                AutoSave = false;
                XmlName = 'Item';
                textattribute(nos)
                {
                    XmlName = 'NOS';
                }
                textattribute(DESC)
                {
                }
                textattribute(BUOM)
                {
                }
                textattribute(GPP)
                {
                }
                textattribute(LDTM)
                {
                }
                textattribute(LDTMCD)
                {
                }
                textattribute(CATEG)
                {
                }
                textattribute(MNTLCONSUMPTN)
                {
                }
                textattribute(REORDERPNT)
                {
                }
                textattribute(RQTY)
                {
                }
                textattribute(ORDERMULT)
                {
                }
                textattribute(DUTYRATE)
                {
                }
                textattribute(VENDITNOS)
                {
                }
                textattribute(PUOM)
                {
                }
                textattribute(CONV)
                {
                }
                textattribute(IPP)
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

