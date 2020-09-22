with (other) {
///control mouse pos and selection.
kmouseover=uiz_mouse_isOver_object_leftCheck(id)




if kmouseover<=1 or kmouseover=4 and hasmouse=true then{
hasmouse=false;
global.mousefrozen=0;
}
minpos=0;
//get selection point
if kmouseover>0 or hasmouse=true then{
//get selection line in qstr
if font>-1 then{draw_set_font(font)}
//setup stuff for loop
lsz=string_height(string_hash_to_newline("ƒF|⎲}g"))
var lan=string_length(qstr)
//check max lines
lines=0;
for(var i=0;i<=lan;i++){
if string_char_at(qstr,i)="#" or string_char_at(qstr,i)=chr($0A) then{lines++}
}
liney=clamp(floor((uiz_getmouse_y()-sy)/lsz),0,lines)

pline=0;
var plinechar=1;
//loop trough qstr to find the line
for(var i=0;i<=lan;i++){

qstrpos=0;
//check for new line
//sdbm(string_char_at(qstr,i),ord(string_char_at(qstr,i)))
if string_char_at(qstr,i)="#" or string_char_at(qstr,i)=chr($0A) then{pline++;
//if string_char_at(qstr,i)="#" then{plinechar=i+1;}else{plinechar=i;}
plinechar=i+1
}
//if on the right line
if pline=liney then{
//sdbm("exec",pline,liney)
//process the right line.
if i=0 then{var w=0}else{
//sdbm(uiz_string_copy(qstr,plinechar,i),i,plinechar)
var w=string_width(string_hash_to_newline(uiz_string_copy(qstr,plinechar,i)));
 }
//sdbm(uiz_string_copy(qstr,plinechar,i))
var sta="a"
if i<lan then{sta=string_char_at(qstr,i+1)}
if (i=0 and uiz_getmouse_x()<string_width(string_hash_to_newline(string_char_at(qstr,1)))/2) or  w>uiz_getmouse_x()-sx or sta="#" or sta=chr($0A) then{
qstrpos=i-1;
//select new pos
if kmouseover=4 and uiz_getmouse_x()<slx-scblwidth and scroll<0 then{
minpos=0
if i>1 then{
var w2=string_width(string_hash_to_newline(string_char_at(qstr,i)))
if -w2/2>uiz_getmouse_x()-sx-w then{
posx=string_width(string_hash_to_newline(uiz_string_copy(qstr,plinechar,i-1)))
minpos=1;
}else{
minpos=0
posx=w
}
}else{
minpos=0
posx=0
w=0
}

posline=liney;
//startposline=uiz_getLines(string_copy(qstr,1,lastbegscrpos));
startposline=uiz_positify(scroll)
}


//check for selection
if kmouseover=3 and uiz_getmouse_x()<slx-scblwidth and scroll<0 then{
hasmouse=true;
global.mousefrozen=true;
//sdbm(w,liney)
selpx1=w;
selp1line=liney;
}
//check second pos of selection
if hasmouse=true then{
//sdbm(w,liney)
selpx2=w;
selp2line=liney;
}
break;
}
}
}
//find the right pos inside the value string.

vpos=vadpos;
for(var i=1;i<=qstrpos;i++){
//if newline
//if ((string_char_at(qstr,i)="#" or string_char_at(qstr,i)=chr($0A))  and !(string_char_at(value,vpos)="#")or string_char_at(qstr,vpos)=chr($0A) or string_char_at(qstr,vpos)=chr($0D))
if string_char_at(qstr,i)!=string_char_at(value,vpos)
//if space
//or (string_char_at(qstr,i)=" " and string_char_at(value,vpos)!=" ")
  then{
//newlines don't match up
}else{
//characters match up
vpos++
}
}
//set selp1, selp2
if kmouseover=3 then{selp1=vpos}
if hasmouse=true then{
selp2=vpos
//set all the min and max variables to what they are supposed to be.
hasselection=true
if selp1line<selp2line then{
//p1 is first
selpminline=selp1line
selpmaxline=selp2line
selpmin=selp1;
selpmax=selp2;
selpxmin=selpx1;
selpxmax=selpx2;
}else{
if selp1line=selp2line then{
//p1 and p2 on same line
selpminline=selp1line
selpmaxline=selp2line
if selpx1<selpx2 then{
selpmin=selp1;
selpmax=selp2;
selpxmin=selpx1;
selpxmax=selpx2;
}else{
if selpx1=selpx2 then{
hasselection=false;
}
selpmin=selp2;
selpmax=selp1;
selpxmin=selpx2;
selpxmax=selpx1;
}
}else{
//p2 is first
selpminline=selp2line
selpmaxline=selp1line
selpmin=selp2;
selpmax=selp1;
selpxmin=selpx2;
selpxmax=selpx1;
}

}
//END setting min and max variables

}
if kmouseover=4 and uiz_getmouse_x()<slx-scblwidth and scroll<0 then{
pos=vpos-minpos
//uiz_textare_snappos_left()
//qpos=qstrpos
//reH
}
}


}
///check the typing
if kmouseover>0 then{uiz_set_cursor(cr_beam)}

if keyboard_check(vk_control) then{
if keyboard_check(ord("C")) then{
clipboard_set_text(uiz_string_copy(value,selpmin+1,selpmax))
}
if keyboard_check(ord("A")) then{
selp1=0
selp2=len+1
selpxmin=0;
selpmin=selp1;
selpmax=selp2;
selpminline=0;
qlen=string_length(qstr)
selpmaxline=0;
var lastat=1;
for(var i=1;i<=qlen;i++){
if string_char_at(qstr,i)="#" or string_char_at(qstr,i)=chr($0A) then{
selpmaxline+=1;
var lastat=i;
}
}
selpxmax=string_width(string_hash_to_newline(uiz_string_copy(qstr,lastat+1,qlen)));

}
}

///handle scroll
if doscroll=true then{
var fline=min(uiz_positify(scroll),scrolllines)
if oldfline!=fline then{







var linecount=1;
vadpos=1;

for(var i=1;i<=qstrsz;i++){
var c=string_char_at(qstrinfy,i)
if c=string_char_at(value,vadpos) then{
vadpos++;
}
if c="#" or c=chr($0A) or fline=0 then{
if linecount=fline or fline=0 then{
var oldi=i+sign(fline);


linecount=0;
for(var i=oldi;i<=qstrsz;i++){
var c=string_char_at(qstrinfy,i)
if c="#" or c=chr($0A) or (fline=scrolllines and i=qstrsz) then{
if linecount>=linefit-1 or (fline=scrolllines and i=qstrsz) then{
lastbegscrpos=oldi
qstr=uiz_string_copy(qstrinfy,oldi,i)
break;
}
linecount++;
}
}
break;
}

linecount++;
}
}
//reset pos
if uiz_positify(scroll)!=uiz_positify(lastscroll) then{
posline=(posline+startposline)-uiz_positify(scroll)
startposline=uiz_positify(scroll)
//here
lastscroll=scroll;
}












oldfline=fline
}
}

