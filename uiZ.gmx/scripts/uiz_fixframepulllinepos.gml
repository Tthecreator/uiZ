var t=argument0;
with(t){
//uiz_fixpositioninframe()
if orientation=uiz_horizontal then{
x=0
width=parent.width
//get the y of the frames
var h=0;
for(i=0;i<=0;i++){h+=parent.isz[i]}
y=h
height=thickness
}else{
y=0
height=parent.width
//get the y of the frames
var h=0;
for(i=0;i<=0;i++){h+=parent.isz[i]}
x=h
width=thickness
}
lx=x+width+parent.addx
ly=y+height+parent.addy
rx=parent.rx+x+parent.addx
ry=parent.ry+y+parent.addy
rlx=parent.rx+lx
rly=parent.ry+ly
sx=rx;
sy=ry;
slx=rlx;
sly=rly;
inframe=uiz_insideframe()
uiz_compatibility_depthfix()
main_alpha=head_alpha*parent.main_alpha
alpha=image_alpha*main_alpha
topframemargin=uiz_getposy_self(topmargin,topmargintype)
bottomframemargin=uiz_getposy_self(bottommargin,bottommargintype)
leftframemargin=uiz_getposx_self(leftmargin,leftmargintype)
rightframemargin=uiz_getposx_self(rightmargin,rightmargintype)
}

