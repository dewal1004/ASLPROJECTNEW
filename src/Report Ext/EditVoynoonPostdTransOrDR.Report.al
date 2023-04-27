report 99506 "Edit Voy no on Postd TransOrDR"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/EditVoynoonPostdTransOrDR.rdlc';

    dataset
    {
        dataitem("Transfer Receipt Header"; "Transfer Receipt Header")
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
            column(Transfer_Receipt_Header__No__; "No.")
            {
            }
            column(Transfer_Receipt_Header__Transfer_from_Code_; "Transfer-from Code")
            {
            }
            column(Transfer_Receipt_Header__Transfer_from_Name_; "Transfer-from Name")
            {
            }
            column(Transfer_Receipt_Header__Transfer_to_Code_; "Transfer-to Code")
            {
            }
            column(Transfer_Receipt_Header__Transfer_Order_Date_; "Transfer Order Date")
            {
            }
            column(Transfer_Receipt_Header__Transfer_Order_No__; "Transfer Order No.")
            {
            }
            column(Transfer_Receipt_Header__Transfer_To_Voy__No__; "Transfer To Voy. No.")
            {
            }
            column(Transfer_Receipt_Header_NewVoyageNo; NewVoyageNo)
            {
            }
            column(Transfer_Receipt_HeaderCaption; Transfer_Receipt_HeaderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Transfer_Receipt_Header__No__Caption; FieldCaption("No."))
            {
            }
            column(Transfer_Receipt_Header__Transfer_from_Code_Caption; FieldCaption("Transfer-from Code"))
            {
            }
            column(Transfer_Receipt_Header__Transfer_from_Name_Caption; FieldCaption("Transfer-from Name"))
            {
            }
            column(Transfer_Receipt_Header__Transfer_to_Code_Caption; FieldCaption("Transfer-to Code"))
            {
            }
            column(Transfer_Receipt_Header__Transfer_Order_Date_Caption; FieldCaption("Transfer Order Date"))
            {
            }
            column(Transfer_Receipt_Header__Transfer_Order_No__Caption; FieldCaption("Transfer Order No."))
            {
            }
            column(Transfer_Receipt_Header__Transfer_To_Voy__No__Caption; FieldCaption("Transfer To Voy. No."))
            {
            }
            column(Transfer_Receipt_Header_NewVoyageNoCaption; FieldCaption(NewVoyageNo))
            {
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
        TransShipmt: Record "Transfer Shipment Header";
        TransOrder: Record "Transfer Header";
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        loc: Code[120];
        locn: Code[120];
        ItDocFilt: Code[120];
        VaDocFilt: Code[120];
        JbDocFilt: Code[120];
        GLDocFilt: Code[120];
        TSDocFilt: Code[120];
        TRDocFilt: Code[120];
        ExDoc: Code[120];
        ExDocn: Code[120];
        DocNo: Code[120];
        TotalFor: Label 'Total for ';
        Transfer_Receipt_HeaderCaptionLbl: Label 'Transfer Receipt Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

