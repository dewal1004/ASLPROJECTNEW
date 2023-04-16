pageextension 50276 "pageextension50276" extends "Issued Fin. Charge Memo List"
{
    actions
    {

        //Unsupported feature: Code Modification on ""Send by &Email"(Action 5).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IssuedFinChrgMemoHeader := Rec;
        CurrPage.SetSelectionFilter(IssuedFinChrgMemoHeader);
        IssuedFinChrgMemoHeader.PrintRecords(false,true,false);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IssuedFinChrgMemoHeader := Rec;
        CurrPage.SetSelectionFilter(IssuedFinChrgMemoHeader);
        IssuedFinChrgMemoHeader.PrintRecords(false,true,true);
        */
        //end;
    }
}

