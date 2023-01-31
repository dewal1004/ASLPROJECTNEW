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
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    ApplicationArea = All;
                }
                field("employee.GetFullName(""Employee No"")"; employee.GetFullName("Employee No"))
                {
                    ApplicationArea = All;
                }
                field("Hospital Code"; "Hospital Code")
                {
                    Editable = "Hospital CodeEditable";
                    ApplicationArea = All;
                }
                field(VendName; VendName)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Beneficiary; Beneficiary)
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; "Transaction Type")
                {
                    Caption = 'Transaction Code';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        CheckTransType
                    end;
                }
                field("Transaction Description"; "Transaction Description")
                {
                    ApplicationArea = All;
                }
                field("Transaction Date"; "Transaction Date")
                {
                    ApplicationArea = All;
                }
                field("ASL Ref No"; "ASL Ref No")
                {
                    Caption = 'ASL Ref No';
                    Editable = "ASL Ref NoEditable";
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
            }
            group(Employee)
            {
                Caption = 'Employee';
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Region Code"; "Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
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
                ApplicationArea = All;
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

