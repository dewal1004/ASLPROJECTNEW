pageextension 50255 pageextension50255 extends "Item Journal Batches"
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
            }
            field("Transfer From"; "Transfer From")
            {
            }
            field("Transfer To"; "Transfer To")
            {
            }
            field("Document No."; "Document No.")
            {
            }
            field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
            {
            }
        }
        addafter("Reason Code")
        {
            field("Lock batch"; "Lock batch")
            {
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

