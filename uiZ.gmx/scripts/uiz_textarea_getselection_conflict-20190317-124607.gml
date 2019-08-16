with(argument0){
if hasselection=true then{

if selectionMaxLine=selectionMinLine then{
return string_copy(textList[| selectionMinLine],selectionMinChar+1,selectionMaxChar-selectionMinChar);
}else{
//add first line part
var ret = string_copy(textList[| selectionMinLine],selectionMinChar+1,string_length(textList[| selectionMinLine])-selectionMinChar);

//add mid part
for(var i=selectionMinLine+1;i<selectionMaxLine;i++){
ret+=textList[| i];
}

//add last line part
ret+=string_copy(textList[| selectionMinLine],selectionMaxChar+1,string_length(textList[| selectionMinLine]));
}

}else{
return "";
}
}
