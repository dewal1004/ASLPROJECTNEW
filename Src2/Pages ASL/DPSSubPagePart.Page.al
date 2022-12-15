page 50124 "DPS SubPage Part"
{
    PageType = CardPart;
    RefreshOnActivate = true;
    SourceTable = "Dynamics Procurement Register";

    layout
    {
        area(content)
        {
            group("Item History")
            {
                field("Available Quantity"; "Available Quantity")
                {
                }
                field("Pending Quantity"; "Pending Quantity")
                {
                }
                field("Pending Requisition"; "Pending Requisition")
                {
                }
            }
            group("Consumption Partern")
            {
                field("Last Month Consumption"; "Last Month Consumption")
                {
                    Caption = 'Last Month';
                }
                field("Last 3 Months Consumption"; "Last 3 Months Consumption")
                {
                    Caption = '3 Months';
                }
                field("Last 6 Month Consumption"; "Last 6 Month Consumption")
                {
                    Caption = '6 Months';
                }
                field("Last One Year Consumption"; "Last One Year Consumption")
                {
                    Caption = '1 Year';
                }
                field("Last 2 Years Consumption"; "Last 2 Years Consumption")
                {
                    Caption = '2 Years';
                }
                field("Last 3 Years Consumption"; "Last 3 Years Consumption")
                {
                    Caption = '3 Years';
                }
                field("Last 4 Years Consumption"; "Last 4 Years Consumption")
                {
                    Caption = '4 Years';
                }
                field("Last 5 Years Consumption"; "Last 5 Years Consumption")
                {
                    Caption = '5 Years';
                }
            }
            group("Monthly Averages Consumption")
            {
                field("Ave. 3 Month Consumption"; "Ave. 3 Month Consumption")
                {
                    Caption = 'Ave. 3 Month';
                }
                field("Ave. 6 Month Consumption"; "Ave. 6 Month Consumption")
                {
                    Caption = 'Ave. 6 Month';
                }
                field("Ave. One Year Consumption"; "Ave. One Year Consumption")
                {
                    Caption = 'Ave. 1 Year';
                }
                field("Last 2 Years Monthly Average"; "Last 2 Years Monthly Average")
                {
                    Caption = 'Ave. 2 Years';
                }
                field("Last 5 Years Monthly Average"; "Last 5 Years Monthly Average")
                {
                    Caption = 'Ave. 5 Years';
                }
            }
        }
    }

    actions
    {
    }
}

