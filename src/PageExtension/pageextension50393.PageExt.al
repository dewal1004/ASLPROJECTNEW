pageextension 50393 "pageextension50393" extends "Order Promising Lines"
{
    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    OrderPromisingCalculationDone := false;
    Accepted := false;
    if GetFilter("Source ID") <> '' then
    #4..10
          end;
        "Source Type"::Job:
          begin
            Job.Status := Job.Status::Open;
            Job."No." := GetRangeMin("Source ID");
            Job.Find;
            SetJob(Job);
    #18..22
          SetSalesHeader(SalesHeader);
          AcceptButtonEnable := SalesHeader.Status = SalesHeader.Status::Open;
      end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..13
            Job.Status := Job.Status::"Voyage Start";
    #15..25
    */
    //end;
}
