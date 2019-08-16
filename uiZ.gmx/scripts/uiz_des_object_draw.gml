/*
rx=object.rx
ry=object.ry
rlx=object.rlx
rly=object.rly
*/
//posvalxtype=px
//posvalytype=px
//x=(object.rx-obj_uiz_designer.af.rx)//+parent.rx
//y=(object.ry-obj_uiz_designer.af.ry)//+parent.ry
//draw_debugpoint(object.rx,object.ry,c_green)
//draw_debugpoint(object.rx+parent.rx,object.ry+parent.ry,c_blue)
//x=object.rx-parent.rx
//y=object.ry-parent.ry
//width=object.width
//height=object.height
//uiz_fixgeneralpos(id)
draw_set_color(c_white)
rx=(object.rx-obj_uiz_designer.af.rx)+parent.rx
ry=(object.ry-obj_uiz_designer.af.ry)+parent.ry
rlx=rx+object.width
rly=ry+object.height
setpointx=object.setpointx
setpointy=object.setpointy
/*
cntnx=parent.rx
cntny=parent.ry
cntnlx=parent.rlx
cntnly=parent.rly
*/
/*
cntnx=obj_uiz_designer.af.rx
cntny=obj_uiz_designer.af.ry
cntnlx=obj_uiz_designer.af.rlx
cntnly=obj_uiz_designer.af.rly
*/
if uiz_cntn(){
if init=1 then{
thickness=5
stripes=10

var sw=width/(stripes*2-1)
var sh=height/(stripes*2-1)
var sa=(sw+sh)/2
var stripesw=round(width/sa)
var stripesh=round(height/sa)
sw=width/(stripesw-1)
sh=height/(stripesh-1)
//draw lines in width
if sw*stripesw+sw>width then{stripesw-=1}
for(var i=0;i<stripesw;i+=2){
draw_line_width(rx+sw*i,ry,rx+sw*i+sw,ry,thickness)
draw_line_width(rx+sw*i,rly,rx+sw*i+sw,rly,thickness)
}
//draw lines in height
if sh*stripesh+sh>height then{stripesh-=1}
for(var i=0;i<stripesh;i+=2){
draw_line_width(rx,ry+sh*i,rx,ry+sh*i+sh,thickness)
draw_line_width(rlx,ry+sh*i,rlx,ry+sh*i+sh,thickness)
}
//draw text
uiz_textmiddle()
draw_text(rx+width/2,ry+height/2,name)
uiz_textmiddle_topleft()

//top left corner
draw_circle(rx,ry,thickness/2,0)
//top right corner
draw_circle(rlx,ry,thickness/2,0)
//bottom left corner
draw_circle(rx,rly,thickness/2,0)
//bottom right corner
draw_circle(rlx,rly,thickness/2,0)
var bsz=max(min((width+height)/2*uiz_dp/2000,uiz_dp*0.3),10)
var outsx=0;
var outsy=0;
if width<bsz*2 then{outsx=bsz}
if height<bsz*2 then{outsy=bsz}
//now draw the risize buttons
if uiz_draw_squarebutton_independent(rlx-bsz+outsx,rly-bsz+outsy,rlx+outsx,rly+outsy,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=1; global.mousefrozen=1}else{if snaptoresize=1 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rx-outsx,ry-outsy,rx+bsz-outsx,ry+bsz-outsy,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=2; global.mousefrozen=1}else{if snaptoresize=2 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rlx-bsz+outsx,ry-outsy,rlx+outsx,ry+bsz-outsy,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=3; global.mousefrozen=1}else{if snaptoresize=3 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rx-outsx,rly-bsz+outsy,rx+bsz-outsx,rly+outsy,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=4; global.mousefrozen=1}else{if snaptoresize=4 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rlx-bsz+outsx,ry+height/2-bsz/2,rlx+outsx,ry+height/2+bsz/2,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=5; global.mousefrozen=1}else{if snaptoresize=5 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rx-outsx,ry+height/2-bsz/2,rx+bsz-outsx,ry+height/2+bsz/2,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=6; global.mousefrozen=1}else{if snaptoresize=6 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rx+width/2-bsz/2,ry-outsy,rx+width/2+bsz/2,ry+bsz-outsy,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=7; global.mousefrozen=1}else{if snaptoresize=7 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if uiz_draw_squarebutton_independent(rx+width/2-bsz/2,rly-bsz+outsy,rx+width/2+bsz/2,rly+outsy,c_white,c_gray,c_black,1)=1 and global.mousefrozen=0 then{snaptoresize=8; global.mousefrozen=1}else{if snaptoresize=8 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
if mouse_check_button(mb_left) and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx,ry,rlx,rly) and !point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx+thickness,ry+thickness,rlx-thickness,rly-thickness) and global.mousefrozen=0 then{snaptoresize=9; global.mousefrozen=1}else{if snaptoresize=9 and !mouse_check_button(mb_left) then{snaptoresize=0; global.mousefrozen=0}}
//if !uiz_postypeisvariable(object.posinframex) and (snaptoresize>=1 and snaptopresize<=7) then{snaptoresize=0;}
switch(snaptoresize){
case 1: uiz_des_update_wh() break;//bottom-right
case 2: uiz_des_update_whxy() break;//top-left
case 3: uiz_des_update_why() break;//top-right
case 4: uiz_des_update_whx() break;//bottom-left
case 5: switch(setpointx){case uiz_right: uiz_des_update_wr()break; case uiz_middle: uiz_des_update_wm() break;default:uiz_des_update_w()break;} break;//right
//case 5: uiz_des_update_w() break;//right
case 6: switch(setpointx){case uiz_right: uiz_des_update_xr()break; case uiz_middle: uiz_des_update_xm() break;default:uiz_des_update_wx()break;} break;//left
//case 6: uiz_des_update_wx() break;//left
case 7: switch(setpointy){case uiz_bottom: uiz_des_update_hr()break; case uiz_middle: uiz_des_update_hm() break;default:uiz_des_update_hy()break;} break;//top
//case 7: uiz_des_update_hy() break;//top
case 8: switch(setpointy){case uiz_bottom: uiz_des_update_yr()break; case uiz_middle: uiz_des_update_ym() break;default:uiz_des_update_h()break;} break;//bottom
//case 8: uiz_des_update_h() break;//bottom
case 9: uiz_des_update_xy() break;//moveing
}
if snaptoresize>0 then{uiz_fixchildren(object,1)}
}
uiz_containend()}else{if snaptoresize>0 then{snaptoresize=0;global.mousefrozen=0}}
