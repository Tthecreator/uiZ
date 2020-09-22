if hasmouse=true then{
update=true;
if mouse_check_button(mb_left) then{
//move button
posinframex=uiz_static
posinframey=uiz_static
x-=global.lastmousemovedx
y-=global.lastmousemovedy
switch(keepinsidemode){
case 1:
x=clamp(x,0-width/2,parent.iwidth-width/2)
y=clamp(y,0-height/2,parent.iheight-height/2)
break;
case 2:
x=clamp(x,max(0,parent.cntnrx-parent.ix)+width/2,min(parent.iwidth,parent.ilx-parent.cntnrlx)-width/2)
y=clamp(y,max(0,parent.cntnry-parent.iy)+height/2,min(parent.iheight,parent.ily-parent.cntnrly)-height/2)
break;
}
uiz_fixgeneralpos(id)
}else{hasmouse=false; global.mousefrozen=false}
}else{update=false;}
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)
if kmouseover>1 and global.uiz_mouseswipeclick=true then{hasmouse=true global.mousefrozen=true;
}}

