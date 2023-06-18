xmlport 50056 "gl entrys"
{
    Caption = 'gl entrys';
    schema
    {
        textelement(Node)
        {
            tableelement("G/L Entry"; "G/L Entry")
            {
                XmlName = 'Root';
                fieldelement(a; "G/L Entry"."Entry No.")
                {
                }
                fieldelement(b; "G/L Entry"."G/L Account No.")
                {
                }
                fieldelement(c; "G/L Entry"."Posting Date")
                {
                }
                fieldelement(d; "G/L Entry"."Document Type")
                {
                }
                fieldelement(e; "G/L Entry"."Document No.")
                {
                }
                fieldelement(f; "G/L Entry".Description)
                {
                }
                fieldelement(g; "G/L Entry"."Bal. Account No.")
                {
                }
                fieldelement(h; "G/L Entry".Amount)
                {
                }
                fieldelement(i; "G/L Entry"."Global Dimension 1 Code")
                {
                }
                fieldelement(j; "G/L Entry"."Global Dimension 2 Code")
                {
                }
                fieldelement(k; "G/L Entry"."User ID")
                {
                }
                fieldelement(l; "G/L Entry"."Source Code")
                {
                }
                fieldelement(m; "G/L Entry"."System-Created Entry")
                {
                }
                fieldelement(n; "G/L Entry"."Prior-Year Entry")
                {
                }
                fieldelement(o; "G/L Entry"."Job No.")
                {
                }
                fieldelement(p; "G/L Entry".Quantity)
                {
                }
                fieldelement(q; "G/L Entry"."VAT Amount")
                {
                }
                fieldelement(r; "G/L Entry"."Business Unit Code")
                {
                }
                fieldelement(s; "G/L Entry"."Journal Batch Name")
                {
                }
                fieldelement(t; "G/L Entry"."Reason Code")
                {
                }
                fieldelement(u; "G/L Entry"."Gen. Posting Type")
                {
                }
                fieldelement(v; "G/L Entry"."Gen. Bus. Posting Group")
                {
                }
                fieldelement(w; "G/L Entry"."Gen. Prod. Posting Group")
                {
                }
                fieldelement(x; "G/L Entry"."Bal. Account Type")
                {
                }
                fieldelement(y; "G/L Entry"."Transaction No.")
                {
                }
                fieldelement(z; "G/L Entry"."Debit Amount")
                {
                }
                fieldelement(ab; "G/L Entry"."Credit Amount")
                {
                }
                fieldelement(ac; "G/L Entry"."Document Date")
                {
                }
                fieldelement(ad; "G/L Entry"."External Document No.")
                {
                }
                fieldelement(af; "G/L Entry"."Source Type")
                {
                }
                fieldelement(ag; "G/L Entry"."Source No.")
                {
                }
                fieldelement(ah; "G/L Entry"."No. Series")
                {
                }
                fieldelement(ai; "G/L Entry"."Tax Area Code")
                {
                }
                fieldelement(aj; "G/L Entry"."FA Entry Type")
                {
                }
                fieldelement(ak; "G/L Entry"."FA Entry No.")
                {
                }
                fieldelement(al; "G/L Entry"."Old External Document No.")
                {
                }
                fieldelement(am; "G/L Entry"."Maintenance Code")
                {
                }
                fieldelement(an; "G/L Entry"."Job No")
                {
                }
            }
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }
}
