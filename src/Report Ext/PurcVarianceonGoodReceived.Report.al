report 50036 "Purc Variance on Good Received"
{
    //  "Quantity Ordered"
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/PurcVarianceonGoodReceived.rdlc';

    Caption = 'Purchase - Receipt';

    dataset
    {
        dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Posted Purchase Receipt';
            column(Purch__Rcpt__Header_No_; "No.")
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(STRSUBSTNO_Text002_CopyText_; StrSubstNo(Text002, CopyText))
                    {
                    }
                    column(Purch__Rcpt__Header___No__; "Purch. Rcpt. Header"."No.")
                    {
                    }
                    column(Purch__Rcpt__Header___Order_No__; "Purch. Rcpt. Header"."Order No.")
                    {
                    }
                    column(Purch__Rcpt__Header___Vendor_Shipment_No__; "Purch. Rcpt. Header"."Vendor Shipment No.")
                    {
                    }
                    column(FORMAT__Purch__Rcpt__Header___Document_Date__0_4_; Format("Purch. Rcpt. Header"."Document Date", 0, 4))
                    {
                    }
                    column(VendAddr_1_; VendAddr[1])
                    {
                    }
                    column(PurInvHd__No__; PurInvHd."No.")
                    {
                    }
                    column(GRN_No__Caption; GRN_No__CaptionLbl)
                    {
                    }
                    column(Order_No_Caption; Order_No_CaptionLbl)
                    {
                    }
                    column(Way_Bill_No_Caption; Way_Bill_No_CaptionLbl)
                    {
                    }
                    column(Invoice_No__Caption; Invoice_No__CaptionLbl)
                    {
                    }
                    column(Vendor_Name_Caption; Vendor_Name_CaptionLbl)
                    {
                    }
                    column(Date_Caption; Date_CaptionLbl)
                    {
                    }
                    column(Purch__Rcpt__Line__No__Caption; "Purch. Rcpt. Line".FieldCaption("No."))
                    {
                    }
                    column(Purch__Rcpt__Line_Description_Control42Caption; "Purch. Rcpt. Line".FieldCaption(Description))
                    {
                    }
                    column(Quantity_OrderedCaption; Quantity_OrderedCaptionLbl)
                    {
                    }
                    column(Short_Excess_SupplyCaption; Short_Excess_SupplyCaptionLbl)
                    {
                    }
                    column(Quantity_ReceivedCaption; Quantity_ReceivedCaptionLbl)
                    {
                    }
                    column(Total_Qty__ReceivedCaption; Total_Qty__ReceivedCaptionLbl)
                    {
                    }
                    column(PageLoop_Number; Number)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Purch. Rcpt. Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimText_Control47; DimText)
                        {
                        }
                        column(Header_DimensionsCaption; Header_DimensionsCaptionLbl)
                        {
                        }
                        column(DimensionLoop1_Number; Number)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not PostedDocDim1.Find('-') then
                                    CurrReport.Break;
                            end else
                                if not Continue then
                                    CurrReport.Break;

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo(
                                      '%1 - %2', PostedDocDim1."Dimension Code", PostedDocDim1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1; %2 - %3', DimText,
                                        PostedDocDim1."Dimension Code", PostedDocDim1."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until (PostedDocDim1.Next = 0);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break;
                        end;
                    }
                    dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purch. Rcpt. Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(Purch__Rcpt__Line_Description; Description)
                        {
                        }
                        column(Purch__Rcpt__Line_Description_Control38; Description)
                        {
                        }
                        column(PurInvLine__No__; PurInvLine."No.")
                        {
                        }
                        column(Purch__Rcpt__Line_Quantity; Quantity)
                        {
                        }
                        column(Purch__Rcpt__Line_Quantity_Control1000000013; Quantity)
                        {
                        }
                        column(PurInvLine_Amount; PurInvLine.Amount)
                        {
                        }
                        column(QtyRec_3_; QtyRec[3])
                        {
                        }
                        column(Purch__Rcpt__Line__No__; "No.")
                        {
                        }
                        column(Purch__Rcpt__Line_Description_Control42; Description)
                        {
                        }
                        column(PurInvLine__Unit_Cost_; PurInvLine."Unit Cost")
                        {
                        }
                        column(Purch__Rcpt__Line_Quantity_Control1000000019; Quantity)
                        {
                        }
                        column(PurInvLine__Quantity__Base__; PurInvLine."Quantity (Base)")
                        {
                        }
                        column(QtyRec_3__Control1000000024; QtyRec[3])
                        {
                        }
                        column(Purch__Rcpt__Line_Document_No_; "Document No.")
                        {
                        }
                        column(Purch__Rcpt__Line_Line_No_; "Line No.")
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_Control65; DimText)
                            {
                            }
                            column(DimText_Control67; DimText)
                            {
                            }
                            column(Line_DimensionsCaption; Line_DimensionsCaptionLbl)
                            {
                            }
                            column(DimensionLoop2_Number; Number)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then begin
                                    if not PostedDocDim2.Find('-') then
                                        CurrReport.Break;
                                end else
                                    if not Continue then
                                        CurrReport.Break;

                                Clear(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := StrSubstNo(
                                          '%1 - %2', PostedDocDim2."Dimension Code", PostedDocDim2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1; %2 - %3', DimText,
                                            PostedDocDim2."Dimension Code", PostedDocDim2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until (PostedDocDim2.Next = 0);
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break;
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            //PostedDocDim2.SETRANGE("Table ID",DATABASE::"Purch. Rcpt. Line"); // & u
                            //PostedDocDim2.SETRANGE("Document No.",Purch. Rcpt. Line"."Document No."); // U
                            // PostedDocDim2.SETRANGE("Line No.","Purch. Rcpt. Line"."Line No.");// & u

                            ItemRec.Get("Purch. Rcpt. Line"."No.");
                            ItemRec.SetFilter(ItemRec."Order Fillter", "Purch. Rcpt. Header"."Order No.");
                            // ItemRec.CALCFIELDS(ItemRec."Received Variance");// & u
                            // QtyRec[1]:=ItemRec."Received Variance";

                            ItemRec.SetFilter(ItemRec."Inventory Entry Type Filter", "Purch. Rcpt. Header"."Order No.");
                            // ItemRec.CALCFIELDS(ItemRec."Received Variance");
                            //
                            //QtyRec[2]:=ItemRec."Received Variance";

                            QtyRec[3] := QtyRec[2] + QtyRec[1];
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := Find('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) do
                                MoreLines := Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break;
                            SetRange("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

                        trigger OnPreDataItem()
                        begin
                            if "Purch. Rcpt. Header"."Buy-from Vendor No." = "Purch. Rcpt. Header"."Pay-to Vendor No." then
                                CurrReport.Break;
                        end;
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then
                        CopyText := Text001;
                    CurrReport.PageNo := 1;
                end;

                trigger OnPostDataItem()
                begin
                    if not CurrReport.Preview then
                        RcptCountPrinted.Run("Purch. Rcpt. Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                // CurrReport.Language := Language.GetLanguageID("Language Code");  //Refactor

                if RespCenter.Get("Responsibility Center") then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else begin
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                end;

                // PostedDocDim1.SETRANGE("Table ID",DATABASE::"Purch. Rcpt. Header"); //& u
                // PostedDocDim1.SETRANGE("Document No.","Purch. Rcpt. Header"."No.");  // & u

                if "Purchaser Code" = '' then begin
                    SalesPurchPerson.Init;
                    PurchaserText := '';
                end else begin
                    SalesPurchPerson.Get("Purchaser Code");
                    PurchaserText := Text000
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FieldCaption("Your Reference");
                FormatAddr.PurchRcptShipTo(ShipToAddr, "Purch. Rcpt. Header");

                FormatAddr.PurchRcptPayTo(VendAddr, "Purch. Rcpt. Header");

                /*IF NOT CurrReport.PREVIEW THEN
                  SegManagement.LogDocument(
                    15,"No.",DATABASE::Vendor,"Buy-from Vendor No.","Purchaser Code","Posting Description");;
                
                PurInvHd.SETCURRENTKEY(PurInvHd."Order No.");
                PurInvHd.SETRANGE(PurInvHd."Order No.","Purch. Rcpt. Header"."Order No.");
                IF PurInvHd.FIND('-') THEN;*/// & u

            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.Get;
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
        Text000: Label 'Purchaser';
        Text001: Label 'COPY';
        Text002: Label 'Variance On Goods Received %1';
        Text003: Label 'Page %1';
        CompanyInfo: Record "Company Information";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        PostedDocDim1: Record "Dimension Set Entry";
        PostedDocDim2: Record "Dimension Set Entry";
        Language: Record Language;
        RespCenter: Record "Responsibility Center";
        RcptCountPrinted: Codeunit "Purch.Rcpt.-Printed";
        SegManagement: Codeunit SegManagement;
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        ReferenceText: Text[30];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        FormatAddr: Codeunit "Format Address";
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        "-------": Integer;
        LetterHd: Boolean;
        PurInvLine: Record "Purch. Inv. Line";
        PurInvHd: Record "Purch. Inv. Header";
        ItemRec: Record Item;
        QtyRec: array[3] of Integer;
        GRN_No__CaptionLbl: Label 'GRN No.:';
        Order_No_CaptionLbl: Label 'Order No.';
        Way_Bill_No_CaptionLbl: Label 'Way Bill No.';
        Invoice_No__CaptionLbl: Label 'Invoice No.:';
        Vendor_Name_CaptionLbl: Label 'Vendor Name:';
        Date_CaptionLbl: Label 'Date:';
        Quantity_OrderedCaptionLbl: Label 'Quantity Ordered';
        Short_Excess_SupplyCaptionLbl: Label 'Short/Excess Supply';
        Quantity_ReceivedCaptionLbl: Label 'Quantity Received';
        Total_Qty__ReceivedCaptionLbl: Label 'Total Qty. Received';
        Header_DimensionsCaptionLbl: Label 'Header Dimensions';
        Line_DimensionsCaptionLbl: Label 'Line Dimensions';
}

