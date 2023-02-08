tableextension 50243 "tableextension50243" extends Vendor
{
    fields
    {

        //Unsupported feature: Property Modification (CalcFormula) on ""Debit Amount (LCY)"(Field 99)".


        //Unsupported feature: Property Modification (CalcFormula) on ""Credit Amount (LCY)"(Field 100)".

        field(50301; "Entry Type Filter"; Option)
        {
            Caption = 'Entry Type';
            Description = 'Balace at date rep.';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain,Payment Discount,Payment Discount (VAT Excl.),Payment Discount (VAT Adjustment),Appln. Rounding,Correction of Remaining Amount';
            OptionMembers = " ","Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain","Payment Discount","Payment Discount (VAT Excl.)","Payment Discount (VAT Adjustment)","Appln. Rounding","Correction of Remaining Amount";
        }
        field(60000; Hospital; Boolean)
        {
        }
        field(60001; Trainer; Boolean)
        {
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "No." = '' then begin
      PurchSetup.Get;
      PurchSetup.TestField("Vendor Nos.");
    #4..8

    if not (InsertFromContact or (InsertFromTemplate and (Contact <> ''))) then
      UpdateContFromVend.OnInsert(Rec);

    if "Purchaser Code" = '' then
      SetDefaultPurchaser;

    #16..18

    UpdateReferencedIds;
    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if UserRec.Get(UserId) then
      if not UserRec."Modify Vendor" then Error('You Can Not Create New Vendor');//Shod26/10/20

    #1..11
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    #13..21
    */
    //end;


    //Unsupported feature: Code Modification on "OnModify".

    //trigger OnModify()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    UpdateReferencedIds;
    SetLastModifiedDateTime;

    if IsContactUpdateNeeded then begin
      Modify;
      UpdateContFromVend.OnModify(Rec);
      if not Find then begin
        Reset;
        if Find then;
      end;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    if UserRec.Get(UserId) then
      if not UserRec."Modify Vendor" then Error('You Can Not Modify Any Vendor');

    "Last Date Modified" := Today;
    #1..6
      if Find then;
    end;
    */
    //end;

    var
        UserRec: Record "User Setup";
}

