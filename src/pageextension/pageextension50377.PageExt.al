pageextension 50377 "pageextension50377" extends Permissions
{
    //Unsupported feature: Code Modification on "FillTempPermissions(PROCEDURE 1003)".

    //procedure FillTempPermissions();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TempPermission.Copy(Rec,true);
    TempPermission.Reset;
    TempPermission.DeleteAll;
    #4..15
      FillTempPermissionsForAllObjects(TempPermission);
    IsNewRecord := false;
    if Find('=<>') then;
    CurrPage.Update(false);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..18
    */
    //end;
}
