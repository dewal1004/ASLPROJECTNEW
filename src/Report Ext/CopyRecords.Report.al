report 90014 "Copy Records"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CopyRecords.rdlc';
    Caption = 'Copy Records';
    dataset
    {
        dataitem("Integer"; "Integer")
        {
            trigger OnAfterGetRecord()
            begin
                CopyTable := true;
                if CopyTable then begin
                    JobJnlLine.ChangeCompany('ATLANTIC SHRIMPERS LIMITED');
                    if JobJnlLine.Find('-') then
                        repeat
                            JobJnlLine.ChangeCompany(CompanyName);
                            JobJnlLine.Insert(true);
                            JobJnlLine.ChangeCompany('ATLANTIC SHRIMPERS LIMITED');
                        until JobJnlLine.Next() = 0;
                end;
                CurrReport.Break();
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
        JobJnlLine: Record "Job Journal Line";
        CopyTable: Boolean;
}
