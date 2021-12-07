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
                }
                field("Sea food Description"; "Sea food Description")
                {
                }
                field("Inventory."; "Inventory.")
                {
                }
                field("Inventory 1"; "Inventory 1")
                {
                }
                field("Inventory 2"; "Inventory 2")
                {
                }
            }
        }
    }

    actions
    {
    }
}

