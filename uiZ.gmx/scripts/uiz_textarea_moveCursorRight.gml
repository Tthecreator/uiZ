if uiz_textarea_moveCursorBoundsCheck() then{exit;}

var line = textList[| selection1Line];
var linesz = string_length(line);
if string_char_at(line,linesz)==chr($0A) then{
--linesz;//don't count the last newline character
}
if string_char_at(line,linesz)==chr($0D) then{
--linesz;//don't count the second to last last newline character
}

if selection1Char>=linesz then{
    if selection1Line<ds_list_size(textList)-1 then{//prevent move outside bounds
    //move one line down
    ++selection1Line;
    if linesz==0 then{//probably some edge case
       selection1Char = 0;
        selection1X = ix; 
    }else{//regular flow
        selection1Char = 1;
        selection1X = ix + string_width(string_char_at(textList[| selection1Line],1));
    }
    }
}else{//move on the same line
    ++selection1Char;
    selection1X+=string_width(string_char_at(textList[| selection1Line],selection1Char))
}
uiz_textarea_moveCursorInView();
uiz_textarea_registerTypeCursor();
