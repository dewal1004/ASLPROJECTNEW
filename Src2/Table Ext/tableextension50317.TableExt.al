tableextension 50317 "tableextension50317" extends "Return Receipt Line"
{
    keys
    {

        //Unsupported feature: Deletion (KeyCollection) on ""Document No.","Line No."(Key)".

        key(ASLKey1; "Document No.", "Line No.", "Return Order No.")
        {
           // Clustered = true;
        }
    }


    //Unsupported feature: Code Modification on "InsertInvLineFromRetRcptLine(PROCEDURE 2)".

    //procedure InsertInvLineFromRetRcptLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetRange("Document No.","Document No.");

    TempSalesLine := SalesLine;
    #4..106
        TransferOldExtLines.TransferExtendedText(
          SalesOrderLine."Line No.",
          NextLineNo,
          "Attached to Line No.");
      SalesLine."Shortcut Dimension 1 Code" := SalesOrderLine."Shortcut Dimension 1 Code";
      SalesLine."Shortcut Dimension 2 Code" := SalesOrderLine."Shortcut Dimension 2 Code";
      SalesLine."Dimension Set ID" := SalesOrderLine."Dimension Set ID";
    #114..129
      SalesOrderHeader."Get Shipment Used" := true;
      SalesOrderHeader.Modify;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..109
          SalesOrderLine."Attached to Line No.");
    #111..132
    */
    //end;

    //Unsupported feature: Property Insertion (Local) on "ShowItemSalesCrMemoLines(PROCEDURE 9)".


    //Unsupported feature: Property Insertion (Local) on "ShowLineComments(PROCEDURE 5)".



    //Unsupported feature: Code Modification on "ShowLineComments(PROCEDURE 5)".

    //procedure ShowLineComments();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::"Posted Return Receipt","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::"Posted Credit Memo","Document No.","Line No.");
    */
    //end;
}

