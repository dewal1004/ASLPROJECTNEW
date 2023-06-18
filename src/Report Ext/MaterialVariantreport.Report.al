report 50098 "Material Variant report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/MaterialVariantreport.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Material Variant report';
    dataset
    {
        dataitem("Store Requisition Header New"; "Store Requisition Header New")
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Req. No", "Req. Type", "Document No.", Processed;
            column(No; "Store Requisition Header New"."Req. No")
            {
            }
            column(Type; "Store Requisition Header New"."Req. Type")
            {
            }
            column(Processed; "Store Requisition Header New".Processed)
            {
            }
            column(DocumentNo; "Store Requisition Header New"."Document No.")
            {
            }
            dataitem("Store Requisition Line New"; "Store Requisition Line New")
            {
                DataItemLink = "Req. No." = FIELD("Req. No");
                DataItemTableView = SORTING("Req. No.", "Line No.") WHERE("Procurement Request" = CONST(true));
                column(Item; "Store Requisition Line New"."Item No.")
                {
                }
                column(Descripion; "Store Requisition Line New"."Item Description")
                {
                }
                column(process; "Store Requisition Line New".Processed)
                {
                }
                column(ReqQty; "Store Requisition Line New"."Requested Quantity")
                {
                }
                column(AppQty; "Store Requisition Line New"."Approved Quantity")
                {
                }
                column(AvaQty; "Store Requisition Line New"."Available Quantity")
                {
                }
                column(IssQty; "Store Requisition Line New"."Issued Quantity")
                {
                }
                column(ShtQty; "Store Requisition Line New"."Shortage Qty")
                {
                }
                column(ProcReq; "Store Requisition Line New"."Procurement Request")
                {
                }
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
}
