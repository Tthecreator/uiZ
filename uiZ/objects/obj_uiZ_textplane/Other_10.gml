//update=0;
//updated=0
//draw_debugpoint(slx-scblwidth,10,c_green)
if uiz_cntn() then{
draw_set_color(textcolor)
//draw background
draw_square(rx,ry,rlx,rly,c_white,alpha)
//setup text settings
draw_set_valign(fa_top)
draw_set_halign(fa_left)

//draw the selection background
var lns=selpmaxline-selpminline

if lns>0 then{
//first line
draw_square(rx+selpxmin,ry+selpminline*lsz,rlx,ry+(selpminline+1)*(lsz),selectbackcolor,alpha)
//last line
draw_square(rx,ry+selpmaxline*lsz,rx+selpxmax,ry+(selpmaxline+1)*(lsz),selectbackcolor,alpha)
if lns>1 then{
//middle lines
draw_square(rx,ry+(selpminline+1)*(lsz),rlx,ry+selpmaxline*lsz,selectbackcolor,alpha)
}
}else{
//first line
draw_square(rx+selpxmin,ry+selpminline*lsz,rx+selpxmax,ry+(selpminline+1)*(lsz),selectbackcolor,alpha)
//draw_debugpoint(selpxmin,0,c_red)
//draw_debugpoint(selpxmax,0,c_blue)
}
draw_text(rx,ry,string_hash_to_newline(qstr))
if pos>0 and hasselection=false and posline>0 and posline*lsz<height then{
count+=1/(countspeed*room_speed);
if count>=1 then{count=0}
if count<0.5 then{
var anim=uiz_animation_getFunction(count*2,typeanimationin)
}else{
var anim=1-uiz_animation_getFunction((count-0.5)*2,typeanimationout)}
draw_set_alpha(anim*alpha)
draw_set_color(typecolor)
draw_line(rx+posx,ry+(posline)*lsz,rx+posx,ry+(posline+1)*lsz)
}
draw_set_alpha(1)
//draw scrollbar
if doscroll=true then{
scroll=uiz_drawscrollbar_vertical_legacy(rlx-scblwidth,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbartexturemode,scroll,scrolllines,true,scrollspeed)
}

uiz_containend()
}

