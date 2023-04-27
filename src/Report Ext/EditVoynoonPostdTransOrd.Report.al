report 99505 "Edit Voy no on Postd TransOrd"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/EditVoynoonPostdTransOrd.rdlc';

    dataset
    {
        dataitem("Transfer Receipt Header"; "Transfer Receipt Header")
        {
            DataItemTableView = SORTING("Transfer-to Code", "Transfer To Voy. No.");
            RequestFilterFields = "No.", "Transfer Order No.";
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
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    if locn <> '' then
                        if "Location Code" = loc then "Location Code" := locn;
                    // IF (ExDocn<>'') AND ("External Document No."=ExDoc) THEN "External Document No.":=ExDocn;
                    if (ExDocn <> '') then "External Document No." := ExDocn;
                    "External Document No." := ExDocn;

                    Modify;
                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("Document No.");
                    SetFilter("Document No.", '%1|%2', "Transfer Receipt Header"."No.", DocNo);
                    ItDocFilt := GetFilter("Document No.");
                    if ItDocFilt = '' then Error('Pls, Rem. to set Item Doc No.');
                end;
            }
            dataitem("Value Entry"; "Value Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    if locn <> '' then
                        if "Location Code" = loc then "Location Code" := locn;
                    if (ExDocn <> '') then "External Document No." := ExDocn;
                    "External Document No." := ExDocn;

                    Modify;
                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("Document No.");
                    SetFilter("Document No.", '%1|%2', "Transfer Receipt Header"."No.", DocNo);
                    JbDocFilt := GetFilter("Document No.");
                    if JbDocFilt = '' then Error('Pls, Rem. to set Job Ledger Doc No.');
                end;
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    if locn <> '' then
                        if "Location Code" = loc then "Location Code" := locn;
                    Modify;
                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("Document No.");
                    SetFilter("Document No.", '%1|%2', "Transfer Receipt Header"."No.", DocNo);
                    JbDocFilt := GetFilter("Document No.");
                    if JbDocFilt = '' then Error('Pls, Rem. to set Job Ledger Doc No.');
                end;
            }
            dataitem("G/L Entry"; "G/L Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    if (ExDocn <> '') then "External Document No." := ExDocn;
                    "External Document No." := ExDocn;
                    Modify;
                end;

                trigger OnPreDataItem()
                begin
                    SetCurrentKey("Document No.");
                    SetFilter("Document No.", '%1|%2', "Transfer Receipt Header"."No.", DocNo);
                    GLDocFilt := GetFilter("Document No.");
                    if GLDocFilt = '' then Error('Pls, Rem. to set G/L Doc No.');
                end;
            }

            trigger OnAfterGetRecord()
            begin
                ExDoc := "Transfer To Voy. No.";
                ExDocn := NewVoyageNo;
                if (ExDocn <> '') and (("External Document No." <> '') or ("Transfer To Voy. No." <> '')) then begin
                    "External Document No." := ExDocn;
                    "Transfer To Voy. No." := ExDocn;
                end;
                Modify;

                //Modify Corresponding Shipment
                TransShipmt.SetCurrentKey("Transfer Order No.");
                TransShipmt.SetFilter(TransShipmt."Transfer Order No.", "Transfer Order No.");
                if TransShipmt.Find('-') then begin
                    DocNo := TransShipmt."No.";
                    if (ExDocn <> '') and ((TransShipmt."External Document No." <> '') or (TransShipmt."Transfer To Voy. No." <> '')) then begin
                        TransShipmt."External Document No." := ExDocn;
                        TransShipmt."Transfer To Voy. No." := ExDocn;
                    end;
                    TransShipmt.Modify;
                end;

                //Modify Corresponding Order
                TransOrder.SetCurrentKey(TransOrder."No.");
                TransOrder.SetFilter(TransOrder."No.", "Transfer Order No.");
                if TransOrder.Find('-') then begin
                    DocNo := TransShipmt."No.";
                    if (ExDocn <> '') and ((TransOrder."External Document No." <> '') or (TransOrder."Transfer To Voy. No." <> '')) then begin
                        TransOrder."External Document No." := ExDocn;
                        TransOrder."Transfer To Voy. No." := ExDocn;
                    end;
                    TransOrder.Modify;
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

