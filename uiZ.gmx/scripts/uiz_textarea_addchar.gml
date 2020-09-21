textList[| selection1Line] = uiz_addChar(textList[| selection1Line],selection1Char,argument0)
//++selection1Char;
selection1Char += string_length(argument0)
//selection1X+=string_width(argument0);

uiz_textarea_updateTextPart(selection1Line);
