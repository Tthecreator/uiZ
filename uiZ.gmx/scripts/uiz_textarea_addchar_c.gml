/*
var currententerpos = enterpos;
value=uiz_addchar(value,pos,argument0)
pos=min(pos+string_length(argument0),len)
//uiz_textarea_qstr()
uiz_textarea_resetpos()
if enterpos!=currententerpos then{
qstrpos++;
}

*/



var extraLineWidth = 0;
var qstrsz = string_length(qstr);
for(var i=qstrpos;i<=qstrsz;i++){
var c = string_char_at(qstr,i);
if c='#' or c=chr($0A) then{
    break;
}
extraLineWidth+=string_width(c);
}

value=uiz_addchar(value,pos-1,argument0)

var addend = argument0+string_copy(qstr,qstrpos+1,len)
qstr = string_copy(qstr,0,qstrpos)+addend;
//qstr=uiz_addchar(qstr,qstrpos,argument0)//the same as the two lines above, just not broken down

var arg0Len = string_length(argument0);

pos=min(pos+arg0Len,len)
qstrpos=min(qstrpos+arg0Len,string_length(qstr)+1)
vpos=min(vpos+arg0Len,len);


oldposx=posx;
posx+=string_width(argument0);
var redrawCurrentLine=false;
var oldposline=posline;

if (posx+extraLineWidth>=iwidth-scblwidth*doscroll) then{
uiz_textarea_resetpos();
if posline!=oldposline then{
uiz_updater_FixViews();//temp for debug
}else{
redrawCurrentLine=true;
}
}else{
redrawCurrentLine=true;
}
if redrawCurrentLine=true then{
qstr_lineMidEnd="";
qstr_lineBeg="";
//find newline in addend
var addendLen = string_length(addend);
for(var i=1;i<=addendLen;i++){
    var c = string_char_at(addend,i);
    if (c='#' || c=chr($0A)){
        break;
    }
    qstr_lineBeg+=c;
}
uiz_updater_FixViews_area_selfmarked(ix+oldposx,iy+(posline)*lsz,ilx,iy+(posline+1)*lsz)
if posline=oldposline then{
//increase i by just a bit to get rid of the newlines
if i<addendLen && c=chr($0A){
i++;
c = string_char_at(addend,i);
if c!=chr($0D) then{
i--;
}
}
qstr_lineMidEnd = string_copy(addend,i+1,addendLen-i);
uiz_updater_FixViews_area_selfmarked(ix,iy+(posline+1)*lsz,ilx,ily)
}

}

//uiz_textarea_qstr()
//uiz_textarea_resetpos()




