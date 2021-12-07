pageextension 50267 pageextension50267 extends "Item Journal"
{
    layout
    {
        modify("Entry Type")
        {
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer';
        }
        modify("Applies-to Entry")
        {
            Visible = false;
        }
    }
    var
        UserRec: Record "User Setup";


        //Unsupported feature: Code Modification on "OnInsertRecord".

        //trigger OnInsertRecord(BelowxRec: Boolean): Boolean
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Entry Type" > "Entry Type"::"Negative Adjmt." then
          Error(Text000,"Entry Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Entry Type" > "Entry Type"::Transfer then
          Error(Text000,"Entry Type");
        */
        //end;


        //Unsupported feature: Code Modification on "OnOpenPage".

        //trigger OnOpenPage()
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsSaasExcelAddinEnabled := ServerConfigSettingHandler.GetIsSaasExcelAddinEnabled;
        if ClientTypeManagement.GetCurrentClientType = CLIENTTYPE::ODataV4 then
          exit;
        #4..12
        if not JnlSelected then
          Error('');
        ItemJnlMgt.OpenJnl(CurrentJnlBatchName,Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if UserRec.Get(UserId) then
          if not UserRec."Use Item Journal" then Error('You Can Not Use Item Journal');
        #1..15
        */
        //end;
}

