report 50081 "Material Req Reconciliation"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/MaterialReqReconciliation.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem("Store Requisition Line New"; "Store Requisition Line New")
        {
            RequestFilterFields = "Req. No.", "Item No.", "Claim by Employee", Processed, "Process Date";
            column(ReqNo; "Store Requisition Line New"."Req. No.")
            {
            }
            column(ItemNo; "Store Requisition Line New"."Item No.")
            {
            }
            column(Descrisption; "Store Requisition Line New"."Item Description")
            {
            }
            column(IssuedQty; "Store Requisition Line New"."Issued Quantity")
            {
            }
            column(EmpNo; "Store Requisition Line New"."Claim by Employee")
            {
            }
            column(EmpName; EmployeeName)
            {
            }
            column(Prodate; "Store Requisition Line New"."Req Date")
            {
            }
            column(LastIssue; "Store Requisition Line New"."Last Replacement Date")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if EmpRec.Get("Store Requisition Line New"."Claim by Employee") then
                    EmployeeName := EmpRec.FullName;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals("Store Requisition Line New"."Issued Quantity");
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
        EmployeeName: Text[100];
        EmpRec: Record Employee;
}

