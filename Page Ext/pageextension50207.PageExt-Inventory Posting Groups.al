pageextension 50207 pageextension50207 extends "Inventory Posting Groups"
{  

    //Unsupported feature: Property Insertion (SourceTableView) on ""Inventory Posting Groups"(Page 112)".

    layout
    {
        //***modify(Control1900000007)
       // {
        //    Visible = false;
       // }
        addafter(Description)
        {
            field("Group Type"; "Group Type")
            {
            }
            field(Category; Category)
            {
            }
            field("Category 2"; "Category 2")
            {
            }
            field(Inventory; Inventory)
            {
                Visible =false;
                Importance = Additional;
            }
            field("Location Filter"; "Location Filter")
            {
            }
            field("Statistics Group"; "Statistics Group")
            {
                Visible = false;
            }
            field("Date Filter"; "Date Filter")
            {
            }
            field("Group Code"; "Group Code")
            {
            }
            field("Points/KG"; "Points/KG")
            {
            }
            field("In Use"; "In Use")
            {
                Visible = true;
            }
            field(Points; Points)
            {
                Visible = true;
            }
            field("Inventory Incentive"; "Inventory Incentive")
            {
                Visible = false;
            }
            field("S/No."; "S/No.")
            {
                Visible = false;
            }
            field("Catch Budget"; "Catch Budget")
            {
                Visible = false;
            }
           field(Inventory1; Inventory1)
            {
                Visible =false;
            }
            field(Inventory2; Inventory2)
            {
            Visible =false;
            }
            field("Inventory total2"; "Inventory total2")
            {
                Visible =false;
            }
            field("Inventory total4"; "Inventory total4")
            {
                Visible =false;
            }
            field(Inventory4; Inventory4)
            {
                Visible =false;
            }
            field("Inventory total3"; "Inventory total3")
            {
                Visible =false;
            }
            field(Inventory3; Inventory3)
            {
                Visible =false;
            }            
        }
    }
            // area(factboxes)
            //  {                
            //  }
            // systempart(Control29;Links)
            // {
            //     Visible = false;
            // }
            // systempart(Control28;Notes)
            // {
            //     Visible = false;
            // }        
        
    actions
    {
        addafter("&Setup")
        {
            action("Inventory Posting Group Detail")
            {
                Caption = 'InV. Post. Group Detailes';
                ApplicationArea = All;
                RunObject = page "Inventory Posting Group Page";
                RunPageOnRec = true;
                
            }
        }
    }
    
}

