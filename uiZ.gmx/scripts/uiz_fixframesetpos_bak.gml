///uiz_fixframesetpos(frameset)
var g=argument0;
//if g=100027 then{show_message("hi")}
with(g){
/*
if snaptoparent=1 then{
width=parent.width
height=parent.height
}
*/
uiz_fixpositioninframe()
lx=x+width
ly=y+height
rx=parent.rx+x
ry=parent.ry+y
rlx=parent.rx+lx
rly=parent.ry+ly
sx=rx;
sy=ry;
slx=rlx;
sly=rly;
depth=parent.depth-1-adddepth
main_alpha=head_alpha*parent.main_alpha
alpha=image_alpha*main_alpha
cntnx=parent.cntnx
cntny=parent.cntny
cntnlx=parent.cntnlx
cntnly=parent.cntnly
uiz_fixchildren(id,1)
}

with(g.headframe){
/*
if snaptoparent=1 then{
width=parent.width
height=parent.height
}
*/
lx=x+width
ly=y+height
rx=parent.rx+x
ry=parent.ry+y
rlx=parent.rx+lx
rly=parent.ry+ly
depth=parent.depth-1-adddepth
if object_index=obj_uiZ_framerowanchor then{
uiz_framesetfixhorizontal(id)
}
if object_index=obj_uiZ_framecolanchor then{
uiz_framesetfixvertical(id)
}
topframemargin=uiz_getposy_self(topmargin,topmargintype)
bottomframemargin=uiz_getposy_self(bottommargin,bottommargintype)
leftframemargin=uiz_getposx_self(leftmargin,leftmargintype)
rightframemargin=uiz_getposx_self(rightmargin,rightmargintype)
}


