tableextension 50206 tableextension50206 extends "Sales Invoice Header"
{
    fields
    {
        field(50301; "Contr. Code/Postn.  Applied"; Option)
        {
            OptionMembers = "01-Skipper","02-Marine Eng","03-Coxswain","04-Eng Superv","05-Shr Mast/Sail","06-Mec/Carp/Wel/Secu","07-Others";
        }
        field(50302; "Appraisal Selection"; Option)
        {
            Description = ' ,Interview,Skill & Performance';
            OptionMembers = " ",Interview,"Skill & Performance";
        }
        field(50303; "Skill Score"; Decimal)
        {
        }
        field(50304; "Skill Total"; Decimal)
        {
        }
        field(50305; "Skill Percentage"; Decimal)
        {

            trigger OnLookup()
            begin
                /*//Univision Start 31/10/01 Yusuf
                  "Skill Percentage":=0;
                 IF "Skill Total" > 0 THEN
                    "Skill Percentage":=("Skill Score"/"Skill Total")*100
                ELSE
                 "Skill Percentage":=0;
                // Univision Finish 31/10/01 Yusuf
                */

            end;
        }
        field(50306; "Performance Score"; Decimal)
        {
        }
        field(50307; "Performance Total"; Decimal)
        {
        }
        field(50308; "Performance Percentage"; Decimal)
        {

            trigger OnLookup()
            begin

                /*//Univision Start 31/10/01 Yusuf
                "Performance Percentage":=0;
                IF "Performance Total" >0 THEN
                   "Performance Percentage":=("Performance Score"/"Performance Total")*100
                ELSE
                  "Performance Percentage":=0;
                
                // Univision Finish 31/10/01 Yusuf
                */

            end;
        }
        field(50309; "Total Percentage"; Decimal)
        {

            trigger OnLookup()
            begin
                /*
                // Univision Start 31/10/01 Yusuf
                "Total Percentage":=0;
                  ttscore:= "Skill Score"+"Performance Score";
                 Result:= "Skill Total"+"Performance Total";
                 IF Result>0 THEN
                 "Total Percentage":=(ttscore/Result)*100
                 ELSE
                 "Total Percentage":=0;
                
                // Univision Finish 31/10/01 Yusuf
                */

            end;
        }
        field(50380; "Container Code"; Code[10])
        {
        }
        field(50381; "Seal No"; Code[15])
        {
        }
        field(50384; "Shipment Month"; Option)
        {
            OptionMembers = Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec;
        }
    }


    //Unsupported feature: Code Modification on "OnBeforeSendRecords(PROCEDURE 16)".

    //procedure OnBeforeSendRecords();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //{>>>>>>>} ORIGINAL
    {CASE "Document Exchange Status" OF
      "Document Exchange Status"::"Not Sent":
        EXIT;
      "Document Exchange Status"::"Sent to Document Exchange Service",
      "Document Exchange Status"::"Pending Connection to Recipient":
        IF CONFIRM(CheckLatestQst,TRUE) THEN
          DocExchLinks.CheckAndUpdateDocExchInvoiceStatus(Rec);
      "Document Exchange Status"::"Delivered to Recipient":
        BEGIN
          HYPERLINK(DocExchServiceMgt.GetExternalDocURL("Document Exchange Identifier"));
          EXIT;
        END;
    END;

    ShowActivityLog;
    {=======} MODIFIED
    CASE "Document Exchange Status" OF
      "Document Exchange Status"::"Not Sent":
        EXIT;
      "Document Exchange Status"::"Sent to Document Exchange Service":
        IF CONFIRM(CheckLatestQst,TRUE) THEN
          DocExchLinks.CheckAndUpdateDocExchInvoiceStatus(Rec);
      "Document Exchange Status"::"Delivered to Recipient":
        BEGIN
          HYPERLINK(DocExchServiceMgt.GetExternalDocURL("Document Exchange Identifier"));
          EXIT;
        END;
    END;

    ShowActivityLog;
    {=======} TARGET
    {<<<<<<<}
    }
    */
    //end;


    //Unsupported feature: Property Modification (Id) on "DocTxt(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //DocTxt : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DocTxt : 1100;
    //Variable type has not been exported.

    var
        CannotSendMultipleInvoicesElectronicallyErr: Label 'You can only send one electronic invoice at a time.';
}

