report 50187 "Sales Packing List"
{
    // SalesHeader."Ship-to City"
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/SalesPackingList.rdlc';

    Caption = 'Sales Document - Test';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = WHERE("Document Type" = FILTER(<> Quote));
            RequestFilterFields = "Document Type", "No.";
            RequestFilterHeading = 'Sales Document';
            column(FORMAT__Sales_Header___Document_Date__0_4_; Format("Sales Header"."Document Date", 0, 4))
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(Sales_Header_Document_Type; "Document Type")
            {
            }
            column(Sales_Header_No_; "No.")
            {
            }
            dataitem(PageCounter; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(STRSUBSTNO_Text041_CopyText_; StrSubstNo(Text041, CopyText))
                {
                }
                column(CustAddr_1_; CustAddr[1])
                {
                }
                column(CompanyAddr_1_; CompanyAddr[1])
                {
                }
                column(CustAddr_2_; CustAddr[2])
                {
                }
                column(CompanyAddr_2_; CompanyAddr[2])
                {
                }
                column(CustAddr_3_; CustAddr[3])
                {
                }
                column(CompanyAddr_3_; CompanyAddr[3])
                {
                }
                column(CustAddr_4_; CustAddr[4])
                {
                }
                column(CompanyAddr_4_; CompanyAddr[4])
                {
                }
                column(CustAddr_5_; CustAddr[5])
                {
                }
                column(CompanyAddr_5_; CompanyAddr[5])
                {
                }
                column(CustAddr_6_; CustAddr[6])
                {
                }
                column(CompanyAddr_6_; CompanyAddr[6])
                {
                }
                column(CompanyInfo__Phone_No__; CompanyInfo."Phone No.")
                {
                }
                column(CompanyInfo__Fax_No__; CompanyInfo."Fax No.")
                {
                }
                column(Sales_Header___Bill_to_Customer_No__; "Sales Header"."Bill-to Customer No.")
                {
                }
                column(VATNoText; VATNoText)
                {
                }
                column(Sales_Header___VAT_Registration_No__; "Sales Header"."VAT Registration No.")
                {
                }
                column(Sales_Header___Shipment_Date_; "Sales Header"."Shipment Date")
                {
                }
                column(SalesPersonText; SalesPersonText)
                {
                }
                column(SalesPurchPerson_Name; SalesPurchPerson.Name)
                {
                }
                column(Sales_Header___No__; "Sales Header"."No.")
                {
                }
                column(ReferenceText; ReferenceText)
                {
                }
                column(Sales_Header___Your_Reference_; "Sales Header"."Your Reference")
                {
                }
                column(Sales_Header___Prices_Including_VAT_; "Sales Header"."Prices Including VAT")
                {
                }
                column(CustAddr_2__Control1000000016; CustAddr[2])
                {
                }
                column(FORMAT__Sales_Header___Document_Date__0_4__Control1000000020; Format("Sales Header"."Document Date", 0, 4))
                {
                }
                column(SalesHeader__Package_Tracking_No__; SalesHeader."Package Tracking No.")
                {
                }
                column(SalesHeader__Seal_No_; SalesHeader."Seal No")
                {
                }
                column(SalesHeader__Ship_to_City_; SalesHeader."Ship-to City")
                {
                }
                column(SalesHeader__Container_Code_; SalesHeader."Container Code")
                {
                }
                column(Agent; Agent)
                {
                }
                column(Commt_1_2_; Commt[1, 2])
                {
                }
                column(Commt_3_2_; Commt[3, 2])
                {
                }
                column(Commt_4_2_; Commt[4, 2])
                {
                }
                column(Commt_2_2_; Commt[2, 2])
                {
                }
                column(Commt_5_2_; Commt[5, 2])
                {
                }
                column(Commt_6_2_; Commt[6, 2])
                {
                }
                column(Commt_7_2_; Commt[7, 2])
                {
                }
                column(Commt_8_2_; Commt[8, 2])
                {
                }
                column(Commt_9_2_; Commt[9, 2])
                {
                }
                column(Commt_10_2_; Commt[10, 2])
                {
                }
                column(Commt_10_1_; Commt[10, 1])
                {
                }
                column(Commt_1_1_; Commt[1, 1])
                {
                }
                column(Commt_3_1_; Commt[3, 1])
                {
                }
                column(Commt_4_1_; Commt[4, 1])
                {
                }
                column(Commt_2_1_; Commt[2, 1])
                {
                }
                column(Commt_5_1_; Commt[5, 1])
                {
                }
                column(Commt_6_1_; Commt[6, 1])
                {
                }
                column(Commt_7_1_; Commt[7, 1])
                {
                }
                column(Commt_8_1_; Commt[8, 1])
                {
                }
                column(Commt_9_1_; Commt[9, 1])
                {
                }
                column(Commt_11_1_; Commt[11, 1])
                {
                }
                column(Commt_12_1_; Commt[12, 1])
                {
                }
                column(Commt_13_1_; Commt[13, 1])
                {
                }
                column(Commt_14_1_; Commt[14, 1])
                {
                }
                column(Commt_11_2_; Commt[11, 2])
                {
                }
                column(Commt_13_2_; Commt[13, 2])
                {
                }
                column(Commt_14_2_; Commt[14, 2])
                {
                }
                column(Commt_12_2_; Commt[12, 2])
                {
                }
                column(Commt_15_2_; Commt[15, 2])
                {
                }
                column(Commt_15_1_; Commt[15, 1])
                {
                }
                column(CompanyInfo__Phone_No__Caption; CompanyInfo__Phone_No__CaptionLbl)
                {
                }
                column(CompanyInfo__Fax_No__Caption; CompanyInfo__Fax_No__CaptionLbl)
                {
                }
                column(Sales_Header___Bill_to_Customer_No__Caption; Sales_Header___Bill_to_Customer_No__CaptionLbl)
                {
                }
                column(Sales_Header___Shipment_Date_Caption; "Sales Header".FieldCaption("Shipment Date"))
                {
                }
                column(Order_No_Caption; Order_No_CaptionLbl)
                {
                }
                column(Sales_Header___Prices_Including_VAT_Caption; "Sales Header".FieldCaption("Prices Including VAT"))
                {
                }
                column(To_Caption; To_CaptionLbl)
                {
                }
                column(Date_Caption_Control1000000021; Date_Caption_Control1000000021Lbl)
                {
                }
                column(PACKING_LISTCaption; PACKING_LISTCaptionLbl)
                {
                }
                column(SalesHeader__Package_Tracking_No__Caption; SalesHeader__Package_Tracking_No__CaptionLbl)
                {
                }
                column(SalesHeader__Seal_No_Caption; SalesHeader__Seal_No_CaptionLbl)
                {
                }
                column(SalesHeader__Ship_to_City_Caption; SalesHeader__Ship_to_City_CaptionLbl)
                {
                }
                column(SalesHeader__Container_Code_Caption; SalesHeader__Container_Code_CaptionLbl)
                {
                }
                column(AgentCaption; AgentCaptionLbl)
                {
                }
                column(PageCounter_Number; Number)
                {
                }
                dataitem(DimensionLoop1; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));

                    trigger OnAfterGetRecord()
                    begin
                        if Number = 1 then begin
                            if not DocDim1.Find('-') then
                                CurrReport.Break;
                        end else
                            if not Continue then
                                CurrReport.Break;

                        Clear(DimText);
                        Continue := false;
                        repeat
                            OldDimText := DimText;
                            if DimText = '' then
                                DimText := StrSubstNo('%1 - %2', DocDim1."Dimension Code", DocDim1."Dimension Value Code")
                            else
                                DimText :=
                                  StrSubstNo(
                                    '%1; %2 - %3', DimText, DocDim1."Dimension Code", DocDim1."Dimension Value Code");
                            if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                DimText := OldDimText;
                                Continue := true;
                                exit;
                            end;
                        until (DocDim1.Next = 0);
                    end;

                    trigger OnPreDataItem()
                    begin
                        if not ShowDim then
                            CurrReport.Break;
                    end;
                }
                dataitem(HeaderErrorCounter; "Integer")
                {
                    DataItemTableView = SORTING(Number);

                    trigger OnPostDataItem()
                    begin
                        ErrorCounter := 0;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SetRange(Number, 1, ErrorCounter);
                    end;
                }
                dataitem("Sales Line"; "Sales Line")
                {
                    DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                    DataItemLinkReference = "Sales Header";
                    DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                    column(Quantity_1000; Quantity / 1000)
                    {
                        DecimalPlaces = 3 :;
                    }
                    column(ORIGIN; ORIGIN)
                    {
                        AutoFormatType = 1;
                    }
                    column(CompanyAddr_1__Control1000000026; CompanyAddr[1])
                    {
                    }
                    column(TOTAL_WEIGHT_Caption; TOTAL_WEIGHT_CaptionLbl)
                    {
                    }
                    column(MT__NET_Caption; MT__NET_CaptionLbl)
                    {
                    }
                    column(Authorised_SignatoryCaption; Authorised_SignatoryCaptionLbl)
                    {
                    }
                    column(Sales_Line_Document_Type; "Document Type")
                    {
                    }
                    column(Sales_Line_Document_No_; "Document No.")
                    {
                    }
                    column(Sales_Line_Line_No_; "Line No.")
                    {
                    }
                    dataitem(DimensionLoop2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DocDim2.Find('-') then
                                    CurrReport.Break;
                            end else
                                if not Continue then
                                    CurrReport.Break;

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 - %2', DocDim2."Dimension Code", DocDim2."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1; %2 - %3', DimText, DocDim2."Dimension Code", DocDim2."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until (DocDim2.Next = 0);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowDim then
                                CurrReport.Break;
                        end;
                    }
                    dataitem(LineErrorCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);

                        trigger OnPostDataItem()
                        begin
                            ErrorCounter := 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            SetRange(Number, 1, ErrorCounter);
                        end;
                    }

                    trigger OnAfterGetRecord()
                    var
                        TableID: array[10] of Integer;
                        No: array[10] of Code[20];
                    begin

                        DocDim2.SetRange("Dimension Set ID", DATABASE::"Sales Line");
                        //DocDim2.SETRANGE("Document Type","Sales Line"."Document Type");
                        //DocDim2.SETRANGE("Document No.","Sales Line"."Document No.");
                        //DocDim2.SETRANGE("Line No.","Sales Line"."Line No.");
                        //DimMgt.CopyDocDimToDocDim(DocDim2,TempDocDim);Sales Line
                        if "Document Type" = "Document Type"::Invoice then begin
                            if ("Qty. to Ship" <> Quantity) and ("Shipment No." = '') then
                                AddError(StrSubstNo(Text015, FieldCaption("Qty. to Ship"), Quantity));
                            if "Qty. to Invoice" <> Quantity then
                                AddError(StrSubstNo(Text015, FieldCaption("Qty. to Invoice"), Quantity));
                        end;

                        if not "Sales Header".Ship then
                            "Qty. to Ship" := 0;
                        if not "Sales Header".Receive then
                            "Return Qty. to Receive" := 0;

                        if ("Document Type" = "Document Type"::Invoice) and ("Shipment No." <> '') then begin
                            "Quantity Shipped" := Quantity;
                            "Qty. to Ship" := 0;
                        end;

                        if "Sales Header".Invoice then begin
                            if "Document Type" = "Document Type"::"Credit Memo" then
                                MaxQtyToBeInvoiced := "Return Qty. to Receive" + "Return Qty. Received" - "Quantity Invoiced"
                            else
                                MaxQtyToBeInvoiced := "Qty. to Ship" + "Quantity Shipped" - "Quantity Invoiced";
                            if Abs("Qty. to Invoice") > Abs(MaxQtyToBeInvoiced) then
                                "Qty. to Invoice" := MaxQtyToBeInvoiced;
                        end else
                            "Qty. to Invoice" := 0;

                        if "Gen. Prod. Posting Group" <> '' then begin
                            if ("Sales Header"."Document Type" = "Sales Header"."Document Type"::"Credit Memo") and
                               ("Sales Header"."Applies-to Doc. Type" = "Sales Header"."Applies-to Doc. Type"::Invoice) and
                               ("Sales Header"."Applies-to Doc. No." <> '')
                            then begin
                                CustLedgEntry.SetCurrentKey("Document Type", "Document No.", "Customer No.");
                                CustLedgEntry.SetRange("Customer No.", "Sales Header"."Bill-to Customer No.");
                                CustLedgEntry.SetRange("Document Type", CustLedgEntry."Document Type"::Invoice);
                                CustLedgEntry.SetRange("Document No.", "Sales Header"."Applies-to Doc. No.");
                                if (not CustLedgEntry.Find('+')) and (not ApplNoError) then begin
                                    ApplNoError := true;
                                    AddError(
                                      StrSubstNo(
                                        Text016,
                                        "Sales Header".FieldCaption("Applies-to Doc. No."), "Sales Header"."Applies-to Doc. No."));
                                end;
                                VATDate := CustLedgEntry."Posting Date";
                            end else
                                VATDate := "Sales Header"."Posting Date";

                            if not VATPostingSetup.Get("VAT Bus. Posting Group", "VAT Prod. Posting Group") then
                                AddError(
                                  StrSubstNo(
                                    Text017,
                                    VATPostingSetup.TableCaption, "VAT Bus. Posting Group", "VAT Prod. Posting Group"));
                            if VATPostingSetup."VAT Calculation Type" = VATPostingSetup."VAT Calculation Type"::"Reverse Charge VAT" then
                                if ("Sales Header"."VAT Registration No." = '') and (not VATNoError) then begin
                                    VATNoError := true;
                                    AddError(
                                      StrSubstNo(
                                        Text035, "Sales Header".FieldCaption("VAT Registration No.")));
                                end;
                        end;

                        if Quantity <> 0 then begin
                            if "No." = '' then
                                AddError(StrSubstNo(Text019, Type, FieldCaption("No.")));
                            if Type = 0 then
                                AddError(StrSubstNo(Text006, FieldCaption(Type)));
                        end else
                            if Amount <> 0 then
                                AddError(
                                  StrSubstNo(Text020, FieldCaption(Amount), FieldCaption(Quantity)));

                        if "Drop Shipment" then begin
                            if Type <> Type::Item then
                                AddError(Text021);
                            if ("Qty. to Ship" <> 0) and ("Purch. Order Line No." = 0) then begin
                                AddError(StrSubstNo(Text022, "Line No."));
                                AddError(Text023);
                            end;
                        end;

                        SalesLine := "Sales Line";
                        if "Document Type" <> "Document Type"::"Credit Memo" then begin
                            SalesLine."Qty. to Ship" := -SalesLine."Qty. to Ship";
                            SalesLine."Qty. to Invoice" := -SalesLine."Qty. to Invoice";
                        end;

                        RemQtyToBeInvoiced := SalesLine."Qty. to Invoice";

                        case "Document Type" of
                            "Document Type"::"Credit Memo":
                                if Abs(RemQtyToBeInvoiced) > Abs("Return Qty. to Receive") then
                                    CheckRcptLines(SalesLine, "Sales Line");
                            "Document Type"::Order, "Document Type"::Invoice:
                                if Abs(RemQtyToBeInvoiced) > Abs("Qty. to Ship") then
                                    CheckShptLines(SalesLine, "Sales Line");
                        end;

                        if (Type >= Type::"G/L Account") and ("Qty. to Invoice" <> 0) then begin
                            if not GenPostingSetup.Get("Gen. Bus. Posting Group", "Gen. Prod. Posting Group") then
                                AddError(
                                  StrSubstNo(
                                    Text017,
                                    GenPostingSetup.TableCaption, "Gen. Bus. Posting Group", "Gen. Prod. Posting Group"));
                            if not VATPostingSetup.Get("VAT Bus. Posting Group", "VAT Prod. Posting Group") then
                                AddError(
                                  StrSubstNo(
                                    Text017,
                                    VATPostingSetup.TableCaption, "VAT Bus. Posting Group", "VAT Prod. Posting Group"));
                        end;

                        case Type of
                            Type::"G/L Account":
                                begin
                                    if ("No." = '') and (Amount = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if GLAcc.Get("No.") then begin
                                            if GLAcc.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    GLAcc.FieldCaption(Blocked), false, GLAcc.TableCaption, "No."));
                                            if not GLAcc."Direct Posting" then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    GLAcc.FieldCaption("Direct Posting"), true, GLAcc.TableCaption, "No."));
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                GLAcc.TableCaption, "No."));
                                end;
                            Type::Item:
                                begin
                                    if ("No." = '') and (Quantity = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if Item.Get("No.") then begin
                                            if Item.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    Item.FieldCaption(Blocked), false, Item.TableCaption, "No."));
                                            if Item."Costing Method" = Item."Costing Method"::Specific then begin
                                            end;
                                            if Item.Reserve = Item.Reserve::Always then begin
                                                CalcFields("Reserved Quantity");
                                                if "Document Type" = "Document Type"::"Credit Memo" then begin
                                                    if (SignedXX(Quantity) < 0) and (Abs("Reserved Quantity") < Abs("Return Qty. to Receive")) then
                                                        AddError(
                                                          StrSubstNo(
                                                            Text015,
                                                            FieldCaption("Reserved Quantity"), SignedXX("Return Qty. to Receive")));
                                                end else
                                                    if (SignedXX(Quantity) < 0) and (Abs("Reserved Quantity") < Abs("Qty. to Ship")) then
                                                        AddError(
                                                          StrSubstNo(
                                                            Text015,
                                                            FieldCaption("Reserved Quantity"), SignedXX("Qty. to Ship")));
                                            end
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                Item.TableCaption, "No."));
                                end;
                            Type::Resource:
                                begin
                                    if ("No." = '') and (Quantity = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if Res.Get("No.") then begin
                                            if Res.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    Res.FieldCaption(Blocked), false, Res.TableCaption, "No."));
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                Res.TableCaption, "No."));
                                end;
                            Type::"Fixed Asset":
                                begin
                                    if ("No." = '') and (Quantity = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if FA.Get("No.") then begin
                                            if FA.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    FA.FieldCaption(Blocked), false, FA.TableCaption, "No."));
                                            if FA.Inactive then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    FA.FieldCaption(Inactive), false, FA.TableCaption, "No."));
                                            if "Depreciation Book Code" = '' then
                                                AddError(StrSubstNo(Text006, FieldCaption("Depreciation Book Code")))
                                            else
                                                if not FADeprBook.Get("No.", "Depreciation Book Code") then
                                                    AddError(
                                                      StrSubstNo(
                                                      Text017,
                                                      FADeprBook.TableCaption, "No.", "Depreciation Book Code"));
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                FA.TableCaption, "No."));
                                end;
                        end;

                        //IF NOT DimMgt.CheckDocDimComb(DocDim2) THEN
                        AddError(DimMgt.GetDimCombErr);

                        TableID[1] := DimMgt.TypeToTableID3(Type);
                        No[1] := "No.";
                        TableID[2] := DATABASE::Job;
                        No[2] := "Job No.";
                        // IF NOT DimMgt.CheckDocDimValuePosting(DocDim2,TableID,No) THEN
                        AddError(DimMgt.GetDimValuePostingErr);
                    end;

                    trigger OnPreDataItem()
                    var
                        SalesLine: Record "Sales Line";
                    begin
                        VATAmountLine.DeleteAll;
                        SalesLine.CalcVATAmountLines(0, "Sales Header", SalesLine, VATAmountLine);
                        VATAmount := VATAmountLine.GetTotalVATAmount;
                        VATBaseAmount := VATAmountLine.GetTotalVATBase;
                        VATDiscountAmount :=
                          VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code", SalesHeader."Prices Including VAT");
                        TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;
                        VATNoError := false;
                        ApplNoError := false;
                        CurrReport.CreateTotals("Line Amount", "Inv. Discount Amount");
                    end;
                }
                dataitem(VATCounter; "Integer")
                {
                    DataItemTableView = SORTING(Number);

                    trigger OnAfterGetRecord()
                    begin
                        VATAmountLine.GetLine(Number);
                    end;

                    trigger OnPreDataItem()
                    begin
                        if VATAmount = 0 then
                            CurrReport.Break;
                        SetRange(Number, 1, VATAmountLine.Count);
                        CurrReport.CreateTotals(
                          VATAmountLine."VAT Base", VATAmountLine."VAT Amount", VATAmountLine."Amount Including VAT",
                          VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                          VATAmountLine."Invoice Discount Amount");
                    end;
                }
                dataitem("Item Charge Assignment (Sales)"; "Item Charge Assignment (Sales)")
                {
                    DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("Document No.");
                    DataItemLinkReference = "Sales Line";
                    DataItemTableView = SORTING("Document Type", "Document No.", "Document Line No.", "Line No.");

                    trigger OnAfterGetRecord()
                    begin
                        if SalesLine2.Get("Document Type", "Document No.", "Document Line No.") then;
                    end;

                    trigger OnPreDataItem()
                    begin
                        /*IF NOT ShowCostAssignment THEN
                          CurrReport.BREAK;
                        CurrReport.CREATETOTALS("Assigned Amount","Qty. to Assign");
                                                                                     */

                    end;
                }

                trigger OnAfterGetRecord()
                begin

                    SalesComm.SetRange(SalesComm."Document Type", SalesHeader."Document Type");
                    SalesComm.SetRange(SalesComm."No.", SalesHeader."No.");
                    SalesComm.SetRange(SalesComm.Code, 'P');
                    if SalesComm.Find('-') then begin
                        i := 1;
                        repeat
                            Commt[i, 1] := Format(SalesComm.Quantity);
                            Commt[i, 2] := SalesComm.Comment;
                            i := i + 1
                        until SalesComm.Next() = 0;
                    end;
                end;

                trigger OnPostDataItem()
                begin
                    ORIGIN := 'The Above Product is of Nigerian Origin'
                end;

                trigger OnPreDataItem()
                begin

                    if SalesPurchPerson.Get("Sales Header"."Salesperson Code") then;
                    CurrReport.ShowOutput(not PrePrinted);


                    if ShippgAgent.Get(SalesHeader."Shipping Agent Code") then
                        Agent := ShippgAgent.Name;
                end;
            }

            trigger OnAfterGetRecord()
            var
                TableID: array[10] of Integer;
                No: array[10] of Code[20];
            begin

                DocDim1.SetRange("Dimension Set ID", DATABASE::"Sales Header");
                // DocDim1.SETRANGE("Document Type","Document Type");
                DocDim1.SetRange("Dimension Value Code", "Sales Header"."No.");

                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header"); //July 31, 2002

                FormatAddr.SalesHeaderSellTo(SellToAddr, "Sales Header");
                FormatAddr.SalesHeaderBillTo(BillToAddr, "Sales Header");
                //FormatAddr.SalesHeaderShipTo(ShipToAddr,"Sales Header");
                if "Currency Code" = '' then begin
                    GLSetup.TestField("LCY Code");
                    TotalText := StrSubstNo(Text004, GLSetup."LCY Code");
                    TotalExclVATText := StrSubstNo(Text033, GLSetup."LCY Code");
                    TotalInclVATText := StrSubstNo(Text005, GLSetup."LCY Code");
                end else begin
                    TotalText := StrSubstNo(Text004, "Currency Code");
                    TotalExclVATText := StrSubstNo(Text033, "Currency Code");
                    TotalInclVATText := StrSubstNo(Text005, "Currency Code");
                end;

                Invoice := InvOnNextPostReq;
                Ship := ShipReceiveOnNextPostReq;
                Receive := ShipReceiveOnNextPostReq;

                if "Sell-to Customer No." = '' then
                    AddError(StrSubstNo(Text006, FieldCaption("Sell-to Customer No.")))
                else begin
                    if Cust.Get("Sell-to Customer No.") then begin
                        //   IF Cust.Blocked THEN
                        AddError(
                          StrSubstNo(
                            Text007,
                            Cust.FieldCaption(Blocked), false, Cust.TableCaption, "Sell-to Customer No."));
                    end else
                        AddError(
                          StrSubstNo(
                            Text008,
                            Cust.TableCaption, "Sell-to Customer No."));
                end;

                if "Bill-to Customer No." = '' then
                    AddError(StrSubstNo(Text006, FieldCaption("Bill-to Customer No.")))
                else begin
                    if Cust.Get("Bill-to Customer No.") then begin
                        //   IF Cust.Blocked THEN
                        AddError(
                          StrSubstNo(
                            Text007,
                            Cust.FieldCaption(Blocked), false, Cust.TableCaption, "Bill-to Customer No."));
                    end else
                        AddError(
                          StrSubstNo(
                            Text008,
                            Cust.TableCaption, "Bill-to Customer No."));
                end;

                GLSetup.Get;
                SalesSetup.Get;

                if "Posting Date" = 0D then
                    AddError(StrSubstNo(Text006, FieldCaption("Posting Date")))
                else
                    if "Posting Date" <> NormalDate("Posting Date") then
                        AddError(StrSubstNo(Text009, FieldCaption("Posting Date")))
                    else begin
                        if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                            if UserId <> '' then
                                if UserSetup.Get(UserId) then begin
                                    AllowPostingFrom := UserSetup."Allow Posting From";
                                    AllowPostingTo := UserSetup."Allow Posting To";
                                end;
                            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                                AllowPostingFrom := GLSetup."Allow Posting From";
                                AllowPostingTo := GLSetup."Allow Posting To";
                            end;
                            if AllowPostingTo = 0D then
                                AllowPostingTo := 99991231D;
                        end;
                        if ("Posting Date" < AllowPostingFrom) or ("Posting Date" > AllowPostingTo) then
                            AddError(
                              StrSubstNo(
                                Text010, FieldCaption("Posting Date")));
                    end;

                if ("Document Date" <> 0D) then
                    if ("Document Date" <> NormalDate("Document Date")) then
                        AddError(StrSubstNo(Text009, FieldCaption("Document Date")));

                case "Document Type" of
                    "Document Type"::Order:
                        Receive := false;
                    "Document Type"::Invoice:
                        begin
                            Ship := true;
                            Invoice := true;
                            Receive := false;
                        end else
                                Ship := false;
                end;

                if not (Ship or Invoice or Receive) then
                    AddError(
                      StrSubstNo(
                        Text034,
                        FieldCaption(Ship), FieldCaption(Invoice), FieldCaption(Receive)));

                if Invoice then begin
                    SalesLine.Reset;
                    SalesLine.SetRange("Document Type", "Document Type");
                    SalesLine.SetRange("Document No.", "No.");
                    SalesLine.SetFilter(Quantity, '<>0');
                    if "Document Type" in ["Document Type"::Order, "Document Type"::"Credit Memo"] then
                        SalesLine.SetFilter("Qty. to Invoice", '<>0');
                    Invoice := SalesLine.Find('-');
                    if Invoice and (not Ship) and ("Document Type" = "Document Type"::Order) then begin
                        Invoice := false;
                        repeat
                            Invoice := (SalesLine."Quantity Shipped" - SalesLine."Quantity Invoiced") <> 0;
                        until Invoice or (SalesLine.Next = 0);
                    end else
                        if Invoice and (not Receive) and ("Document Type" = "Document Type"::"Credit Memo") then begin
                            Invoice := false;
                            repeat
                                Invoice := (SalesLine."Return Qty. Received" - SalesLine."Quantity Invoiced") <> 0;
                            until Invoice or (SalesLine.Next = 0);
                        end;
                end;

                if Ship then begin
                    SalesLine.Reset;
                    SalesLine.SetRange("Document Type", "Document Type");
                    SalesLine.SetRange("Document No.", "No.");
                    SalesLine.SetFilter(Quantity, '<>0');
                    if "Document Type" = "Document Type"::Order then
                        SalesLine.SetFilter("Qty. to Ship", '<>0');
                    SalesLine.SetRange("Shipment No.", '');
                    Ship := SalesLine.Find('-');
                end;
                if Receive then begin
                    SalesLine.Reset;
                    SalesLine.SetRange("Document Type", "Document Type");
                    SalesLine.SetRange("Document No.", "No.");
                    SalesLine.SetFilter(Quantity, '<>0');
                    SalesLine.SetFilter("Return Qty. to Receive", '<>0');
                    Receive := SalesLine.Find('-');
                end;

                if not (Ship or Invoice or Receive) then
                    AddError(Text012);

                if Invoice then
                    if "Document Type" <> "Document Type"::"Credit Memo" then
                        if "Due Date" = 0D then
                            AddError(StrSubstNo(Text006, FieldCaption("Due Date")));

                if Ship and ("Shipping No." = '') then // Order,Invoice
                    if ("Document Type" = "Document Type"::Order) or
                       (("Document Type" = "Document Type"::Invoice) and SalesSetup."Shipment on Invoice")
                    then
                        if "Shipping No. Series" = '' then
                            AddError(
                              StrSubstNo(
                                Text006,
                                FieldCaption("Shipping No. Series")));

                if Receive and ("Return Receipt No." = '') then
                    if "Return Receipt No. Series" = '' then
                        AddError(
                          StrSubstNo(
                            Text006,
                            FieldCaption("Return Receipt No. Series")));

                if Invoice and ("Posting No." = '') then
                    if "Document Type" in ["Document Type"::Order, "Document Type"::"Credit Memo"] then
                        if "Posting No. Series" = '' then
                            AddError(
                              StrSubstNo(
                                Text006,
                                FieldCaption("Posting No. Series")));

                SalesLine.Reset;
                SalesLine.SetRange("Document Type", "Document Type");
                SalesLine.SetRange("Document No.", "No.");
                SalesLine.SetFilter("Purch. Order Line No.", '<>0');
                if SalesLine.Find('-') then begin
                    DropShipOrder := true;
                    if Ship then
                        repeat
                            if PurchOrderHeader."No." <> SalesLine."Purchase Order No." then begin
                                PurchOrderHeader.Get(PurchOrderHeader."Document Type"::Order, SalesLine."Purchase Order No.");
                                if PurchOrderHeader."Pay-to Vendor No." = '' then
                                    AddError(
                                      StrSubstNo(
                                        Text013,
                                        PurchOrderHeader.FieldCaption("Pay-to Vendor No.")));
                                if PurchOrderHeader."Receiving No." = '' then
                                    if PurchOrderHeader."Receiving No. Series" = '' then
                                        AddError(
                                          StrSubstNo(
                                            Text013,
                                            PurchOrderHeader.FieldCaption("Receiving No. Series")));
                            end;
                        until SalesLine.Next = 0;
                end;

                if "Document Type" in ["Document Type"::Order, "Document Type"::Invoice] then
                    if SalesSetup."Ext. Doc. No. Mandatory" and ("External Document No." = '') then
                        AddError(StrSubstNo(Text006, FieldCaption("External Document No.")));

                // IF NOT DimMgt.CheckDocDimComb(DocDim1) THEN
                AddError(DimMgt.GetDimCombErr);

                TableID[1] := DATABASE::Customer;
                No[1] := "Bill-to Customer No.";
                TableID[2] := DATABASE::Job;
                // No[2]:= "PaymentTerms";
                TableID[3] := DATABASE::"Salesperson/Purchaser";
                No[3] := "Salesperson Code";
                TableID[4] := DATABASE::Campaign;
                No[4] := "Campaign No.";
                TableID[5] := DATABASE::"Responsibility Center";
                No[5] := "Responsibility Center";
                // IF NOT DimMgt.CheckDocDimValuePosting(DocDim1,TableID,No) THEN
                AddError(DimMgt.GetDimValuePostingErr);

                if "Salesperson Code" = '' then begin
                    Clear(SalesPurchPerson);
                    SalesPersonText := '';
                end else begin
                    SalesPurchPerson.Get("Salesperson Code");
                    SalesPersonText := Text042;
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FieldCaption("Your Reference");
                if "VAT Registration No." = '' then
                    VATNoText := ''
                else
                    VATNoText := FieldCaption("VAT Registration No.");
            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.Get;
                FormatAddr.Company(CompanyAddr, CompanyInfo);
                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");

                SalesHeader.Copy("Sales Header");
                SalesHeader.FilterGroup := 2;
                SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);
                if SalesHeader.Find('-') then begin
                    case true of
                        ShipReceiveOnNextPostReq and InvOnNextPostReq:
                            ShipInvText := Text000;
                        ShipReceiveOnNextPostReq:
                            ShipInvText := Text001;
                        InvOnNextPostReq:
                            ShipInvText := Text002;
                    end;
                    ShipInvText := StrSubstNo(Text003, ShipInvText);
                end;
                SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::"Credit Memo");
                if SalesHeader.Find('-') then begin
                    case true of
                        ShipReceiveOnNextPostReq and InvOnNextPostReq:
                            ReceiveInvText := Text018;
                        ShipReceiveOnNextPostReq:
                            ReceiveInvText := Text031;
                        InvOnNextPostReq:
                            ReceiveInvText := Text002;
                    end;
                    ReceiveInvText := StrSubstNo(Text032, ReceiveInvText);
                end;
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

    trigger OnInitReport()
    begin
        GLSetup.Get;
    end;

    trigger OnPreReport()
    begin
        SalesHeaderFilter := "Sales Header".GetFilters;
    end;

    var
        Text000: Label 'Ship and Invoice';
        Text001: Label 'Ship';
        Text002: Label 'Invoice';
        Text003: Label 'Order Posting: %1';
        Text004: Label 'Total %1';
        Text005: Label 'Total %1 Incl. VAT';
        Text006: Label '%1 must be specified.';
        Text007: Label '%1 must be %2 for %3 %4.';
        Text008: Label '%1 %2 does not exist.';
        Text009: Label '%1 must not be a closing date.';
        Text010: Label '%1 is not within your allowed range of posting dates.';
        Text012: Label 'There is nothing to post.';
        Text013: Label '%1 must be entered on the purchase order header.';
        Text014: Label 'Sales Document: %1';
        Text015: Label '%1 must be %2.';
        Text016: Label '%1 %2 does not exist on customer entries.';
        Text017: Label '%1 %2 %3 does not exist.';
        Text018: Label 'Receive and Invoice';
        Text019: Label '%1 %2 must be specified.';
        Text020: Label '%1 must be 0 when %2 is 0.';
        Text021: Label 'Drop shipments are only possible for items.';
        Text022: Label 'You cannot ship sales order line %1 because the line is marked';
        Text023: Label 'as a drop shipment and is not yet associated with a purchase order.';
        Text024: Label 'The %1 on the shipment is not the same as the %1 on the sales header.';
        Text025: Label '%1 must have the same sign as the shipment.';
        Text026: Label 'Shipment %1 was invoiced after you opened it.';
        Text027: Label 'The shipment lines have been deleted.';
        Text031: Label 'Receive';
        Text032: Label 'Credit Memo Posting: %1';
        Text033: Label 'Total %1 Excl. VAT';
        Text034: Label 'Enter "Yes" in %1 and/or %2 and/or %3.';
        Text035: Label 'You must enter the customer''s %1.';
        Text036: Label 'The quantity you are attempting to invoice ';
        Text037: Label 'is greater than the quantity in shipment %1.';
        Text038: Label 'The %1 on the return receipt is not the same as the %1 on the sales header.';
        Text039: Label '%1 must have the same sign as the return receipt.';
        Text040: Label 'The return receipt lines have been deleted.';
        SalesSetup: Record "Sales & Receivables Setup";
        UserSetup: Record "User Setup";
        Cust: Record Customer;
        SalesHeader: Record "Sales Header";
        SalesLine2: Record "Sales Line";
        GLAcc: Record "G/L Account";
        Item: Record Item;
        Res: Record Resource;
        SaleShptLine: Record "Sales Shipment Line";
        ReturnRcptLine: Record "Post Value Entry to G/L";
        PurchOrderHeader: Record "Purchase Header";
        GenPostingSetup: Record "General Posting Setup";
        VATPostingSetup: Record "VAT Posting Setup";
        CustLedgEntry: Record "Cust. Ledger Entry";
        TempDocDim: Record "Dimension Set Entry" temporary;
        FA: Record "Fixed Asset";
        FADeprBook: Record "FA Depreciation Book";
        DimMgt: Codeunit DimensionManagement;
        SalesHeaderFilter: Text[250];
        BillToAddr: array[8] of Text[50];
        SellToAddr: array[8] of Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        ShipInvText: Text[50];
        ReceiveInvText: Text[50];
        ErrorText: array[99] of Text[250];
        QtyToHandleCaption: Text[30];
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        VATDate: Date;
        MaxQtyToBeInvoiced: Decimal;
        RemQtyToBeInvoiced: Decimal;
        QtyToBeInvoiced: Decimal;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        QtyToHandle: Decimal;
        ErrorCounter: Integer;
        DropShipOrder: Boolean;
        InvOnNextPostReq: Boolean;
        ShipReceiveOnNextPostReq: Boolean;
        VATNoError: Boolean;
        ApplNoError: Boolean;
        ShowDim: Boolean;
        Continue: Boolean;
        ShowCostAssignment: Boolean;
        Text041: Label 'Packing List';
        VATNoText: Text[30];
        SalesPersonText: Text[30];
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DocDim1: Record "Dimension Set Entry";
        DocDim2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        CompanyInfo: Record "Company Information";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        ReferenceText: Text[30];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        TotalText: Text[50];
        "---------------": Text[30];
        SalesComm: Record "Sales Comment Line";
        SalesPers: Record "Salesperson/Purchaser";
        ShippgAgent: Record "Shipping Agent";
        Text042: Label 'Salesperson';
        PrePrinted: Boolean;
        TotWeight: Decimal;
        Agent: Text[30];
        Commt: array[15, 2] of Text[250];
        ORIGIN: Text[250];
        Date_CaptionLbl: Label 'Date:';
        CompanyInfo__Phone_No__CaptionLbl: Label 'Phone No.';
        CompanyInfo__Fax_No__CaptionLbl: Label 'Fax No.';
        Sales_Header___Bill_to_Customer_No__CaptionLbl: Label 'Customer No.';
        Order_No_CaptionLbl: Label 'Order No.';
        To_CaptionLbl: Label 'To:';
        Date_Caption_Control1000000021Lbl: Label 'Date:';
        PACKING_LISTCaptionLbl: Label 'PACKING LIST';
        SalesHeader__Package_Tracking_No__CaptionLbl: Label 'Container No.';
        SalesHeader__Seal_No_CaptionLbl: Label 'Seal No';
        SalesHeader__Ship_to_City_CaptionLbl: Label 'Destination';
        SalesHeader__Container_Code_CaptionLbl: Label 'Container Code';
        AgentCaptionLbl: Label 'Shipped On Board';
        TOTAL_WEIGHT_CaptionLbl: Label 'TOTAL WEIGHT:';
        MT__NET_CaptionLbl: Label 'MT (NET)';
        Authorised_SignatoryCaptionLbl: Label 'Authorised Signatory';

    local procedure AddError(Text: Text[250])
    begin
        ErrorCounter := ErrorCounter + 1;
        ErrorText[ErrorCounter] := Text;
    end;

    local procedure CheckShptLines(SalesLine: Record "Sales Line"; SalesLine2: Record "Sales Line")
    var
        PostedDocDim: Record "Dimension Set Entry";
        TempPostedDocDim: Record "Dimension Set Entry" temporary;
    begin
        /*WITH SalesLine2 DO BEGIN
          SaleShptLine.RESET;
          CASE "Document Type" OF
            "Document Type"::Order:
              BEGIN
                SaleShptLine.SETCURRENTKEY("Order No.","Order Line No.");
                SaleShptLine.SETRANGE("Order No.","Document No.");
                SaleShptLine.SETRANGE("Order Line No.","Line No.");
              END;
            "Document Type"::Invoice:
              BEGIN
                SaleShptLine.SETRANGE("Document No.","Shipment No.");
                SaleShptLine.SETRANGE("Line No.","Shipment Line No.");
              END;
          END;
        
          SaleShptLine.SETFILTER("Qty. Shipped Not Invoiced",'<>0');
          IF SaleShptLine.FIND('-') THEN
            REPEAT
              PostedDocDim.SETRANGE("Table ID",DATABASE::"Sales Shipment Line");
              PostedDocDim.SETRANGE("Document No.",SaleShptLine."Document No.");
              PostedDocDim.SETRANGE("Line No.",SaleShptLine."Line No.");
              DimMgt.CopyPostedDocDimToPostedDocDim(PostedDocDim,TempPostedDocDim);
              IF NOT DimMgt.CheckDocDimConsistency(
                TempDocDim,TempPostedDocDim,DATABASE::"Sales Line",DATABASE::"Sales Shipment Line")
              THEN
                AddError(DimMgt.GetDocDimConsistencyErr);
              IF SaleShptLine."Sell-to Customer No." <> "Sell-to Customer No." THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("Sell-to Customer No.")));
              IF SaleShptLine.Type <> Type THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION(Type)));
              IF SaleShptLine."No." <> "No." THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("No.")));
              IF SaleShptLine."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("Gen. Bus. Posting Group")));
              IF SaleShptLine."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("Gen. Prod. Posting Group")));
              IF SaleShptLine."Location Code" <> "Location Code" THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("Location Code")));
              IF SaleShptLine."Job No." <> "Job No." THEN
                AddError(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("Job No.")));
                     IF (-SalesLine."Qty. to Invoice") * SaleShptLine.Quantity < 0 THEN
                       AddError(
                         STRSUBSTNO(
                           Text025,FIELDCAPTION("Qty. to Invoice")));
              QtyToBeInvoiced := RemQtyToBeInvoiced - SalesLine."Qty. to Ship";
              IF ABS(QtyToBeInvoiced) > ABS(SaleShptLine.Quantity - SaleShptLine."Quantity Invoiced") THEN
                QtyToBeInvoiced := -(SaleShptLine.Quantity - SaleShptLine."Quantity Invoiced");
              RemQtyToBeInvoiced := RemQtyToBeInvoiced - QtyToBeInvoiced;
              SaleShptLine."Quantity Invoiced" := SaleShptLine."Quantity Invoiced" + (-QtyToBeInvoiced);
            UNTIL (SaleShptLine.NEXT = 0) OR (ABS(RemQtyToBeInvoiced) <= ABS("Qty. to Ship"));
        
          IF ABS(RemQtyToBeInvoiced) > ABS("Qty. to Ship") THEN
            IF "Document Type" = "Document Type"::Invoice THEN
              IF SaleShptLine."Qty. Shipped Not Invoiced" <> 0 THEN
                AddError(
                  STRSUBSTNO(Text036 +
                    Text037,"Shipment No."))
              ELSE
                AddError(STRSUBSTNO(Text026,"Shipment No."))
          ELSE
            AddError(Text027);
        END;   */// & u

    end;

    local procedure CheckRcptLines(SalesLine: Record "Sales Line"; SalesLine2: Record "Sales Line")
    var
        PostedDocDim: Record "Dimension Set Entry";
        TempPostedDocDim: Record "Dimension Set Entry" temporary;
    begin
        /*
        WITH SalesLine2 DO BEGIN
          ReturnRcptLine.RESET;
          ReturnRcptLine.SETCURRENTKEY("Credit Memo No.","Credit Memo Line No.");
          ReturnRcptLine.SETRANGE("Credit Memo No.","Document No.");
          ReturnRcptLine.SETRANGE("Credit Memo Line No.","Line No.");
          IF ReturnRcptLine.FIND('-') THEN
            REPEAT
              IF ReturnRcptLine."Quantity Invoiced" <> ReturnRcptLine.Quantity THEN BEGIN
                PostedDocDim.SETRANGE("Table ID",DATABASE::"Return Receipt Line");
                PostedDocDim.SETRANGE("Document No.",ReturnRcptLine."Document No.");
                PostedDocDim.SETRANGE("Line No.",ReturnRcptLine."Line No.");
                DimMgt.CopyPostedDocDimToPostedDocDim(PostedDocDim,TempPostedDocDim);
                IF NOT DimMgt.CheckDocDimConsistency(
                  TempDocDim,TempPostedDocDim,DATABASE::"Sales Line",DATABASE::"Return Receipt Line")
                THEN
                  AddError(DimMgt.GetDocDimConsistencyErr);
                IF ReturnRcptLine."Sell-to Customer No." <> "Sell-to Customer No." THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION("Sell-to Customer No.")));
                IF ReturnRcptLine.Type <> Type THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION(Type)));
                IF ReturnRcptLine."No." <> "No." THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION("No.")));
                IF ReturnRcptLine."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION("Gen. Bus. Posting Group")));
                IF ReturnRcptLine."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION("Gen. Prod. Posting Group")));
                IF ReturnRcptLine."Location Code" <> "Location Code" THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION("Location Code")));
                IF ReturnRcptLine."Job No." <> "Job No." THEN
                  AddError(
                    STRSUBSTNO(
                      Text038,
                      FIELDCAPTION("Job No.")));
        
                IF (-SalesLine."Qty. to Invoice") * ReturnRcptLine.Quantity < 0 THEN
                  AddError(
                    STRSUBSTNO(
                      Text039,FIELDCAPTION("Qty. to Invoice")));
        
                QtyToBeInvoiced := RemQtyToBeInvoiced - SalesLine."Return Qty. to Receive";
                IF ABS(QtyToBeInvoiced) > ABS(ReturnRcptLine.Quantity - ReturnRcptLine."Quantity Invoiced") THEN
                  QtyToBeInvoiced := -(ReturnRcptLine.Quantity - ReturnRcptLine."Quantity Invoiced");
                RemQtyToBeInvoiced := RemQtyToBeInvoiced - QtyToBeInvoiced;
                ReturnRcptLine."Quantity Invoiced" := ReturnRcptLine."Quantity Invoiced" + (-QtyToBeInvoiced);
              END;
            UNTIL (ReturnRcptLine.NEXT = 0) OR (ABS(RemQtyToBeInvoiced) <= ABS("Return Qty. to Receive"));
        
          IF ABS(RemQtyToBeInvoiced) > ABS("Return Qty. to Receive") THEN
            AddError(Text040);
        END;
         */

    end;
}

