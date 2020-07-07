if selection1Line>=0 and selection1Line<ds_list_size(textList) and selection1Char==string_length(textList[|selection1Line]) and string_char_at(textList[|selection1Line],selection1Char)=chr($0A) then{
    //if our cursor is right before a newline
    --selection1Char;
    if string_char_at(textList[|selection1Line],selection1Char)=chr($0D){
        selection1Char--;
    }
}

if selection2Line>=0 and selection2Line<ds_list_size(textList) and selection2Char==string_length(textList[|selection2Line]) and string_char_at(textList[|selection2Line],selection2Char)=chr($0A) then{
    //if our cursor is right before a newline
    --selection2Char;
    if string_char_at(textList[|selection2Line],selection2Char)=chr($0D){
        selection2Char--;
    }
}
