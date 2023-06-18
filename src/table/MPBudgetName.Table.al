table 50022 "MP Budget Name"
{
    DrillDownPageID = "MP Budget Names";
    LookupPageID = "MP Budget Names";
    Caption = 'MP Budget Name';
    fields
    {
        field(1; Name; Code[10])
        {
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Name, Description)
        {
        }
    }

    trigger OnDelete()
    begin
        MPBudgetEntry.SetCurrentKey("Budget Name");
        MPBudgetEntry.SetRange("Budget Name", Name);
        MPBudgetEntry.DeleteAll();
    end;

    var
        MPBudgetEntry: Record "MP Budget Entry";
}
