//qstr=uiz_gettextlines_contained(value,width,height)
uiz_textarea_qstr()
//var vpos=-vadpos+1;
var vpos = 0;
var enters = 0;
//var enters=uiz_getlines(string_copy(qstr,1,posline))-1;
var enterpos = 1;
//sdbm("Converting pos to vpos")
var klen = string_length(qstr)
for (var i = 1; i <= pos-lastbegscrpos; i++){
    //if newline
    //var a=false;
    if string_char_at(qstr, i + vpos) = "#"
    or string_char_at(qstr, i + vpos) = chr($0A) then {
        enters++;
        if string_char_at(qstr, i + vpos) = "#"
        then {
            enterpos = i + vpos;
        } else {
            enterpos = vpos + 1 + i;
        }
        //a=true;
    }
    //if (a and !(string_char_at(value,i)="#" or string_char_at(value,i)=chr($0A)))
    //sdbm(string_char_at(qstr,i+vpos),string_char_at(value,i),i,i+vpos,klen)
    while (string_char_at(qstr, vpos + i) != string_char_at(value, lastbegscrpos+i)) {
    //sdbm("no newline match",string_char_at(qstr, vpos + i),string_char_at(value, lastbegscrpos+i))
        //newlines don't match up
        //sdbm("Character mismatch",string_char_at(qstr,vpos+i),string_char_at(value,i))
        vpos++;
        //safety for when i keeps decreasing and an endless loop has been created
        if vpos + i > klen then {
            sdbm("[UIZ:ERROR]ENDLESS LOOP AT uiz_textarea_resetpos. aborted.") break;
        }
    }
}
vpos += pos-lastbegscrpos
//sdbm("resettextpos",pos,vpos-1,pos+vpos)
posline = enters
//sdbm(uiz_string_copy(qstr,enterpos,pos+vpos-1),pos+vpos,pos,vpos)
//posx=string_width(uiz_string_copy(qstr,enterpos,pos+vpos))
//sdbm("checking width from",uiz_string_copy(qstr, enterpos, vpos))
posx = string_width(uiz_string_copy(qstr, enterpos, vpos))
//sdbm("script done")
