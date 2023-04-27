report 50217 "Request For Quotation"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/RequestForQuotation.rdlc';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.", "Vendor Posting Group", "Payment Terms Code", "Shipment Method Code", "Gen. Bus. Posting Group", "Lead Time Calculation", "Responsibility Center";
            column(Company_Name; CompanyInfo.Name)
            {
            }
            column(STRSUBSTNOText004CopyText; StrSubstNo(Text004, CopyText))
            {
            }
            column(BuyFromAddr_1; BuyFromAddr[1])
            {
            }
            column(BuyFromAddr_2; BuyFromAddr[2])
            {
            }
            column(BuyFromAddr_3; BuyFromAddr[3])
            {
            }
            column(BuyFromAddr_4; BuyFromAddr[4])
            {
            }
            column(BuyFromAddr_5; BuyFromAddr[5])
            {
            }
            column(CompanyAddr_1; CompanyAddr[1])
            {
            }
            column(CompanyAddr_2; CompanyAddr[2])
            {
            }
            column(CompanyAddr_3; CompanyAddr[3])
            {
            }
            column(CompanyAddr_4; CompanyAddr[4])
            {
            }
            column(CompanyAddr_5; CompanyAddr[51])
            {
            }
            column(Attn_Vendor_Contact; 'Attn.: ' + Vendor.Contact)
            {
            }
            column(Phone_No; CompanyInfo."Phone No.")
            {
            }
            column(Picture; CompanyInfo.Picture)
            {
            }
            column(Fax_No; CompanyInfo."Fax No.")
            {
            }
            column(dato; dato)
            {
            }
            dataitem("Requisition Wksh. Name"; "Requisition Wksh. Name")
            {
                RequestFilterFields = "Worksheet Template Name", Name;
                column(RequestedBy_RequisitionWkshName; "Requisition Wksh. Name"."Requested By")
                {
                }
                dataitem("Requisition Line"; "Requisition Line")
                {
                    DataItemLink = "Worksheet Template Name" = FIELD("Worksheet Template Name"), "Journal Batch Name" = FIELD(Name);
                    DataItemTableView = SORTING("Worksheet Template Name", "Journal Batch Name", "Line No.");
                    RequestFilterFields = "Worksheet Template Name", "Journal Batch Name", "Gen. Prod. Posting Group", "Print Line";
                    column(No_RequisitionLine; "Requisition Line"."No.")
                    {
                    }
                    column(ReqBy; ReqBy)
                    {
                    }
                    column(GenBy; GenBy)
                    {
                    }
                    column(ReqNo; ReqNo)
                    {
                    }
                    column(Countz; Countz)
                    {
                    }
                    column(Description_RequisitionLine; "Requisition Line".Description)
                    {
                    }
                    column(UnitofMeasureCode_RequisitionLine; "Requisition Line"."Unit of Measure Code")
                    {
                    }
                    column(Quantity_RequisitionLine; "Requisition Line".Quantity)
                    {
                    }
                    column(ForCOMPANYNAME; 'For ' + CompanyName)
                    {
                    }
                    column(UserID_RequisitionLine; "Requisition Line"."User ID")
                    {
                    }
                    column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin

                        ReqNo := "Requisition Line".GetFilter("Requisition Line"."Journal Batch Name");

                        if "Requisition Line".Type > 1 then begin
                            VendItem.SetFilter(VendItem."Item No.", "Requisition Line"."No.");
                            VendItem.SetFilter(VendItem."Vendor No.", Vendor."No.");
                            if VendItem.Find('-') then
                                "Requisition Line"."No." := VendItem."Vendor Item No."
                            else
                                "Requisition Line"."No." := '';
                        end;
                        /*IF VendItem.GET("Requisition Line"."No.",Vendor."No.")
                             THEN "Requisition Line"."No.":=VendItem."Vendor Item No.";*/

                        Countz := Countz + 1;

                    end;
                }

                trigger OnAfterGetRecord()
                begin

                    //Owa:="Requisition Wksh. Name".FIND('-');
                    "Requisition Wksh. Name".CalcFields("Requisition Wksh. Name"."Requested By");
                    if Usersrec.Get("Requisition Wksh. Name"."Requested By") then
                        GenBy := Usersrec."User Name"
                    else
                        GenBy := 'X';
                    Countz := 0;
                end;
            }

            trigger OnAfterGetRecord()
            begin

                // CurrReport.Language := Language.GetLanguageID("Language Code");   //Refactor
                if Usersrec.Get(ReqBy) then
                    ReqStrId := Usersrec."User Name"
                else
                    ReqStrId := ReqBy;

                if RespCenter.Get(RC) then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else begin
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                end;

                FormatAddr.Vendor(BuyFromAddr, Vendor);
            end;

            trigger OnPreDataItem()
            begin

                CompanyInfo.Get;
                Faxnumber := CompanyInfo."Fax No.";
                phonenumber := CompanyInfo."Phone No.";
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
        CompanyInfo.Get;
        CompanyInfo.CalcFields(CompanyInfo.Picture);
    end;

    var
        LineRec: Record "Requisition Line";
        templatex1: Code[10];
        batchx2: Code[10];
        CompanyInfo: Record "Company Information";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        FormatAddr: Codeunit "Format Address";
        CompanyAddr: array[8] of Text[50];
        BuyFromAddr: array[8] of Text[50];
        ReqNo: Text[30];
        dato: Text[30];
        CopyText: Text[30];
        "-------": Integer;
        VendItem: Record "Item Vendor";
        LetterHd: Boolean;
        ReqStrId: Code[50];
        RC: Code[10];
        ReqBy: Code[50];
        GenBy: Code[50];
        Countz: Integer;
        Faxnumber: Code[20];
        phonenumber: Code[20];
        Owa: Boolean;
        Text004: Label 'REQUEST FOR QUOTATION';
        Usersrec: Record User;
}

