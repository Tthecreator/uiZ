if selection1Line!=-1 then{
if !hasSelection then{
    selection2Line=selection1Line;
    selection2Char=selection1Char;
}

var line = textList[| selection2Line];
var tls = ds_list_size(textList);
var linelen = string_length(line);
//move cursor left
selection2Char++;
var hasNewLine=false;
if string_char_at(line,selection2Char)=chr($0D) or string_char_at(line,selection2Char)=chr($0A) then{
    hasNewLine=true;
}
//if cursor is too far left, move a line back
if selection2Char>linelen or hasNewLine then{
    selection2Line++;
    if selection2Line>=tls then{
        selection2Line=tls-1;
        line = textList[| selection2Line];
        selection2Char=string_length(line);
    }else{
        //recalculate line information
        line = textList[| selection2Line];
        selection2Char = !hasNewLine;
    }
}


selection2X=ix+string_width(string_copy(line,1,selection2Char));

uiz_textarea_rehandleSelectionCursor();
}


