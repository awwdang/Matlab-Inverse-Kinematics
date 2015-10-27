sRate = 0;
sDens = 0;
sHori = 0;
sVert = 0;
sBend = 0;
sCfm = 0;
sPsi = 0;
sBhp = 0;
sPipe = 0;

size = 0;
loss = 0;
dia = 0;
cfm = 0;
sPickup =0;
I = 0;
J = 0;


stube = [2.0, 2.1, 2.5, 2.6, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6, 6.5];

sCfm = 400;

switch dia
    case 2
        sCfm = 100;
        size = 216;
        loss = 16;
        dia = 1.948;
    case 2.1
        sCfm = 140;
        size = 210;
        loss = 15;
        dia = 2.157;
    case 2.5
        sCfm = 170;
        size = 2.516;
        loss = 14;
    case 2.6
        sCfm = 210;
        size = 2.51;
        loss = 13;
        dia = 2.635;
    case 3
        sCfm = 250;
        size = 316;
        loss = 12;
        dia = 2.948;
    case 3.5
        sCfm = 320;
        size = 310;
        loss = 11;
        dia = 3.26;
    case 4
        sCfm = 450;
        size = 416;
        loss = 10;
        dia = 3.948;
    case 4.5
        sCfm = 540;
        size = 410;
        loss = 9;
        dia = 4.26;
    case 5
        sCfm = 750;
        size = 516;
        loss = 8;
        dia = 4.98;
    case 5.5
        sCfm = 840;
        size = 510;
        loss = 7;
        dia = 5.3;
    case 6
        sCfm = 990;
        size = 616;
        loss = 6;
        dia = 5.95; 
    case 6.5
        sCfm = 1210;
        size = 610;
        loss = 5.5;
        dia = 6.361;
end select    
        
        