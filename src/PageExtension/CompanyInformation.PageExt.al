pageextension 50201 "pageextension50201" extends "Company Information"
{
    layout
    {
        modify("VAT Registration No.")
        {
            Visible = false;
        }
        modify("Giro No.")
        {
            Visible = false;
        }
        modify("Check-Avail. Period Calc.")
        {
            Visible = false;
        }
        modify("Check-Avail. Time Bucket")
        {
            Visible = false;
        }
        addafter(Name)
        {
            field("Name 2"; Rec."Name 2")
            {
                ApplicationArea = All;

            }
        }
        addafter("Cal. Convergence Time Frame")
        {
            field("Min Foreign Indirect Cost %"; Rec."Min Foreign Indirect Cost %")
            {
                ApplicationArea = All;
            }
        }
    }
}

