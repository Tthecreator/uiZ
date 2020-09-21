var len = string_length(argument0)
var addToLine = "";
var beginLine = selection1Line;
for(var i=1;i<=len;++i){
    var c = string_char_at(argument0,i);
    if(c==chr($0A)){//add newline
        addToLine+=c;
        //textList[| selection1Line] = uiz_addChar(textList[| selection1Line],selection1Char,addToLine)//add text to this line
        var newText = string_copy(textList[| selection1Line],selection1Char+1,string_length(textList[| selection1Line]));//get what text should be displaced to the next line
        textList[| selection1Line] = string_copy(textList[| selection1Line],1,selection1Char) + addToLine;
        addToLine = "";
        //add a new line after this
        selection1Char=0;
        ++selection1Line;
        ds_list_insert(textList,selection1Line,newText);
        //ds_list_insert(textList,selection1Line,"");
        //ds_list_insert(textList,selection1Line,"");
        continue;   
    }
    if(i==len){
        addToLine+=c;
        textList[| selection1Line] = uiz_addChar(textList[| selection1Line],selection1Char,addToLine)//add text to this line
        selection1Char += string_length(addToLine);
        selection1X = string_width(string_copy(textList[| selection1Line],1,selection1Char));
        break;
    }
    if(c==chr($0D)){continue;}//ingore carriage return
    addToLine+=c;
}

if (beginLine!=selection1Line){
    uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(beginLine),ilx,ily);
}
uiz_textarea_updateTextPart(beginLine);

