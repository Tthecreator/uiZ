//uiz_textarea_genMinMax();
if selection1Line!=-1 then{
if !hasSelection then{
    selection2Line=selection1Line;
    selection2Char=selection1Char;
}

var line = textList[| selection2Line];

//move cursor left
selection2Char--;
//if cursor is too far left, move a line back
if selection2Char<0 then{
    selection2Line--;
    if selection2Line<0 then{
        selection2Line=0;
        selection2Char=0;
    }else{
        //recalculate line information
        line = textList[| selection2Line];
        selection2Char = max(0,string_length(line)-1);
    }
    

}


selection2X=ix+string_width(string_copy(line,1,selection2Char));

uiz_textarea_rehandleSelectionCursor();
}


