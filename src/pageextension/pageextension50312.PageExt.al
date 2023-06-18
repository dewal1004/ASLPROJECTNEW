pageextension 50312 "pageextension50312" extends "Order Planning"
{
    //Unsupported feature: Code Modification on "ShowDemandOrder(PROCEDURE 15)".

    //procedure ShowDemandOrder();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Demand Type" of
      DATABASE::"Sales Line":
        begin
    #4..40
        begin
          Job.Get("Demand Order No.");
          case Job.Status of
            Job.Status::Open:
              PAGE.Run(PAGE::"Job Card",Job);
          end;
        end;
    end;

    OnAfterShowDemandOrder(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..43
            Job.Status::"Voyage Start":
    #45..50
    */
    //end;
}
