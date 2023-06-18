report 50212 "Quote Compare"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/QuoteCompare.rdlc';
    Caption = 'Quote Compare';
    dataset
    {
        dataitem("Purchase Line"; "Purchase Line")
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
            column(Purchase_Line__No__; "No.")
            {
            }
            column(VendName; VendName)
            {
            }
            column(Purchase_Line__Document_No__; "Document No.")
            {
            }
            column(Purchase_Line_Description; Description)
            {
            }
            column(Purchase_Line__Unit_of_Measure_; "Unit of Measure")
            {
            }
            column(Purchase_Line_Quantity; Quantity)
            {
            }
            column(Purchase_Line__Direct_Unit_Cost_; "Direct Unit Cost")
            {
            }
            column(Purchase_Line__Unit_Cost__LCY__; "Unit Cost (LCY)")
            {
            }
            column(Purchase_Line__Indirect_Cost___; "Indirect Cost %")
            {
            }
            column(Quote_CompareCaption; Quote_CompareCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VendorCaption; VendorCaptionLbl)
            {
            }
            column(Purchase_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Purchase_Line_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Purchase_Line__Unit_of_Measure_Caption; FieldCaption("Unit of Measure"))
            {
            }
            column(Purchase_Line_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Purchase_Line__Direct_Unit_Cost_Caption; FieldCaption("Direct Unit Cost"))
            {
            }
            column(Purchase_Line__Unit_Cost__LCY__Caption; FieldCaption("Unit Cost (LCY)"))
            {
            }
            column(Purchase_Line__Indirect_Cost___Caption; FieldCaption("Indirect Cost %"))
            {
            }
            column(Item_No_Caption; Item_No_CaptionLbl)
            {
            }
            column(Purchase_Line_Document_Type; "Document Type")
            {
            }
            column(Purchase_Line_Line_No_; "Line No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if VendorRec.Get("Purchase Line"."Buy-from Vendor No.") then
                    VendName := VendorRec.Name
                else
                    VendName := "Purchase Line"."Buy-from Vendor No.";
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
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
        LastFieldNo: Integer;
        VendorRec: Record Vendor;
        VendName: Text[50];
        Quote_CompareCaptionLbl: Label 'Quote Compare';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VendorCaptionLbl: Label 'Vendor';
        Item_No_CaptionLbl: Label 'Item No.';
}
