report 90704 "Transfer Shipmentx"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/TransferShipmentx.rdlc';
    Caption = 'Transfer Shipment';

    dataset
    {
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Transfer-from Code", "Transfer-to Code";
            RequestFilterHeading = 'Posted Transfer Shipment';
            column(Transfer_Shipment_Header_No_; "No.")
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(STRSUBSTNO_Text001_CopyText_; StrSubstNo(Text001, CopyText))
                    {
                    }
                    column(STRSUBSTNO_Text002_FORMAT_CurrReport_PAGENO__; StrSubstNo(Text002, Format(CurrReport.PageNo())))
                    {
                    }
                    column(TransferToAddr_1_; TransferToAddr[1])
                    {
                    }
                    column(TransferFromAddr_1_; TransferFromAddr[1])
                    {
                    }
                    column(TransferToAddr_2_; TransferToAddr[2])
                    {
                    }
                    column(TransferFromAddr_2_; TransferFromAddr[2])
                    {
                    }
                    column(TransferToAddr_3_; TransferToAddr[3])
                    {
                    }
                    column(TransferFromAddr_3_; TransferFromAddr[3])
                    {
                    }
                    column(TransferToAddr_4_; TransferToAddr[4])
                    {
                    }
                    column(TransferFromAddr_4_; TransferFromAddr[4])
                    {
                    }
                    column(TransferToAddr_5_; TransferToAddr[5])
                    {
                    }
                    column(TransferToAddr_6_; TransferToAddr[6])
                    {
                    }
                    column(Transfer_Shipment_Header___In_Transit_Code_; "Transfer Shipment Header"."In-Transit Code")
                    {
                    }
                    column(FORMAT__Transfer_Shipment_Header___Posting_Date__0_4_; Format("Transfer Shipment Header"."Posting Date", 0, 4))
                    {
                    }
                    column(Transfer_Shipment_Header___No__; "Transfer Shipment Header"."No.")
                    {
                    }
                    column(TransferToAddr_7_; TransferToAddr[7])
                    {
                    }
                    column(TransferToAddr_8_; TransferToAddr[8])
                    {
                    }
                    column(TransferFromAddr_5_; TransferFromAddr[5])
                    {
                    }
                    column(TransferFromAddr_6_; TransferFromAddr[6])
                    {
                    }
                    column(Transfer_Shipment_Header___Shipment_Date_; "Transfer Shipment Header"."Shipment Date")
                    {
                    }
                    column(TransferFromAddr_7_; TransferFromAddr[7])
                    {
                    }
                    column(TransferFromAddr_8_; TransferFromAddr[8])
                    {
                    }
                    column(Transfer_Shipment_Header___In_Transit_Code_Caption; "Transfer Shipment Header".FieldCaption("In-Transit Code"))
                    {
                    }
                    column(Transfer_Shipment_Header___No__Caption; Transfer_Shipment_Header___No__CaptionLbl)
                    {
                    }
                    column(Transfer_Shipment_Header___Shipment_Date_Caption; "Transfer Shipment Header".FieldCaption("Shipment Date"))
                    {
                    }
                    column(PageLoop_Number; Number)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Transfer Shipment Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimText_Control53; DimText)
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
                                    CurrReport.Break();
                            end else
                                if not Continue then
                                    CurrReport.Break();

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
                            until (PostedDocDim1.Next() = 0);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break();
                        end;
                    }
                    dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Transfer Shipment Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(Transfer_Shipment_Line__Item_No__; "Item No.")
                        {
                        }
                        column(Transfer_Shipment_Line_Description; Description)
                        {
                        }
                        column(Transfer_Shipment_Line_Quantity; Quantity)
                        {
                        }
                        column(Transfer_Shipment_Line__Unit_of_Measure_; "Unit of Measure")
                        {
                        }
                        column(ShipmentMethod_Description; ShipmentMethod.Description)
                        {
                        }
                        column(Transfer_Shipment_Line__Unit_of_Measure_Caption; FieldCaption("Unit of Measure"))
                        {
                        }
                        column(Transfer_Shipment_Line_QuantityCaption; FieldCaption(Quantity))
                        {
                        }
                        column(Transfer_Shipment_Line_DescriptionCaption; FieldCaption(Description))
                        {
                        }
                        column(Transfer_Shipment_Line__Item_No__Caption; FieldCaption("Item No."))
                        {
                        }
                        column(ShipmentMethod_DescriptionCaption; ShipmentMethod_DescriptionCaptionLbl)
                        {
                        }
                        column(Transfer_Shipment_Line_Document_No_; "Document No.")
                        {
                        }
                        column(Transfer_Shipment_Line_Line_No_; "Line No.")
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_Control71; DimText)
                            {
                            }
                            column(DimText_Control73; DimText)
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
                                        CurrReport.Break();
                                end else
                                    if not Continue then
                                        CurrReport.Break();

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
                                until (PostedDocDim2.Next() = 0);
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break();
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            //PostedDocDim2.SETRANGE("Table ID",DATABASE::"Transfer Shipment Line");//mah
                            //PostedDocDim2.SETRANGE("Document No.","Transfer Shipment Line"."Document No.");//mah
                            //PostedDocDim2.SETRANGE("Line No.","Transfer Shipment Line"."Line No.");//mah
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := Find('+');
                            while MoreLines and (Description = '') and ("Item No." = '') and (Quantity = 0) do
                                MoreLines := Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break();
                            SetRange("Line No.", 0, "Line No.");
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then
                        CopyText := Text000;
                    CurrReport.PageNo := 1;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := 1 + Abs(NoOfCopies);
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                //PostedDocDim1.SETRANGE("Table ID",DATABASE::"Transfer Shipment Header");//mah
                //PostedDocDim1.SETRANGE("Document No.","Transfer Shipment Header"."No.");//mah

                FormatAddr.TransferShptTransferFrom(TransferFromAddr, "Transfer Shipment Header");
                FormatAddr.TransferShptTransferTo(TransferToAddr, "Transfer Shipment Header");

                if not ShipmentMethod.Get("Shipment Method Code") then
                    ShipmentMethod.Init();
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
        Text000: Label 'COPY';
        Text001: Label 'Transfer Shipment %1';
        Text002: Label 'Page %1';
        ShipmentMethod: Record "Shipment Method";
        PostedDocDim1: Record "Dimension Set Entry";
        PostedDocDim2: Record "Dimension Set Entry";
        FormatAddr: Codeunit "Format Address";
        TransferFromAddr: array[8] of Text[50];
        TransferToAddr: array[8] of Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        Transfer_Shipment_Header___No__CaptionLbl: Label 'Shipment No.';
        Header_DimensionsCaptionLbl: Label 'Header Dimensions';
        ShipmentMethod_DescriptionCaptionLbl: Label 'Shipment Method';
        Line_DimensionsCaptionLbl: Label 'Line Dimensions';
}
