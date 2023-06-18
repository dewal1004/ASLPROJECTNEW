pageextension 50305 "pageextension50305" extends "CRM Redirect"
{
    //Unsupported feature: Property Modification (TextConstString) on "FilterRegexTok(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //FilterRegexTok : @@@={Locked};ENU=\A%1: @\*(.*)\*\z;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FilterRegexTok : @@@={Locked};ENU=\AFilter: @\*(.*)\*\z;
    //Variable type has not been exported.

    //Unsupported feature: Code Modification on "ExtractCRMInfoFromFilters(PROCEDURE 8)".

    //procedure ExtractCRMInfoFromFilters();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    FilterText := GetFilters;
    RegexHelper := RegexHelper.Regex(StrSubstNo(FilterRegexTok,FieldCaption(Filter)));
    MatchHelper := RegexHelper.Match(FilterText);
    if not MatchHelper.Success then
      Error(InvalidFilterErr);
    GroupCollectionHelper := MatchHelper.Groups;
    GroupHelper := GroupCollectionHelper.Item(1);
    CRMInfo := GroupHelper.Value;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    FilterText := GetFilters;
    RegexHelper := RegexHelper.Regex(FilterRegexTok);
    #3..8
    */
    //end;
}
