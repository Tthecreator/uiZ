if selection1Line!=-1 then{
var line = textList[| selection1Line];
var lineln = string_length(line);
    if selection1Char==lineln then{
        hasSelection=false;
        isTyping=true;
    }else{
    //uiz_textarea_genMinMax();
    hasSelection=true;
    isTyping=false;
    selection2X=string_width(line)+ix;
    selection2Char=lineln;
    if selection2Line=-1 then{
        selection2Line=selection1Line
    }
    uiz_typecursor_deregister();
    uiz_textarea_calculateNewView(false);
    }
}