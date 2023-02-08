tableextension 50256 "tableextension50256" extends "Bank Account"
{
    fields
    {

        //Unsupported feature: Code Insertion on ""Bank Acc. Posting Group"(Field 21)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        if BankPGrp.Get("Bank Acc. Posting Group") then
          Category := BankPGrp.Category;
        */
        //end;
        field(50001; Category; Option)
        {
            OptionMembers = "Cash/Cheques","Local Bank","Foreign Bank","Term Deposit";
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "No." = '' then begin
      GLSetup.Get;
      GLSetup.TestField("Bank Account Nos.");
      NoSeriesMgt.InitSeries(GLSetup."Bank Account Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;

    if not InsertFromContact then
      UpdateContFromBank.OnInsert(Rec);

    DimMgt.UpdateDefaultDim(
      DATABASE::"Bank Account","No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    #10..12
    */
    //end;


    //Unsupported feature: Code Modification on "OnModify".

    //trigger OnModify()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := Today;

    if IsContactUpdateNeeded then begin
      Modify;
      UpdateContFromBank.OnModify(Rec);
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
    #1..5
    end;
    */
    //end;


    //Unsupported feature: Property Modification (Id) on "DataExchNotSetErr(Variable 1016)".

    //var
    //>>>> ORIGINAL VALUE:
    //DataExchNotSetErr : 1016;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DataExchNotSetErr : 1116;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "JobQEntriesCreatedQst(Variable 1019)".

    //var
    //>>>> ORIGINAL VALUE:
    //JobQEntriesCreatedQst : 1019;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobQEntriesCreatedQst : 1119;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "TransactionImportTimespanMustBePositiveErr(Variable 1020)".

    //var
    //>>>> ORIGINAL VALUE:
    //TransactionImportTimespanMustBePositiveErr : 1020;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransactionImportTimespanMustBePositiveErr : 1120;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "BankAccNotLinkedErr(Variable 1023)".

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccNotLinkedErr : 1023;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccNotLinkedErr : 1123;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "AutoLogonNotPossibleErr(Variable 1024)".

    //var
    //>>>> ORIGINAL VALUE:
    //AutoLogonNotPossibleErr : 1024;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoLogonNotPossibleErr : 1124;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "OnlineFeedStatementStatus(Variable 1022)".

    //var
    //>>>> ORIGINAL VALUE:
    //OnlineFeedStatementStatus : 1022;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnlineFeedStatementStatus : 1122;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "CannotDeleteBalancingBankAccountErr(Variable 1026)".

    //var
    //>>>> ORIGINAL VALUE:
    //CannotDeleteBalancingBankAccountErr : 1026;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CannotDeleteBalancingBankAccountErr : 1126;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ConfirmDeleteBalancingBankAccountQst(Variable 1027)".

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeleteBalancingBankAccountQst : 1027;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeleteBalancingBankAccountQst : 1127;
    //Variable type has not been exported.

    var
        BankPGrp: Record "Bank Account Posting Group";
        Text001: Label 'There may be a statement using the %1.\\';
        Text002: Label 'Do you want to change %1?';
}

