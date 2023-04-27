report 50097 "Update RM data  Correction"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateRMdataCorrection.rdlc';

    dataset
    {
        dataitem("Store Requisition Header New"; "Store Requisition Header New")
        {
            RequestFilterFields = "Req. No", Processed;
            dataitem("Store Requisition Line New"; "Store Requisition Line New")
            {
                DataItemLink = "Req. No." = FIELD("Req. No");

                trigger OnAfterGetRecord()
                begin
                    "Store Requisition Line New".Rejected := "Store Requisition Header New".Rejected;
                    "Store Requisition Line New".Processed := "Store Requisition Header New".Processed;
                    "Store Requisition Line New"."Req Date" := "Store Requisition Header New"."Req Date";
                    "Store Requisition Line New"."Issues Captured Date" := DT2Date("Store Requisition Header New"."Captured Time");
                    "Store Requisition Line New"."1st Approval Date" := DT2Date("Store Requisition Header New"."1st Approved Time");
                    "Store Requisition Line New"."Final Approval Date" := DT2Date("Store Requisition Header New"."Final Approved Time");
                    "Store Requisition Line New"."Process Date" := "Store Requisition Header New"."Processed Date";
                    "Store Requisition Line New"."Issued Captured" := "Store Requisition Header New"."Issued Captured";
                    "Store Requisition Line New".Modify;

                    /*"Store Requisition Line New".Processed := "Store Requisition Header New".Processed;
                    IF "Store Requisition Line New"."Approved Quantity" < 0 THEN
                    "Store Requisition Line New"."Approved Quantity"   := 0;
                    IF "Store Requisition Line New"."Available Quantity" < 0 THEN
                    "Store Requisition Line New"."Available Quantity"   := 0;
                    //"Store Requisition Line New".MODIFY;
                    */

                end;
            }

            trigger OnAfterGetRecord()
            begin
                if "Store Requisition Header New"."1st Approved" = 3 then
                    "Store Requisition Header New".Rejected := true;
                if "Store Requisition Header New"."Final Approved" = 3 then
                    "Store Requisition Header New".Rejected := true;
                if ("Store Requisition Header New"."Document No." <> '') and ("Store Requisition Header New".Processed = false) then
                    "Store Requisition Header New".Processed := true;
                "Store Requisition Header New".Modify;
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
}

