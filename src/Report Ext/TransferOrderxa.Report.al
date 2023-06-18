report 85703 "Transfer Orderxa"
{
    //
    // "Transfer Header"."Received By"
    // "Transfer Header"."Issued By"
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/TransferOrderxa.rdlc';
    Caption = 'Transfer Order';

    dataset
    {
        dataitem("Transfer Header"; "Transfer Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Transfer-from Code", "Transfer-to Code";
            RequestFilterHeading = 'Transfer Order';
            column(Transfer_Header_No_; "No.")
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(TransferFromAddr_2_; TransferFromAddr[2])
                    {
                    }
                    column(TransferFromAddr_3_; TransferFromAddr[3])
                    {
                    }
                    column(TransferFromAddr_4_; TransferFromAddr[4])
                    {
                    }
                    column(TransferFromAddr_5_; TransferFromAddr[5])
                    {
                    }
                    column(TransferFromAddr_6_; TransferFromAddr[6])
                    {
                    }
                    column(TransferToAddr_8_; TransferToAddr[8])
                    {
                    }
                    column(TransferToAddr_7_; TransferToAddr[7])
                    {
                    }
                    column(TransferToAddr_6_; TransferToAddr[6])
                    {
                    }
                    column(TransferToAddr_5_; TransferToAddr[5])
                    {
                    }
                    column(TransferToAddr_4_; TransferToAddr[4])
                    {
                    }
                    column(TransferToAddr_3_; TransferToAddr[3])
                    {
                    }
                    column(TransferToAddr_2_; TransferToAddr[2])
                    {
                    }
                    column(Transfer_Header___In_Transit_Code_; "Transfer Header"."In-Transit Code")
                    {
                    }
                    column(TransferFromAddr_1_; TransferFromAddr[1])
                    {
                    }
                    column(STRSUBSTNO_Text001_CopyText_; StrSubstNo(Text001, CopyText))
                    {
                    }
                    column(STRSUBSTNO_Text002_FORMAT_CurrReport_PAGENO__; StrSubstNo(Text002, Format(CurrReport.PageNo())))
                    {
                    }
                    column(TransferToAddr_1_; TransferToAddr[1])
                    {
                    }
                    column(FORMAT__Transfer_Header___Posting_Date__0_4_; Format("Transfer Header"."Posting Date", 0, 4))
                    {
                    }
                    column(No______Transfer_Header___No__; 'No.: ' + "Transfer Header"."No.")
                    {
                    }
                    column(TransferFromAddr_1__Control1000000034; TransferFromAddr[1])
                    {
                    }
                    column(VoyNo; VoyNo)
                    {
                    }
                    column(Transfer_Header___In_Transit_Code_Caption; "Transfer Header".FieldCaption("In-Transit Code"))
                    {
                    }
                    column(From__Caption; From__CaptionLbl)
                    {
                    }
                    column(To__Caption; To__CaptionLbl)
                    {
                    }
                    column(Voyage_No___Caption; Voyage_No___CaptionLbl)
                    {
                    }
                    column(PageLoop_Number; Number)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Transfer Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimText_Control80; DimText)
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
                                if not DocDim1.Find('-') then
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
                                      '%1 - %2', DocDim1."Dimension Code", DocDim1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1; %2 - %3', DimText,
                                        DocDim1."Dimension Code", DocDim1."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until (DocDim1.Next() = 0);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break();
                        end;
                    }
                    dataitem("Transfer Line"; "Transfer Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Transfer Header";
                        DataItemTableView = SORTING("Document No.", "Line No.") WHERE("Derived From Line No." = CONST(0));
                        RequestFilterFields = "Document No.";
                        column(Transfer_Line__Item_No__; "Item No.")
                        {
                        }
                        column(Transfer_Line_Description; Description)
                        {
                        }
                        column(Transfer_Line_Quantity; Quantity)
                        {
                        }
                        column(Transfer_Line__Qty__Reqd__; "Qty. Reqd.")
                        {
                        }
                        column(LastIssueDate; LastIssueDate)
                        {
                        }
                        column(LastIssueQty; LastIssueQty)
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(ItemRec__Shelf_No__; ItemRec."Shelf No.")
                        {
                        }
                        column(Transfer_Line__Transfer_Line___Unit_of_Measure_Code_; "Transfer Line"."Unit of Measure Code")
                        {
                        }
                        column(Qty__to_Ship___Quantity_Shipped_; "Qty. to Ship" + "Quantity Shipped")
                        {
                            DecimalPlaces = 0 : 0;
                        }
                        column(Quantity___Qty__to_Ship___Quantity_Shipped__; Quantity - ("Qty. to Ship" + "Quantity Shipped"))
                        {
                            DecimalPlaces = 0 : 0;
                        }
                        column(ShipmentMethod_Description; ShipmentMethod.Description)
                        {
                        }
                        column(Transfer_Header___Received_By_; "Transfer Header"."Received By")
                        {
                        }
                        column(Transfer_Header___Approved_By_; "Transfer Header"."Approved By")
                        {
                        }
                        column(Transfer_Header___Issued_By_; "Transfer Header"."Issued By")
                        {
                        }
                        column(Transfer_Header___Requested_By_; "Transfer Header"."Requested By")
                        {
                        }
                        column(Transfer_Line__Item_No__Caption; FieldCaption("Item No."))
                        {
                        }
                        column(Transfer_Line_DescriptionCaption; FieldCaption(Description))
                        {
                        }
                        column(Qty__ApprovedCaption; Qty__ApprovedCaptionLbl)
                        {
                        }
                        column(Transfer_Line__Qty__Reqd__Caption; FieldCaption("Qty. Reqd."))
                        {
                        }
                        column(Last_Issue_Qty_Caption; Last_Issue_Qty_CaptionLbl)
                        {
                        }
                        column(Last_Issue_DateCaption; Last_Issue_DateCaptionLbl)
                        {
                        }
                        column(Bin_LocationCaption; Bin_LocationCaptionLbl)
                        {
                        }
                        column(Qty__SuppliedCaption; Qty__SuppliedCaptionLbl)
                        {
                        }
                        column(UOMCaption; UOMCaptionLbl)
                        {
                        }
                        column(RemainingCaption; RemainingCaptionLbl)
                        {
                        }
                        column(Bin_LocationCaption_Control1000000022; Bin_LocationCaption_Control1000000022Lbl)
                        {
                        }
                        column(RemainingCaption_Control1000000023; RemainingCaption_Control1000000023Lbl)
                        {
                        }
                        column(Qty__SuppliedCaption_Control1000000024; Qty__SuppliedCaption_Control1000000024Lbl)
                        {
                        }
                        column(Qty__ApprovedCaption_Control1000000025; Qty__ApprovedCaption_Control1000000025Lbl)
                        {
                        }
                        column(Qty__Reqd_Caption; Qty__Reqd_CaptionLbl)
                        {
                        }
                        column(Last_Issue_DateCaption_Control1000000027; Last_Issue_DateCaption_Control1000000027Lbl)
                        {
                        }
                        column(Last_Issue_Qty_Caption_Control1000000028; Last_Issue_Qty_Caption_Control1000000028Lbl)
                        {
                        }
                        column(UOMCaption_Control1000000029; UOMCaption_Control1000000029Lbl)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(Item_No_Caption; Item_No_CaptionLbl)
                        {
                        }
                        column(ShipmentMethod_DescriptionCaption; ShipmentMethod_DescriptionCaptionLbl)
                        {
                        }
                        column(Requested_By_Caption; Requested_By_CaptionLbl)
                        {
                        }
                        column(Received_By_Caption; Received_By_CaptionLbl)
                        {
                        }
                        column(Issued_By_Caption; Issued_By_CaptionLbl)
                        {
                        }
                        column(Approved_By_Caption; Approved_By_CaptionLbl)
                        {
                        }
                        column(Transfer_Line_Document_No_; "Document No.")
                        {
                        }
                        column(Transfer_Line_Line_No_; "Line No.")
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_Control82; DimText)
                            {
                            }
                            column(DimText_Control89; DimText)
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
                                    if not DocDim2.Find('-') then
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
                                          '%1 - %2', DocDim2."Dimension Code", DocDim2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1; %2 - %3', DimText,
                                            DocDim2."Dimension Code", DocDim2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until (DocDim2.Next() = 0);
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break();
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            DocDim2.SetRange("Table ID", DATABASE::"Transfer Line");
                            //DocDim2.SETRANGE("Document Type",5);
                            DocDim2.SetRange("No.", "Transfer Line"."Document No.");
                            //DocDim2.SETRANGE("Line No.","Transfer Line"."Line No.");
                            if "Transfer Line"."Item No." <> '' then begin
                                ItemRec.Get("Transfer Line"."Item No.");
                                ItemLedgLn.SetCurrentKey(ItemLedgLn."Entry Type", ItemLedgLn."Item No.", ItemLedgLn."Posting Date", ItemLedgLn."Location Code");
                                ItemLedgLn.SetFilter(ItemLedgLn."Entry Type", '4');
                                ItemLedgLn.SetFilter(ItemLedgLn."Item No.", "Transfer Line"."Item No.");
                                //ItemLedgLn.SETFILTER(ItemLedgLn."Location Code","Transfer Line"."Transfer-to Code");
                                if ItemLedgLn.Find('+') then begin
                                    LastIssueDate := ItemLedgLn."Posting Date";
                                    LastIssueQty := Abs(ItemLedgLn.Quantity);
                                end
                                else begin
                                    LastIssueDate := 0D;
                                    LastIssueQty := 0;
                                end;
                            end
                            else begin
                                LastIssueDate := 0D;
                                LastIssueQty := 0;
                            end;
                            //AAA - Feb 2002
                            if ROB > 0 then ItemExpensed();
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
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                end;
            }

            trigger OnAfterGetRecord()
            begin

                DocDim1.SetRange("Table ID", DATABASE::"Transfer Header");
                //DocDim1.SETRANGE("Document Type",5);
                DocDim1.SetRange("No.", "Transfer Header"."No.");

                FormatAddr.TransferHeaderTransferFrom(TransferFromAddr, "Transfer Header");
                FormatAddr.TransferHeaderTransferTo(TransferToAddr, "Transfer Header");

                if not ShipmentMethod.Get("Shipment Method Code") then
                    ShipmentMethod.Init();

                //AAA Feb 2002
                THdr.Get("Transfer Header"."No.");
                THdr.CalcFields(THdr."Transfer To Voy. No.");
                VoyNo := THdr."Transfer To Voy. No.";
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

    trigger OnPreReport()
    begin
        //"Transfer Line".MARKEDONLY(TRUE); #1
    end;

    var
        Text000: Label 'COPY';
        Text001: Label 'Material Transfer Note %1';
        Text002: Label 'Page %1';
        ShipmentMethod: Record "Shipment Method";
        DocDim1: Record "Default Dimension";
        DocDim2: Record "Default Dimension";
        FormatAddr: Codeunit "Format Address";
        TransferFromAddr: array[8] of Text[50];
        TransferToAddr: array[8] of Text[50];
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ItemRec: Record Item;
        ItemLedgLn: Record "Item Ledger Entry";
        THdr: Record "Transfer Header";
        LastIssueQty: Decimal;
        VoyNo: Code[10];
        LastIssueDate: Date;
        From__CaptionLbl: Label 'From :';
        To__CaptionLbl: Label 'To :';
        Voyage_No___CaptionLbl: Label 'Voyage No. :';
        Header_DimensionsCaptionLbl: Label 'Header Dimensions';
        Qty__ApprovedCaptionLbl: Label 'Qty. Approved';
        Last_Issue_Qty_CaptionLbl: Label 'Last Issue Qty.';
        Last_Issue_DateCaptionLbl: Label 'Last Issue Date';
        Bin_LocationCaptionLbl: Label 'Bin Location';
        Qty__SuppliedCaptionLbl: Label 'Qty. Supplied';
        UOMCaptionLbl: Label 'UOM';
        RemainingCaptionLbl: Label 'Remaining';
        Bin_LocationCaption_Control1000000022Lbl: Label 'Bin Location';
        RemainingCaption_Control1000000023Lbl: Label 'Remaining';
        Qty__SuppliedCaption_Control1000000024Lbl: Label 'Qty. Supplied';
        Qty__ApprovedCaption_Control1000000025Lbl: Label 'Qty. Approved';
        Qty__Reqd_CaptionLbl: Label 'Qty. Reqd.';
        Last_Issue_DateCaption_Control1000000027Lbl: Label 'Last Issue Date';
        Last_Issue_Qty_Caption_Control1000000028Lbl: Label 'Last Issue Qty.';
        UOMCaption_Control1000000029Lbl: Label 'UOM';
        DescriptionCaptionLbl: Label 'Description';
        Item_No_CaptionLbl: Label 'Item No.';
        ShipmentMethod_DescriptionCaptionLbl: Label 'Shipment Method';
        Requested_By_CaptionLbl: Label 'Requested By:';
        Received_By_CaptionLbl: Label 'Received By:';
        Issued_By_CaptionLbl: Label 'Issued By:';
        Approved_By_CaptionLbl: Label 'Approved By:';
        Line_DimensionsCaptionLbl: Label 'Line Dimensions';

    [Scope('OnPrem')]
    procedure ItemExpensed()
    begin
    end;
}
