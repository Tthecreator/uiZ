//break on no selection
if !isTyping then{
return true;
}

if selection1Line<0 or selection1X<0 then{
return true;
}

//check if line has issues (e.g. is outside bounds)
if selection1Line>=ds_list_size(textList) then{
    selection1Line = ds_list_size(textList)-1;
    var line = textList[| selection1Line];
    selection1Char = string_length(line);
    selection1X = ix+string_width(line);
    return true;
}

return false;
