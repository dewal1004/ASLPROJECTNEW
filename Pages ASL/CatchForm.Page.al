page 80087 "Catch Form"
{
    // "Fishing Ground"
    // "Sea Temperature"

    PageType = Card;
    SourceTable = Item;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Voyage No."; "Voyage No.")
                {
                    TableRelation = Job;

                    trigger OnValidate()
                    begin
                        if JobRec.Get("Voyage No.") then
                            Vessel := JobRec.Vessel;
                        "Catch Date" := WorkDate;
                    end;
                }
                field(Vessel; Vessel)
                {
                    //The property BlankZero is only supported on fields of type BigInteger, Boolean, Integer, Decimal, Duration, Enum, and Option.
                    //BlankZero = true;
                }
                field("Catch Date"; "Catch Date")
                {
                }
                field("Fishing Ground"; "Fishing Ground")
                {
                    TableRelation = "Fishing Area +".Code;
                }
                field("Sea Temperature"; "Sea Temperature")
                {
                    BlankZero = true;
                }
            }
            group("White Hon/Wild Tiger/Headless")
            {
                Caption = 'White Hon/Wild Tiger/Headless';
                label(Control1000000052)
                {
                    CaptionClass = Text19015995;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000027)
                {
                    CaptionClass = Text19018967;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000001)
                {
                    CaptionClass = Text19080002;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[1,1]"; CTH[1, 1])
                {
                    BlankZero = true;
                    Caption = '0';
                }
                label(Control1000000117)
                {
                    CaptionClass = Text19080003;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[2,1]"; CTH[2, 1])
                {
                    BlankZero = true;
                    Caption = '1';
                }
                field("CTH[3,1]"; CTH[3, 1])
                {
                    BlankZero = true;
                    Caption = '2';
                }
                field("CTH[4,1]"; CTH[4, 1])
                {
                    BlankZero = true;
                    Caption = '3';
                }
                field("CTH[5,1]"; CTH[5, 1])
                {
                    BlankZero = true;
                    Caption = '4';
                }
                field("CTH[6,1]"; CTH[6, 1])
                {
                    BlankZero = true;
                    Caption = '5';
                }
                field("CTH[7,1]"; CTH[7, 1])
                {
                    BlankZero = true;
                    Caption = '6';
                }
                field("CTH[8,1]"; CTH[8, 1])
                {
                    BlankZero = true;
                    Caption = '7';
                }
                field("CTH[9,1]"; CTH[9, 1])
                {
                    BlankZero = true;
                    Caption = '8';
                }
                field("CTH[10,1]"; CTH[10, 1])
                {
                    BlankZero = true;
                    Caption = '9';
                }
                label(Control1000000054)
                {
                    CaptionClass = Text19001973;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000119)
                {
                    CaptionClass = Text19080006;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000120)
                {
                    CaptionClass = Text19080007;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[11,1]"; CTH[11, 1])
                {
                    BlankZero = true;
                    Caption = '10';
                }
                field("CTH[12,1]"; CTH[12, 1])
                {
                    BlankZero = true;
                    Caption = '11';
                }
                field("CTH[13,1]"; CTH[13, 1])
                {
                    BlankZero = true;
                    Caption = '12';
                }
                field("CTH[14,1]"; CTH[14, 1])
                {
                    BlankZero = true;
                    Caption = '13';
                }
                field("CTH[15,1]"; CTH[15, 1])
                {
                    BlankZero = true;
                    Caption = '14';
                }
                field("CTH[16,1]"; CTH[16, 1])
                {
                    BlankZero = true;
                    Caption = '15';
                }
                field("CTH[17,1]"; CTH[17, 1])
                {
                    BlankZero = true;
                    Caption = '16';
                }
                field("CTH[18,1]"; CTH[18, 1])
                {
                    BlankZero = true;
                    Caption = '17';
                }
                label(Control1000000061)
                {
                    CaptionClass = Text19025899;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000125)
                {
                    CaptionClass = Text19080011;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000126)
                {
                    CaptionClass = Text19080012;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[19,1]"; CTH[19, 1])
                {
                    BlankZero = true;
                    Caption = '18';
                }
                field("CTH[20,1]"; CTH[20, 1])
                {
                    BlankZero = true;
                    Caption = '19';
                }
                field("CTH[21,1]"; CTH[21, 1])
                {
                    BlankZero = true;
                    Caption = '20';
                }
                label(Control1000000024)
                {
                    CaptionClass = Text19080013;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000118)
                {
                    CaptionClass = Text19080014;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[1,2]"; CTH[1, 2])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                }
                field("CTH[2,2]"; CTH[2, 2])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                }
                field("CTH[3,2]"; CTH[3, 2])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                }
                field("CTH[4,2]"; CTH[4, 2])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                }
                field("CTH[5,2]"; CTH[5, 2])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                }
                field("CTH[6,2]"; CTH[6, 2])
                {
                    BlankZero = true;
                    Caption = '60 - 80';
                }
                field("CTH[7,2]"; CTH[7, 2])
                {
                    BlankZero = true;
                    Caption = '80 - 100';
                }
                field("CTH[8,2]"; CTH[8, 2])
                {
                    BlankZero = true;
                    Caption = '100 - 120';
                }
                field("CTH[9,2]"; CTH[9, 2])
                {
                    BlankZero = true;
                    Caption = '120 - 150';
                }
                field("CTH[10,2]"; CTH[10, 2])
                {
                    BlankZero = true;
                    Caption = '150 - 200';
                }
                label(Control1000000122)
                {
                    CaptionClass = Text19080016;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[11,2]"; CTH[11, 2])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                }
                field("CTH[12,2]"; CTH[12, 2])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                }
                field("CTH[13,2]"; CTH[13, 2])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                }
                field("CTH[14,2]"; CTH[14, 2])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                }
                field("CTH[15,2]"; CTH[15, 2])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                }
                field("CTH[16,2]"; CTH[16, 2])
                {
                    BlankZero = true;
                    Caption = '30 CMS - UP';
                }
                field("CTH[17,2]"; CTH[17, 2])
                {
                    BlankZero = true;
                    Caption = '26 - 30 CMS';
                }
                field("CTH[18,2]"; CTH[18, 2])
                {
                    BlankZero = true;
                    Caption = '24 - 26 CMS';
                }
                label(Control1000000128)
                {
                    CaptionClass = Text19080018;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[19,2]"; CTH[19, 2])
                {
                    BlankZero = true;
                    Caption = 'LRG';
                }
                field("CTH[20,2]"; CTH[20, 2])
                {
                    BlankZero = true;
                    Caption = 'MED';
                }
                field("CTH[21,2]"; CTH[21, 2])
                {
                    BlankZero = true;
                    Caption = 'SML';
                }
                label(Control1000000025)
                {
                    CaptionClass = Text19080019;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[1,3]"; CTH[1, 3])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                    Editable = false;
                }
                field("CTH[2,3]"; CTH[2, 3])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                    Editable = false;
                }
                field("CTH[3,3]"; CTH[3, 3])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                    Editable = false;
                }
                field("CTH[4,3]"; CTH[4, 3])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                    Editable = false;
                }
                field("CTH[5,3]"; CTH[5, 3])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                }
                field("CTH[6,3]"; CTH[6, 3])
                {
                    BlankZero = true;
                    Caption = '60 - 80';
                }
                field("CTH[7,3]"; CTH[7, 3])
                {
                    BlankZero = true;
                    Caption = '80 - 100';
                }
                field("CTH[8,3]"; CTH[8, 3])
                {
                    BlankZero = true;
                    Caption = '100 - 120';
                }
                field("CTH[9,3]"; CTH[9, 3])
                {
                    BlankZero = true;
                    Caption = '120 - 150';
                }
                field("CTH[10,3]"; CTH[10, 3])
                {
                    BlankZero = true;
                    Caption = '150 - 200';
                }
                label(Control1000000124)
                {
                    CaptionClass = Text19080021;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[11,3]"; CTH[11, 3])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                    Editable = false;
                }
                field("CTH[12,3]"; CTH[12, 3])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                    Editable = false;
                }
                field("CTH[13,3]"; CTH[13, 3])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                    Editable = false;
                }
                field("CTH[14,3]"; CTH[14, 3])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                    Editable = false;
                }
                field("CTH[15,3]"; CTH[15, 3])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                    Editable = false;
                }
                field("CTH[16,3]"; CTH[16, 3])
                {
                    BlankZero = true;
                    Caption = '30 CMS - UP';
                    Editable = false;
                }
                field("CTH[17,3]"; CTH[17, 3])
                {
                    BlankZero = true;
                    Caption = '26 - 30 CMS';
                    Editable = false;
                }
                field("CTH[18,3]"; CTH[18, 3])
                {
                    BlankZero = true;
                    Caption = '24 - 26 CMS';
                    Editable = false;
                }
                label(Control1000000130)
                {
                    CaptionClass = Text19080024;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[19,3]"; CTH[19, 3])
                {
                    BlankZero = true;
                    Caption = 'LRG';
                }
                field("CTH[20,3]"; CTH[20, 3])
                {
                    BlankZero = true;
                    Caption = 'MED';
                }
                field("CTH[21,3]"; CTH[21, 3])
                {
                    BlankZero = true;
                    Caption = 'SML';
                }
            }
            group("Brwn Hon/Cut. Fish/Crab/Others")
            {
                Caption = 'Brwn Hon/Cut. Fish/Crab/Others';
                label(Control1000000121)
                {
                    CaptionClass = Text19026203;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000132)
                {
                    CaptionClass = Text19080001;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000129)
                {
                    CaptionClass = Text19033624;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[22,1]"; CTH[22, 1])
                {
                    BlankZero = true;
                    Caption = '21';
                }
                label(Control1000000133)
                {
                    CaptionClass = Text19057214;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[23,1]"; CTH[23, 1])
                {
                    BlankZero = true;
                    Caption = '22';
                }
                field("CTH[24,1]"; CTH[24, 1])
                {
                    BlankZero = true;
                    Caption = '23';
                }
                field("CTH[25,1]"; CTH[25, 1])
                {
                    BlankZero = true;
                    Caption = '24';
                }
                field("CTH[26,1]"; CTH[26, 1])
                {
                    BlankZero = true;
                    Caption = '25';
                }
                field("CTH[27,1]"; CTH[27, 1])
                {
                    BlankZero = true;
                    Caption = '26';
                }
                label(Control1000000184)
                {
                    CaptionClass = Text19056505;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000185)
                {
                    CaptionClass = Text19080004;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000186)
                {
                    CaptionClass = Text19080005;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[28,1]"; CTH[28, 1])
                {
                    BlankZero = true;
                    Caption = '27';
                }
                field("CTH[29,1]"; CTH[29, 1])
                {
                    BlankZero = true;
                    Caption = '28';
                }
                field("CTH[30,1]"; CTH[30, 1])
                {
                    BlankZero = true;
                    Caption = '29';
                    Editable = false;
                }
                field("CTH[31,1]"; CTH[31, 1])
                {
                    BlankZero = true;
                    Caption = '30';
                    Editable = false;
                }
                field("CTH[32,1]"; CTH[32, 1])
                {
                    BlankZero = true;
                    Caption = '31';
                    Editable = false;
                }
                label(Control1000000229)
                {
                    CaptionClass = Text19046184;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000230)
                {
                    CaptionClass = Text19080008;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000231)
                {
                    CaptionClass = Text19080009;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[33,1]"; CTH[33, 1])
                {
                    BlankZero = true;
                    Caption = '32';
                }
                field("CTH[34,1]"; CTH[34, 1])
                {
                    BlankZero = true;
                    Caption = '33';
                }
                field("CTH[35,1]"; CTH[35, 1])
                {
                    BlankZero = true;
                    Caption = '34';
                }
                label(Control1000000123)
                {
                    CaptionClass = Text19065088;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000136)
                {
                    CaptionClass = Text19080010;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000141)
                {
                    CaptionClass = Text19026339;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[36,1]"; CTH[36, 1])
                {
                    BlankZero = true;
                    Caption = '35';
                }
                field("CTH[37,1]"; CTH[37, 1])
                {
                    BlankZero = true;
                    Caption = '36';
                    Editable = false;
                }
                field("CTH[38,1]"; CTH[38, 1])
                {
                    BlankZero = true;
                    Caption = '37';
                    Editable = false;
                }
                field("CTH[39,1]"; CTH[39, 1])
                {
                    BlankZero = true;
                    Caption = '38';
                    Editable = false;
                }
                field("CTH[40,1]"; CTH[40, 1])
                {
                    BlankZero = true;
                    Caption = '39';
                    Editable = false;
                }
                label(Control1000000143)
                {
                    CaptionClass = Text19033601;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                label(Control1000000148)
                {
                    CaptionClass = Text19071678;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[22,2]"; CTH[22, 2])
                {
                    BlankZero = true;
                    Caption = '60 - 80';
                }
                field("CTH[23,2]"; CTH[23, 2])
                {
                    BlankZero = true;
                    Caption = '80 - 100';
                }
                field("CTH[24,2]"; CTH[24, 2])
                {
                    BlankZero = true;
                    Caption = '100 - 120';
                }
                field("CTH[25,2]"; CTH[25, 2])
                {
                    BlankZero = true;
                    Caption = '120 - 150';
                }
                field("CTH[26,2]"; CTH[26, 2])
                {
                    BlankZero = true;
                    Caption = '150 - 200';
                }
                field("CTH[27,2]"; CTH[27, 2])
                {
                    BlankZero = true;
                    Caption = '150 - 200';
                }
                label(Control1000000187)
                {
                    CaptionClass = Text19080015;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[28,2]"; CTH[28, 2])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                    Editable = false;
                }
                field("CTH[29,2]"; CTH[29, 2])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                    Editable = false;
                }
                field("CTH[30,2]"; CTH[30, 2])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                }
                field("CTH[31,2]"; CTH[31, 2])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                }
                field("CTH[32,2]"; CTH[32, 2])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                }
                label(Control1000000232)
                {
                    CaptionClass = Text19015041;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[33,2]"; CTH[33, 2])
                {
                    BlankZero = true;
                    Caption = 'LRG';
                    Editable = false;
                }
                field("CTH[34,2]"; CTH[34, 2])
                {
                    BlankZero = true;
                    Caption = 'MED';
                    Editable = false;
                }
                field("CTH[35,2]"; CTH[35, 2])
                {
                    BlankZero = true;
                    Caption = 'SML';
                    Editable = false;
                }
                label(Control1000000151)
                {
                    CaptionClass = Text19080017;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[36,2]"; CTH[36, 2])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                    Editable = false;
                }
                field("CTH[37,2]"; CTH[37, 2])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                }
                field("CTH[38,2]"; CTH[38, 2])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                }
                field("CTH[39,2]"; CTH[39, 2])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                }
                field("CTH[40,2]"; CTH[40, 2])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                }
                label(Control1000000153)
                {
                    CaptionClass = Text19005931;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[22,3]"; CTH[22, 3])
                {
                    BlankZero = true;
                    Caption = '60 - 80';
                }
                field("CTH[23,3]"; CTH[23, 3])
                {
                    BlankZero = true;
                    Caption = '80 - 100';
                }
                field("CTH[24,3]"; CTH[24, 3])
                {
                    BlankZero = true;
                    Caption = '100 - 120';
                }
                field("CTH[25,3]"; CTH[25, 3])
                {
                    BlankZero = true;
                    Caption = '120 - 150';
                }
                field("CTH[26,3]"; CTH[26, 3])
                {
                    BlankZero = true;
                    Caption = '150 - 200';
                }
                field("CTH[27,3]"; CTH[27, 3])
                {
                    BlankZero = true;
                    Caption = '150 - 200';
                }
                label(Control1000000188)
                {
                    CaptionClass = Text19080020;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[28,3]"; CTH[28, 3])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                    Editable = false;
                }
                field("CTH[29,3]"; CTH[29, 3])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                    Editable = false;
                }
                field("CTH[30,3]"; CTH[30, 3])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                    Editable = false;
                }
                field("CTH[31,3]"; CTH[31, 3])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                    Editable = false;
                }
                field("CTH[32,3]"; CTH[32, 3])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                    Editable = false;
                }
                label(Control1000000233)
                {
                    CaptionClass = Text19080022;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[33,3]"; CTH[33, 3])
                {
                    BlankZero = true;
                    Caption = 'LRG';
                    Editable = false;
                }
                field("CTH[34,3]"; CTH[34, 3])
                {
                    BlankZero = true;
                    Caption = 'MED';
                    Editable = false;
                }
                field("CTH[35,3]"; CTH[35, 3])
                {
                    BlankZero = true;
                    Caption = 'SML';
                    Editable = false;
                }
                label(Control1000000158)
                {
                    CaptionClass = Text19080023;
                    ShowCaption = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("CTH[36,3]"; CTH[36, 3])
                {
                    BlankZero = true;
                    Caption = 'U - 10';
                    Editable = false;
                }
                field("CTH[37,3]"; CTH[37, 3])
                {
                    BlankZero = true;
                    Caption = '10 - 20';
                    Editable = false;
                }
                field("CTH[38,3]"; CTH[38, 3])
                {
                    BlankZero = true;
                    Caption = '20 - 30';
                    Editable = false;
                }
                field("CTH[39,3]"; CTH[39, 3])
                {
                    BlankZero = true;
                    Caption = '30 - 40';
                    Editable = false;
                }
                field("CTH[40,3]"; CTH[40, 3])
                {
                    BlankZero = true;
                    Caption = '40 - 60';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Record")
            {
                Caption = 'Record';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    //Job Journal Batch Initialization
                    JJBatc.Init;
                    JJBatc."Journal Template Name" := 'JOB';
                    JJBatc.Name := Vessel;
                    JJBatc."Reason Code" := 'CATCH';
                    JJBatc."No. Series" := 'JJNL-GEN';
                    if not JJBatc.Insert then JJBatc.Modify;

                    //Job Journal Line Insertion
                    for I := 1 to 68 do begin
                        for J := 1 to 3 do begin
                            JJLine.Init;
                            JJLine."Journal Template Name" := JJBatc."Journal Template Name";
                            JJLine."Journal Batch Name" := JJBatc.Name;
                            JJLine."Line No." := I * 10000 + J * 100;
                            JJLine.Validate(JJLine."Job No.", "Voyage No.");
                            JJLine."Posting Date" := "Catch Date";
                            JJLine."Document No." := Vessel + Format("Catch Date");
                            JJLine.Type := JJLine.Type::Item;
                            if J = 2 then
                                ItVar := Format(I - 1) + 'A' else
                                if J = 3 then
                                    ItVar := Format(I - 1) + 'B' else
                                    ItVar := Format(I - 1);
                            if ItemRec.Get(ItVar) and (CTH[I, J] <> 0) then  //Item exist and catch not equal to zero
                            begin
                                JJLine.Validate(JJLine."No.", ItVar);
                                JJLine.Validate(JJLine.Catch, CTH[I, J]);
                                JJLine.Validate(JJLine."Location Code", Vessel);
                                JJLine.Validate(JJLine."Unit Price (LCY)", ItemRec.Points);
                                if not JJLine.Insert then JJLine.Modify;
                            end;
                        end;
                    end;
                end;
            }
        }
    }

    var
        JobRec: Record Job;
        ItemRec: Record Item;
        JJTemp: Record "Job Journal Template";
        JJBatc: Record "Job Journal Batch";
        JJLine: Record "Job Journal Line";
        CTH: array[86, 3] of Integer;
        I: Integer;
        J: Integer;
        ItVar: Code[10];
        "Voyage No.": Code[10];
        Vessel: Code[10];
        "Catch Date": Date;
        "Business Units Code": Integer;
        "Fishing Ground": Text[30];
        "Sea Temperature": Decimal;
        Text19015995: Label 'White HOn';
        Text19026203: Label 'Brown HOn';
        Text19018967: Label 'Code';
        Text19080001: Label 'Code';
        Text19033624: Label '2 - Kgs';
        Text19080002: Label '2 - Kgs';
        Text19057214: Label 'Var. A';
        Text19080003: Label 'Var. A';
        Text19056505: Label 'Cuttle Fish';
        Text19080004: Label 'Code';
        Text19080005: Label '2 - Kgs';
        Text19001973: Label 'Wild Tiger';
        Text19080006: Label 'Code';
        Text19080007: Label '2 - Kgs';
        Text19046184: Label 'Crab';
        Text19080008: Label 'Code';
        Text19080009: Label '2 - Kgs';
        Text19065088: Label 'Other Exports';
        Text19080010: Label 'Code';
        Text19026339: Label 'B 10 - Kgs';
        Text19025899: Label 'Headless';
        Text19080011: Label 'Code';
        Text19080012: Label '2 - Kgs';
        Text19033601: Label '1 - Kgs';
        Text19080013: Label '1 - Kgs';
        Text19071678: Label 'Var. B';
        Text19080014: Label 'Var. B';
        Text19080015: Label '1 - Kgs';
        Text19080016: Label '1 - Kgs';
        Text19015041: Label '_';
        Text19080017: Label '2 - Kgs';
        Text19080018: Label '1 - Kgs';
        Text19005931: Label '0.5 - Kgs';
        Text19080019: Label '0.5 - Kgs';
        Text19080020: Label '0.5 - Kgs';
        Text19080021: Label '0.5 - Kgs';
        Text19080022: Label '_';
        Text19080023: Label '_';
        Text19080024: Label '0.5 - Kgs';
}

