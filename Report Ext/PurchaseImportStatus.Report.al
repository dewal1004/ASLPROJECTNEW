report 50034 "Purchase Import Status"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PurchaseImportStatus.rdlc';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Order), "Currency Code" = FILTER(<> ''));
            RequestFilterFields = "No.", "Document Date";
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
            column(Purchase_Header__Document_Type_; "Document Type")
            {
            }
            column(USERID_Control1000000010; UserId)
            {
            }
            column(COMPANYNAME_Control1000000011; CompanyName)
            {
            }
            column(CurrReport_PAGENO_Control1000000014; CurrReport.PageNo)
            {
            }
            column(FORMAT_TODAY_0_4__Control1000000015; Format(Today, 0, 4))
            {
            }
            column(Countz; Countz)
            {
            }
            column(Purchase_Header__Buy_from_Vendor_Name_; "Buy-from Vendor Name")
            {
            }
            column(Purchase_Header__Your_Reference_; "Your Reference")
            {
            }
            column(Purchase_Header__Vendor_Order_No__; "Vendor Order No.")
            {
            }
            column(Purchase_Header__Form_M_No__; "Form M No.")
            {
            }
            column(Purchase_Header__LC_No__; "LC No.")
            {
            }
            column(Purchase_Header__LC_Opened_On_; "LC Opened On")
            {
            }
            column(Purchase_Header__Line_Amount_; "Line Amount")
            {
            }
            column(Purchase_Header__Currency_Code_; "Currency Code")
            {
            }
            column(Purchase_Header__Shipment_Status_; "Shipment Status")
            {
            }
            column(Purchase_Header_Description; Description)
            {
            }
            column(Purchase_Header__Buy_from_Country_Region_Code_; "Buy-from Country/Region Code")
            {
            }
            column(Purchase_Header__Latest_Shipment_Date_; "Latest Shipment Date")
            {
            }
            column(Purchase_Header__Shipment_Status__Control1000000034; "Shipment Status")
            {
            }
            column(Purchase_Header__Latest_Shipment_Date__Control1000000035; "Latest Shipment Date")
            {
            }
            column(Purchase_Header__Line_Amount__Control1000000036; "Line Amount")
            {
            }
            column(Purchase_Header__Currency_Code__Control1000000037; "Currency Code")
            {
            }
            column(Purchase_Header__LC_Opened_On__Control1000000038; "LC Opened On")
            {
            }
            column(Purchase_Header__LC_No___Control1000000039; "LC No.")
            {
            }
            column(Purchase_Header__Form_M_No___Control1000000040; "Form M No.")
            {
            }
            column(Purchase_Header__Vendor_Order_No___Control1000000041; "Vendor Order No.")
            {
            }
            column(Purchase_Header_Description_Control1000000042; Description)
            {
            }
            column(Purchase_Header__Buy_from_Country_Region_Code__Control1000000043; "Buy-from Country/Region Code")
            {
            }
            column(Purchase_Header__Buy_from_Vendor_Name__Control1000000044; "Buy-from Vendor Name")
            {
            }
            column(Purchase_Header__Your_Reference__Control1000000045; "Your Reference")
            {
            }
            column(Countz_Control1000000046; Countz)
            {
            }
            column(Purchase_Import_StatusCaption; Purchase_Import_StatusCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purchase_Header__Document_Type_Caption; FieldCaption("Document Type"))
            {
            }
            column(Purchase_Import_StatusCaption_Control1000000012; Purchase_Import_StatusCaption_Control1000000012Lbl)
            {
            }
            column(CurrReport_PAGENO_Control1000000014Caption; CurrReport_PAGENO_Control1000000014CaptionLbl)
            {
            }
            column(CountzCaption; CountzCaptionLbl)
            {
            }
            column(Purchase_Header__Buy_from_Vendor_Name_Caption; Purchase_Header__Buy_from_Vendor_Name_CaptionLbl)
            {
            }
            column(Purchase_Header__Your_Reference_Caption; Purchase_Header__Your_Reference_CaptionLbl)
            {
            }
            column(Purchase_Header__Vendor_Order_No__Caption; Purchase_Header__Vendor_Order_No__CaptionLbl)
            {
            }
            column(Purchase_Header__Form_M_No__Caption; FieldCaption("Form M No."))
            {
            }
            column(Purchase_Header__LC_No__Caption; FieldCaption("LC No."))
            {
            }
            column(Date_OpenedCaption; Date_OpenedCaptionLbl)
            {
            }
            column(Purchase_Header__Shipment_Status_Caption; FieldCaption("Shipment Status"))
            {
            }
            column(Purchase_Header__Line_Amount_Caption; FieldCaption("Line Amount"))
            {
            }
            column(FromCaption; FromCaptionLbl)
            {
            }
            column(Purchase_Header_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Purchase_Header__Latest_Shipment_Date_Caption; Purchase_Header__Latest_Shipment_Date_CaptionLbl)
            {
            }
            column(Purchase_Header__Currency_Code_Caption; FieldCaption("Currency Code"))
            {
            }
            column(Purchase_Header__Shipment_Status__Control1000000034Caption; FieldCaption("Shipment Status"))
            {
            }
            column(Purchase_Header__Latest_Shipment_Date__Control1000000035Caption; Purchase_Header__Latest_Shipment_Date__Control1000000035CaptionLbl)
            {
            }
            column(Purchase_Header__Line_Amount__Control1000000036Caption; FieldCaption("Line Amount"))
            {
            }
            column(Purchase_Header__Currency_Code__Control1000000037Caption; FieldCaption("Currency Code"))
            {
            }
            column(Date_OpenedCaption_Control1000000020; Date_OpenedCaption_Control1000000020Lbl)
            {
            }
            column(Purchase_Header__LC_No___Control1000000039Caption; FieldCaption("LC No."))
            {
            }
            column(Purchase_Header__Form_M_No___Control1000000040Caption; FieldCaption("Form M No."))
            {
            }
            column(Purchase_Header__Vendor_Order_No___Control1000000041Caption; Purchase_Header__Vendor_Order_No___Control1000000041CaptionLbl)
            {
            }
            column(Purchase_Header_Description_Control1000000042Caption; FieldCaption(Description))
            {
            }
            column(FromCaption_Control1000000025; FromCaption_Control1000000025Lbl)
            {
            }
            column(Purchase_Header__Buy_from_Vendor_Name__Control1000000044Caption; Purchase_Header__Buy_from_Vendor_Name__Control1000000044CaptionLbl)
            {
            }
            column(Purchase_Header__Your_Reference__Control1000000045Caption; Purchase_Header__Your_Reference__Control1000000045CaptionLbl)
            {
            }
            column(Countz_Control1000000046Caption; Countz_Control1000000046CaptionLbl)
            {
            }
            column(Purchase_Header_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Countz := Countz + 1;
            end;

            trigger OnPreDataItem()
            begin
                Countz := 0;   ///AAA
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
        Purcomment: Record "Purch. Comment Line";
        Email: Boolean;
        Countz: Integer;
        Desc: Text[120];
        Purchase_Import_StatusCaptionLbl: Label 'Purchase Import Status';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Purchase_Import_StatusCaption_Control1000000012Lbl: Label 'Purchase Import Status';
        CurrReport_PAGENO_Control1000000014CaptionLbl: Label 'Page';
        CountzCaptionLbl: Label 'SN';
        Purchase_Header__Buy_from_Vendor_Name_CaptionLbl: Label 'Supplier';
        Purchase_Header__Your_Reference_CaptionLbl: Label 'File No.';
        Purchase_Header__Vendor_Order_No__CaptionLbl: Label 'Proforma No.';
        Date_OpenedCaptionLbl: Label 'Date Opened';
        FromCaptionLbl: Label 'From';
        Purchase_Header__Latest_Shipment_Date_CaptionLbl: Label 'Latest Shpt Date';
        Purchase_Header__Latest_Shipment_Date__Control1000000035CaptionLbl: Label 'Latest Shpt Date';
        Date_OpenedCaption_Control1000000020Lbl: Label 'Date Opened';
        Purchase_Header__Vendor_Order_No___Control1000000041CaptionLbl: Label 'Proforma No.';
        FromCaption_Control1000000025Lbl: Label 'From';
        Purchase_Header__Buy_from_Vendor_Name__Control1000000044CaptionLbl: Label 'Supplier';
        Purchase_Header__Your_Reference__Control1000000045CaptionLbl: Label 'File No.';
        Countz_Control1000000046CaptionLbl: Label 'SN';
        sno: Integer;
}

