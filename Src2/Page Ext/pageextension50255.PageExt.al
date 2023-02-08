pageextension 50255 "pageextension50255" extends "Item Journal Batches"
{
    layout
    {
        modify("Posting No. Series")
        {
            Visible = false;
        }
        addafter("Posting No. Series")
        {
            field("Entry Type"; "Entry Type")
            {
                ApplicationArea = All;
            }
            field("Transfer From"; "Transfer From")
            {
                ApplicationArea = All;
            }
            field("Transfer To"; "Transfer To")
            {
                ApplicationArea = All;
            }
            field("Document No."; "Document No.")
            {
                ApplicationArea = All;
            }
            field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
            {
                ApplicationArea = All;
            }
        }
        addafter("Reason Code")
        {
            field("Lock batch"; "Lock batch")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        UserRec: Record "User Setup";


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemJnlMgt.OpenJnlBatch(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ItemJnlMgt.OpenJnlBatch(Rec);
    {IF UserRec.GET(USERID) THEN
      IF NOT UserRec."Use Item Journal" THEN ERROR('You Can Not Use Item Journal');
      }
    */
    //end;
}

