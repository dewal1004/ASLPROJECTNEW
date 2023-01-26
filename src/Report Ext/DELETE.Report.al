report 66666 DELETE
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DELETE.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            column(Item_No_; "No.")
            {
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Item No." = FIELD("No.");
                DataItemTableView = SORTING("Item No.", "Gen. Prod. Posting Group") ORDER(Ascending) WHERE("Gen. Prod. Posting Group" = CONST('FIS'), "Sales Amount (Actual)" = FILTER(<> 0));
                RequestFilterFields = "Gen. Prod. Posting Group", "Sales Amount (Actual)", "Entry No.";
                column(Value_Entry__Entry_No__; "Entry No.")
                {
                }
                column(Value_Entry__Item_No__; "Item No.")
                {
                }
                column(OLD_VAL; OLD_VAL)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    OLD_VAL := "Value Entry"."Sales Amount (Actual)";

                    if "Value Entry"."Sales Amount (Actual)" <> 0 then begin

                        "Value Entry"."Cost per Unit" := 0;
                        "Value Entry"."Sales Amount (Actual)" := 0;
                        "Value Entry"."Cost Amount (Actual)" := 0;
                        "Value Entry"."Cost Posted to G/L" := 0;
                        "Value Entry"."Cost Amount (Actual) (ACY)" := 0;
                        "Value Entry"."Cost Posted to G/L (ACY)" := 0;
                        "Value Entry"."Cost per Unit (ACY)" := 0;
                        if "Value Entry"."Gen. Prod. Posting Group" <> 'FIS' then Error('STOP');
                        "Value Entry".Modify;
                    end;
                end;
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

    var
        OLD_VAL: Decimal;
}

