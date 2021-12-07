report 99055 "Cust Bal to Excel buffer"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/CustBaltoExcelbuffer.rdlc';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = WHERE("No." = FILTER('C000001' .. 'C000005'));
            RequestFilterFields = "No.";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(Customer_Balance; Balance)
            {
            }
            column(CustomerCaption; CustomerCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Customer__No__Caption; FieldCaption("No."))
            {
            }
            column(Customer_NameCaption; FieldCaption(Name))
            {
            }
            column(Customer_BalanceCaption; FieldCaption(Balance))
            {
            }

            trigger OnAfterGetRecord()
            begin
                cnt := cnt + 1;
                RowNo := cnt;
            end;

            trigger OnPreDataItem()
            begin
                TempExcelBuffer.DeleteAll;
                Clear(TempExcelBuffer);
                cnt := 5;
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
        TempExcelBuffer: Record "Excel Buffer 4 P&L";
        cnt: Integer;
        RowNo: Integer;
        ColumnNo: Integer;
        ColumnValue: Decimal;
        ColumnText: Text[50];
        CustomerCaptionLbl: Label 'Customer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';

    local procedure EnterCell(RowNo: Integer; ColumnNo: Integer; CellValue: Text[50]; Bold: Boolean; Italic: Boolean; UnderLine: Boolean)
    begin
        TempExcelBuffer.Init;
        TempExcelBuffer.Validate("Row No.", RowNo);
        TempExcelBuffer.Validate("Column No.", ColumnNo);
        TempExcelBuffer."Cell Value as Text" := CellValue;
        TempExcelBuffer.Formula := '';
        TempExcelBuffer.Bold := Bold;
        TempExcelBuffer.Italic := Italic;
        TempExcelBuffer.Underline := UnderLine;
        TempExcelBuffer.Insert;
    end;

    [Scope('Internal')]
    procedure CellDef(recd: Record Customer)
    begin
        EnterCell(RowNo, 1, recd."No.", true, false, false);
        EnterCell(RowNo, 2, recd.Name, false, false, false);
        EnterCell(RowNo, 3, Format(recd.Balance), false, false, false);
        //MESSAGE(FORMAT(cnt));
    end;
}

