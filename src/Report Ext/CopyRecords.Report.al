report 90014 "Copy Records"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CopyRecords.rdlc';

    dataset
    {
        dataitem("Integer"; "Integer")
        {

            trigger OnAfterGetRecord()
            begin
                CopyTable := true;
                with JobJnlLine do
                    if CopyTable then begin
                        ChangeCompany('ATLANTIC SHRIMPERS LIMITED');
                        if Find('-') then
                            repeat
                                ChangeCompany(CompanyName);
                                Insert(true);
                                ChangeCompany('ATLANTIC SHRIMPERS LIMITED');
                            until Next = 0;
                    end;
                CurrReport.Break;
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

