report 99504 "Edit PDate>Trans Ord Dat Ship"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/EditPDateTransOrdDatShip.rdlc';

    dataset
    {
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
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
            column(Transfer_Shipment_Header__No__; "No.")
            {
            }
            column(Transfer_Shipment_Header__Transfer_from_Code_; "Transfer-from Code")
            {
            }
            column(Transfer_Shipment_Header__Transfer_to_Code_; "Transfer-to Code")
            {
            }
            column(Transfer_Shipment_Header__Transfer_Order_Date_; "Transfer Order Date")
            {
            }
            column(Transfer_Shipment_Header__Posting_Date_; "Posting Date")
            {
            }
            column(Transfer_Shipment_Header__Transfer_Value_; "Transfer Value")
            {
            }
            column(Transfer_Shipment_Header__Transfer_From_Voy__No__; "Transfer From Voy. No.")
            {
            }
            column(Transfer_Shipment_Header__Transfer_To_Voy__No__; "Transfer To Voy. No.")
            {
            }
            column(Transfer_Receipt_HeaderCaption; Transfer_Receipt_HeaderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Transfer_Shipment_Header__No__Caption; FieldCaption("No."))
            {
            }
            column(Transfer_Shipment_Header__Transfer_from_Code_Caption; FieldCaption("Transfer-from Code"))
            {
            }
            column(Transfer_Shipment_Header__Transfer_to_Code_Caption; FieldCaption("Transfer-to Code"))
            {
            }
            column(Transfer_Shipment_Header__Transfer_Order_Date_Caption; FieldCaption("Transfer Order Date"))
            {
            }
            column(Transfer_Shipment_Header__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Transfer_Shipment_Header__Transfer_Value_Caption; 'Transfer Value')
            {
            }
            column(Transfer_Shipment_Header__Transfer_From_Voy__No__Caption; FieldCaption("Transfer From Voy. No."))
            {
            }
            column(Transfer_Shipment_Header__Transfer_To_Voy__No__Caption; FieldCaption("Transfer To Voy. No."))
            {
            }
            dataitem("G/L Entry"; "G/L Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Posting Date");

                trigger OnAfterGetRecord()
                begin
                    "Posting Date" := TranOrdDat;
                    "Document Date" := TranOrdDat;
                    Modify;
                end;
            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Posting Date", "Entry Type");

                trigger OnAfterGetRecord()
                begin
                    "Posting Date" := TranOrdDat;
                    "Document Date" := TranOrdDat;
                    if "Last Invoice Date" = "Posting Date" then "Last Invoice Date" := TranOrdDat;
                    Modify;
                end;
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Posting Date");

                trigger OnAfterGetRecord()
                begin
                    "Posting Date" := TranOrdDat;
                    "Document Date" := TranOrdDat;
                    if "Valuation Date" = "Posting Date" then "Valuation Date" := TranOrdDat;
                    Modify;
                end;
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

    labels
    {
    }

    var
        TranOrdDat: Date;
        Transfer_Receipt_HeaderCaptionLbl: Label 'Transfer Receipt Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

