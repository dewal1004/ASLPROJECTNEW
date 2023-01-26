report 50088 "Sales Test/Confirmation Report"
{
    // "Sales Line"."Line Amount"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/SalesTestConfirmationReport.rdlc';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "Customer Posting Group");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Posting Date", "Location Code";
            column(Sales_Header__Customer_Posting_Group_; "Customer Posting Group")
            {
            }
            column(Sales_Header__Posting_Date_; "Posting Date")
            {
            }
            column(Sell_to_Customer_No___________CustName; "Sell-to Customer No." + '  :  ' + CustName)
            {
            }
            column(Sales_Header__No__; "No.")
            {
            }
            column(TotQty; TotQty)
            {
            }
            column(TotAmt; TotAmt)
            {
            }
            column(TotalFor__Customer_Posting_Group_; TotalFor + "Customer Posting Group")
            {
            }
            column(TotAmt_Control1000000026; TotAmt)
            {
            }
            column(TotQty_Control1000000027; TotQty)
            {
            }
            column(Grand_Total_; 'Grand Total')
            {
            }
            column(Sr__No_Caption_Control1000000031; Sr__No_Caption_Control1000000031Lbl)
            {
            }
            column(Item_No_Caption_Control1000000032; Item_No_Caption_Control1000000032Lbl)
            {
            }
            column(DescriptionCaption_Control1000000033; DescriptionCaption_Control1000000033Lbl)
            {
            }
            column(QuantityCaption_Control1000000034; QuantityCaption_Control1000000034Lbl)
            {
            }
            column(Rate_KgCaption_Control1000000035; Rate_KgCaption_Control1000000035Lbl)
            {
            }
            column(Amount_NairaCaption_Control1000000036; Amount_NairaCaption_Control1000000036Lbl)
            {
            }
            column(Line_Discount__Caption; Line_Discount__CaptionLbl)
            {
            }
            column(Sales_Header__Customer_Posting_Group_Caption; FieldCaption("Customer Posting Group"))
            {
            }
            column(Sales_Header__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(CustNo; "Sales Header"."Sell-to Customer No.")
            {
            }
            column(Sales_Header__No__Caption; Sales_Header__No__CaptionLbl)
            {
            }
            column(CustName; "Sales Header"."Sell-to Customer Name")
            {
            }
            column(Sales_Header_Document_Type; "Document Type")
            {
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Line No.") WHERE("Document Type" = CONST(Invoice));
                RequestFilterFields = "Document Type", "Document No.";
                column(Sales_Line__Document_Type_; "Document Type")
                {
                }
                column(Sales_Line__Document_No__; "Document No.")
                {
                }
                column(Sales_Line__No__; "No.")
                {
                }
                column(Sales_Line_Description; Description)
                {
                }
                column(Sales_Line_Quantity; Quantity)
                {
                }
                column(Sales_Line__Unit_Price_; "Unit Price")
                {
                }
                column(Sales_Line__Line_Amount_; "Line Amount")
                {
                }
                column(Sno; Sno)
                {
                }
                column(Sales_Line__Line_Discount___; "Line Discount %")
                {
                }
                column(Sales_Line_Quantity_Control29; Quantity)
                {
                }
                column(Sales_Line__Line_Amount__Control30; "Line Amount")
                {
                }
                column(Tot; Tot)
                {
                }
                column(Sales_Line_Quantity_Control32; Quantity)
                {
                }
                column(Sales_Line__Line_Amount__Control33; "Line Amount")
                {
                }
                column(Sales_Line__Line_Amount__Control1000000022; "Line Amount")
                {
                }
                column(Sales_Line_Quantity_Control1000000023; Quantity)
                {
                }
                column(Sales_Line__No__Caption; FieldCaption("No."))
                {
                }
                column(Sales_Line_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Sales_Line_QuantityCaption; FieldCaption(Quantity))
                {
                }
                column(Sales_Line__Unit_Price_Caption; FieldCaption("Unit Price"))
                {
                }
                column(Sales_Line__Line_Amount_Caption; FieldCaption("Line Amount"))
                {
                }
                column(SnoCaption; SnoCaptionLbl)
                {
                }
                column(Sales_Line__Document_Type_Caption; FieldCaption("Document Type"))
                {
                }
                column(Sales_Line__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(Sales_Line_Line_No_; "Line No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    TotQty := Quantity;
                    TotAmt := "Line Amount";
                    Sno += 1;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Document No.");
                    CurrReport.CreateTotals(TotQty, TotAmt);
                    Sno := 0;
                end;
            }

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(TotQty, TotAmt);
            end;
        }
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Test_ConfirmationCaption; Sales_Test_ConfirmationCaptionLbl)
            {
            }
            column(Amount_NairaCaption; Amount_NairaCaptionLbl)
            {
            }
            column(Rate_KgCaption; Rate_KgCaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(Item_No_Caption; Item_No_CaptionLbl)
            {
            }
            column(Sr__No_Caption; Sr__No_CaptionLbl)
            {
            }
            column(Sales_Line__Line_Discount___Caption; "Sales Line".FieldCaption("Line Discount %"))
            {
            }
            column(Integer_Number; Number)
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "-------------": Integer;
        Cust: Record Customer;
        CustName: Text[50];
        Sno: Integer;
        TotQty: Decimal;
        TotAmt: Decimal;
        Tot: Label 'Total :';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Sales_Test_ConfirmationCaptionLbl: Label 'Sales Test/Confirmation';
        Amount_NairaCaptionLbl: Label 'Amount Naira';
        Rate_KgCaptionLbl: Label 'Rate/Kg';
        QuantityCaptionLbl: Label 'Quantity';
        DescriptionCaptionLbl: Label 'Description';
        Item_No_CaptionLbl: Label 'Item No.';
        Sr__No_CaptionLbl: Label 'Sr. No.';
        Sr__No_Caption_Control1000000031Lbl: Label 'Sr. No.';
        Item_No_Caption_Control1000000032Lbl: Label 'Item No.';
        DescriptionCaption_Control1000000033Lbl: Label 'Description';
        QuantityCaption_Control1000000034Lbl: Label 'Quantity';
        Rate_KgCaption_Control1000000035Lbl: Label 'Rate/Kg';
        Amount_NairaCaption_Control1000000036Lbl: Label 'Amount Naira';
        Line_Discount__CaptionLbl: Label 'Line Discount %';
        Sell_to_Customer_No___________CustNameCaptionLbl: Label 'Customer ID ';
        Sales_Header__No__CaptionLbl: Label 'Doc. No.';
        SnoCaptionLbl: Label 'Label1000000005';
}

