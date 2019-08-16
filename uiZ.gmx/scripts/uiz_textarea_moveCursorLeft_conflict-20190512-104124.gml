//break on no selection
if uiz_textarea_moveCursorBoundsCheck() then{exit;}

if selection1Char==0 then{//move one line up
    if selection1Line>0{//prevent out of bounds
    --selection1Line;
    var line = textList[| selection1Line];
    selection1Char = string_length(line) - 1;
    selection1X = ix + string_width(string_copy(line,1,selection1Char));
    }
}else{//move on the same line
    selection1X-=string_width(string_char_at(textList[| selection1Line],selection1Char))
    --selection1Char;
}

uiz_textarea_registerTypeCursor();
