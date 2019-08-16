var below;//the selector that is further into the text than the other selector (the max)
switch(sign(selection2Line-selection1Line)){
case -1://selection1Line below selection2Line
    below=1;
break;
case 1://selection2Line below
    below=2;
break;
default://on the same line
    if(selection2Char>selection1Char){
        below=2;
    }else{
        below=1;
    }
break;
}

if below=2 then{
    selectionMinLine=selection1Line;
    selectionMinX=selection1X;
    selectionMinChar=selection1Char;
    
    selectionMaxLine=selection2Line;
    selectionMaxX=selection2X;
    selectionMaxChar=selection2Char;
}else{
    selectionMaxLine=selection1Line;
    selectionMaxX=selection1X;
    selectionMaxChar=selection1Char;
    
    selectionMinLine=selection2Line;
    selectionMinX=selection2X;
    selectionMinChar=selection2Char;
}
