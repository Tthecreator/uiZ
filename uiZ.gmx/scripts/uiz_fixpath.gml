///uiz_fixpath(filepath)
//returns fixed path
//changes some things to file paths like changing / to \ andd adding an extra \ to the end
var ret=argument0
repeat(string_count("/",argument0)){
ret=string_replace(argument0,"/","\")
}
if string_char_at(ret,string_length(ret))!="\" then{ret+="\"}
return ret;
