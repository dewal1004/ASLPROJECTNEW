report 99506 "Edit Voy no on Postd TransOrDR"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/EditVoynoonPostdTransOrDR.rdlc';
    Caption = 'Edit Voy no on Postd TransOrDR';
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
            column(CurrReport_PAGENO; CurrReport.PageNo())
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
        Transfer_Receipt_HeaderCaptionLbl: Label 'Transfer Receipt Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
