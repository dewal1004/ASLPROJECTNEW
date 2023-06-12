// pageextension 50323 pageextension50323 extends "Transfer Order Subform"
// {
//     layout
//     {
//         modify("Variant Code")
//         {
//             Visible = true;
//         }
//         modify(Quantity)
//         {
//             Caption = 'Quantity Approved';
//         }
//         // addfirst(Control1)
//         // {
//         //     field("Last Issued Qty."; "Last Issued Qty.")
//         //     {
//         //     }
//         // }
//         addafter("Unit of Measure")
//         {
//             field("Qty. Reqd."; "Qty. Reqd.") {}
//             field("Inventory Posting Group"; "Inventory Posting Group") {}
//             field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group") {}
//         }

//         addafter("Receipt Date")
//         {
//             field("Quantity (Base)"; "Quantity (Base)") {}
//             field("Outstanding Qty. (Base)"; "Outstanding Qty. (Base)") {}
//             field("Qty. to Ship (Base)"; "Qty. to Ship (Base)") {}
//             field("Qty. to Receive (Base)"; "Qty. to Receive (Base)") {}
//             field("Last Issued Date"; "Last Issued Date") {}
//             field(Control17; ShortcutDimCode[8]) {}
//         }
//         moveafter(Description; "Unit of Measure", Quantity) {}
//     }
//   }

