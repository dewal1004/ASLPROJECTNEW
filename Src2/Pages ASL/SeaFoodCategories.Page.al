page 50150 "Sea Food Categories"
{
    PageType = Card;
    SourceTable = "Sea Food categories";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Sea food code"; "Sea food code")
                {
                    ApplicationArea = All;
                }
                field("Sea food Description"; "Sea food Description")
                {
                    ApplicationArea = All;
                }
                field("Inventory."; "Inventory.")
                {
                    ApplicationArea = All;
                }
                field("Inventory 1"; "Inventory 1")
                {
                    ApplicationArea = All;
                }
                field("Inventory 2"; "Inventory 2")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    

    actions
    {
    }

    
}

