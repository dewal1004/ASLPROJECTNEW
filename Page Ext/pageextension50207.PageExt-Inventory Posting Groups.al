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
                Visible = true;
            }
            field("S/No."; "S/No.")
            {
                Visible = false;
            }
            field("Catch Budget"; "Catch Budget")
            {
                Visible = false;
            }
           /* field(Inventory1; Inventory1)
            {
            }
            field(Inventory2; Inventory2)
            {
            }
            field("Inventory total2"; "Inventory total2")
            {
            }
            field("Inventory total4"; "Inventory total4")
            {
            }
            field(Inventory4; Inventory4)
            {
            }
            field("Inventory total3"; "Inventory total3")
            {
            }
            field(Inventory3; Inventory3)
            {
            }            
            // area(factboxes)
             //{                
             //}
            // systempart(Control29;Links)
            // {
            //     Visible = false;
            // }
            // systempart(Control28;Notes)
            // {
            //     Visible = false;
            // }
            */
        
        }
    }
    actions
    {
        addafter("&Setup")
        {
            action("Inventory Posting Group Detail")
            {
                Caption = 'InV. Post. Group Detailes';
                ApplicationArea = All;
                RunObject = page 50071;
                RunPageOnRec = true;
            }
        }
    }
    
}

