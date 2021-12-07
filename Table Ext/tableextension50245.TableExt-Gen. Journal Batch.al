tableextension 50245 tableextension50245 extends "Gen. Journal Batch"
{
    fields
    {
        field(50329; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50330; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50331; "Batch Refrence"; Code[20])
        {
        }
    }


    //Unsupported feature: Code Modification on "CheckBalance(PROCEDURE 11)".

    //procedure CheckBalance();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Balance := GetBalance;

    if Balance = 0 then
      OnGeneralJournalBatchBalanced
    else
      OnGeneralJournalBatchNotBalanced;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Balance := GetBalance;
    */
    //end;

    var
        "--------------------": Text[30];
        DimMgt: Codeunit DimensionManagement;
}

