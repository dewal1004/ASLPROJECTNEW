page 50044 "Medical record Card"
{
    PageType = Card;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Line No"; "Line No")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("employee.GetFullName(""Employee No"")"; employee.GetFullName("Employee No"))
                {
                }
                field("Hospital Code"; "Hospital Code")
                {
                    Editable = "Hospital CodeEditable";
                }
                field(VendName; VendName)
                {
                    Editable = false;
                }
                field(Beneficiary; Beneficiary)
                {
                }
                field("Transaction Type"; "Transaction Type")
                {
                    Caption = 'Transaction Code';

                    trigger OnValidate()
                    begin
                        CheckTransType
                    end;
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("ASL Ref No"; "ASL Ref No")
                {
                    Caption = 'ASL Ref No';
                    Editable = "ASL Ref NoEditable";
                }
                field(Amount; Amount)
                {
                }
            }
            group(Employee)
            {
                Caption = 'Employee';
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Region Code"; "Region Code")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Overview")
            {
                Caption = '&Overview';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Medical Treatment Costs";
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        CheckTransType;
        HospitalCodeOnFormat;
    end;

    trigger OnInit()
    begin
        "ASL Ref NoEditable" := true;
        "Hospital CodeEditable" := true;
    end;

    trigger OnModifyRecord(): Boolean
    begin
        CheckTransType
    end;

    var
        employee: Record Employee;
        VendName: Text[100];
        Vendor: Record Vendor;
        [InDataSet]
        "Hospital CodeEditable": Boolean;
        [InDataSet]
        "ASL Ref NoEditable": Boolean;

    [Scope('OnPrem')]
    procedure CheckTransType()
    begin

        if "Transaction Type" <> "Transaction Type"::H then begin
            "Hospital CodeEditable" := false;
            "ASL Ref NoEditable" := false;
            "Hospital Code" := '';
            "ASL Ref No" := ''
        end
        else begin
            "Hospital CodeEditable" := true;
            "ASL Ref NoEditable" := true;
        end
    end;

    local procedure HospitalCodeOnFormat()
    begin
        if Vendor.Get("Hospital Code") then
            VendName := Vendor.Name
        else
            VendName := '';
    end;
}

