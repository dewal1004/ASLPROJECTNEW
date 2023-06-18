tableextension 50205 "tableextension50205" extends "Sales Shipment Line"
{
    fields
    {
        //Unsupported feature: Property Modification (Data type) on ""Description 2"(Field 12)".

        field(50350; Numbers; Decimal)
        {
            Description = 'factor of Quantity';
        }
        field(50351; Packing; Decimal)
        {
            Description = 'factor of Quantity';
        }
    }
    keys
    {
        key(ASLKey1; "Order No.", "Item Category Code", "Shipment Date", "Gen. Bus. Posting Group")
        {
            SumIndexFields = Quantity;
        }
    }

    //Unsupported feature: Code Modification on "InsertInvLineFromShptLine(PROCEDURE 2)".

    //procedure InsertInvLineFromShptLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeCodeInsertInvLineFromShptLine(Rec,SalesLine,IsHandled);
    if IsHandled then
    #4..127
        TransferOldExtLines.TransferExtendedText(
          SalesOrderLine."Line No.",
          NextLineNo,
          "Attached to Line No.");
      SalesLine."Shortcut Dimension 1 Code" := "Shortcut Dimension 1 Code";
      SalesLine."Shortcut Dimension 2 Code" := "Shortcut Dimension 2 Code";
      SalesLine."Dimension Set ID" := "Dimension Set ID";
    #135..146
      SalesOrderHeader."Get Shipment Used" := true;
      SalesOrderHeader.Modify;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..130
          SalesOrderLine."Attached to Line No.");
    #132..149
    */
    //end;

    //Unsupported feature: Property Insertion (Local) on "ShowItemSalesInvLines(PROCEDURE 8)".

    //Unsupported feature: Code Modification on "ShowLineComments(PROCEDURE 10)".

    //procedure ShowLineComments();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::Shipment,"Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::"Return Order","Document No.","Line No.");
    */
    //end;
}
