report 99979 "Zero Value Entry"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ZeroValueEntry.rdlc';

    dataset
    {
        dataitem("G/L Entry"; "G/L Entry")
        {
            DataItemTableView = SORTING("Document No.", "Posting Date");
            RequestFilterFields = "Document No.", "Entry No.";
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
            column(G_L_Entry__Entry_No__; "Entry No.")
            {
            }
            column(G_L_Entry__G_L_Account_No__; "G/L Account No.")
            {
            }
            column(G_L_Entry__Document_No__; "Document No.")
            {
            }
            column(G_L_Entry_Amount; Amount)
            {
            }
            column(G_L_Entry__Debit_Amount_; "Debit Amount")
            {
            }
            column(G_L_Entry__Credit_Amount_; "Credit Amount")
            {
            }
            column(G_L_EntryCaption; G_L_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(G_L_Entry__Entry_No__Caption; FieldCaption("Entry No."))
            {
            }
            column(G_L_Entry__G_L_Account_No__Caption; FieldCaption("G/L Account No."))
            {
            }
            column(G_L_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(G_L_Entry_AmountCaption; FieldCaption(Amount))
            {
            }
            column(G_L_Entry__Debit_Amount_Caption; FieldCaption("Debit Amount"))
            {
            }
            column(G_L_Entry__Credit_Amount_Caption; FieldCaption("Credit Amount"))
            {
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Document No." = FIELD("Document No.");
                column(Value_Entry__Sales_Amount__Actual__; "Sales Amount (Actual)")
                {
                }
                column(Value_Entry__Cost_Amount__Actual___ACY__; "Cost Amount (Actual) (ACY)")
                {
                }
                column(Value_Entry__Cost_Amount__Actual__; "Cost Amount (Actual)")
                {
                }
                column(Value_Entry__Cost_Posted_to_G_L__ACY__; "Cost Posted to G/L (ACY)")
                {
                }
                column(Value_Entry__Cost_per_Unit_; "Cost per Unit")
                {
                }
                column(Value_Entry__Cost_Posted_to_G_L_; "Cost Posted to G/L")
                {
                }
                column(Value_Entry__Cost_per_Unit__ACY__; "Cost per Unit (ACY)")
                {
                }
                column(Value_Entry__Document_No__; "Document No.")
                {
                }
                column(Value_Entry__Cost_Amount__Actual__Caption; FieldCaption("Cost Amount (Actual)"))
                {
                }
                column(Value_Entry__Cost_per_Unit_Caption; FieldCaption("Cost per Unit"))
                {
                }
                column(Value_Entry__Cost_Posted_to_G_L_Caption; FieldCaption("Cost Posted to G/L"))
                {
                }
                column(Value_Entry__Cost_Posted_to_G_L__ACY__Caption; FieldCaption("Cost Posted to G/L (ACY)"))
                {
                }
                column(Value_Entry__Cost_per_Unit__ACY__Caption; FieldCaption("Cost per Unit (ACY)"))
                {
                }
                column(Value_Entry__Sales_Amount__Actual__Caption; FieldCaption("Sales Amount (Actual)"))
                {
                }
                column(Item_Ledger_Entry__Cost_Amount__Expected___ACY__Caption; "Item Ledger Entry".FieldCaption("Cost Amount (Expected) (ACY)"))
                {
                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if "Sales Amount (Actual)" = 0 then CurrReport.Skip;
                    "Sales Amount (Actual)" := 0;
                    "Cost Amount (Actual) (ACY)" := 0;
                    "Cost Posted to G/L (ACY)" := 0;
                    "Cost per Unit (ACY)" := 0;
                    "Cost per Unit" := 0;
                    "Cost Posted to G/L" := 0;
                    "Cost Amount (Actual)" := 0;
                    Modify();
                end;
            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Document No." = FIELD("Document No.");
                column(Item_Ledger_Entry__Cost_Amount__Actual__; "Cost Amount (Actual)")
                {
                }
                column(Item_Ledger_Entry__Cost_Amount__Expected___ACY__; "Cost Amount (Expected) (ACY)")
                {
                }
                column(Item_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Item_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if "Cost Amount (Actual)" = 0 then CurrReport.Skip;
                    "Cost Amount (Actual)" := 0;
                    Modify();
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Amount := 0;
                "Debit Amount" := 0;
                "Credit Amount" := 0;
                Modify();
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
        G_L_EntryCaptionLbl: Label 'G/L Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

