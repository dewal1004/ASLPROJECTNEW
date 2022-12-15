table 50126 "Catch Dimensional Matrix +"
{

    fields
    {
        field(1; "Catch No."; Code[10])
        {
            TableRelation = "Medical Record"."Line No";
        }
        field(2; "Field No."; Integer)
        {
        }
        field(3; Content; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Catch No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

