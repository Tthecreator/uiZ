/*
value = string_copy(value, 1, pos - 1) + string_copy(value, pos + 1, len);
uiz_textarea_qstr()

uiz_textarea_resetpos()
*/

value = string_copy(value, 1, pos - 2 +argument0) + string_copy(value, pos + argument0, len);

if argument0 then{
pos = min(pos, len)
}else{
pos = max(0, pos - 1)
}

//var qstrsz = string_length(qstr);
//qstr = string_copy(qstr, 1, qstrpos - 2) + string_copy(qstr, qstrpos , qstrsz);
/*
var extraLineWidth = 0;
//var lineHasSpace = false;
for(var i=qstrpos;i<=qstrsz;i++){
var c = string_char_at(qstr,i);
//if lineHasSpace = false && uiz_isSpaceChar(c) then{
//    lineHasSpace=true;
//}
if c='#' or c=chr($0A) then{
    break;
}
extraLineWidth+=string_width(c);
}
*/
/*TODO: Instead of always resetting the view try:
* - add word on next line to this line if it fits
* - add chars from next line to this line if the current word is longer than one line
* - add current word to last line if it fits on the last line
*/


//if lineHasSpace = false then{
uiz_textarea_resetpos();

uiz_updater_FixViews_area(ix,iy+(posline-1)*(lsz),ilx,ily);

//}


