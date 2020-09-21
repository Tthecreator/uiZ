if (acceptOnlyNumbers) then{
    var clipText = uiz_string_digits(clipboard_get_text());
    if clipText=="0" then{//check if this clip even contained any numbers at all
        if string_length(string_digits(clipboard_get_text()))==0 then{
            return "";//there were no digits in the string, so just return nothing.
        }
    }
    
    
    var textHasMinus = (string_char_at(str_real,1)=="-");
    if typepos_real==0 and textHasMinus then{return "";}
    
    var clipHasMinus = (string_char_at(clipText,1)=="-");
    var textHasDot = (string_count(".",str_real)!=0);
    
    //check to remove "-" from clip
    if clipHasMinus==true and (typepos_real>0 or textHasMinus or acceptOnlyPositive) then{//if we aren't typing at the beginning or the text already has a minus
        clipText = string_copy(clipText, 2, string_length(clipText)-1);//remove first char
        clipHasMinus = false;
    }
    
    //check to remove "." from clip
    if textHasDot or acceptOnlyIntegers then{
        clipText = string_digits(clipText);//remove all other characters except digits
        if clipHasMinus then{
            clipText = "-"+clipText;//readd clip minus
        }
    }
    return clipText;
    
}else{
    return clipboard_get_text();
}
