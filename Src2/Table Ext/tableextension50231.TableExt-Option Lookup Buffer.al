tableextension 50231 tableextension50231 extends "Option Lookup Buffer"
{

    //Unsupported feature: Code Modification on "FillBufferInternal(PROCEDURE 3)".

    //procedure FillBufferInternal();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    RecRef.Open(TableNo);
    FieldRef := RecRef.Field(FieldNo);
    for OptionIndex := 0 to TypeHelper.GetNumberOfOptions(FieldRef.OptionString) do begin
    #4..8
          CreateNew(OptionIndex,FormatOption(FieldRef),LookupType)
        else begin
          RelatedRecRef.Open(RelatedTableNo);
          RelatedRecRef.SetPermissionFilter;
          if RelatedRecRef.ReadPermission then
            CreateNew(OptionIndex,FormatOption(FieldRef),LookupType);
          RelatedRecRef.Close;
        end;
      end;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11
         // RelatedRecRef.SETPERMISSIONFILTER;
    #13..18
    */
    //end;
}

