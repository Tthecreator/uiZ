//#define uiZ
//#sprite images
//#spritenum 2
//#objectversion 1.0
uiz_objinit()
draw=0//b//draw//
mark=0//b//mark//
markcolor=irandom(255*255*255)//c//markcolor//
iscover=0//b//iscover//
fromx=0
fromy=0
tox=0
toy=0
numberofobjects=0
totobjects=0
curobjects=0
itemsz[0]=0
scrollway=uiz_vertical
itempxsize=0
lastuppoint=0
scrolledlast=0
snapbackanimationcount=0
snapbackanimation=uiz_exponential_out
snapbackanimationspeed=0.1

/*
///#define uiZ
//#sprite images
//#spritenum 2
width=0
height=0
lx=x+width
ly=y+height
//parent=obj_uiZ_controller
children=-1
listpos=-1
uiz_initparent()
rx=parent.rx+x
ry=parent.ry+y
rlx=parent.rx+lx
rly=parent.ry+ly
snaptoparent=1
//draw=0
//mark=0
//markcolor=c_black
draw=0
mark=1
markcolor=irandom(255*255*255)
//setup list
//children=ds_list_create()
inlistpos=0
iscover=0
fromx=0
fromy=0
tox=0
toy=0
inframe=0
addx=0
addy=0
containframe=-1
numberofobjects=0
totobjects=0
curobjects=0
itemsz[0]=0
scrollway=uiz_vertical
itempxsize=0
lastuppoint=0
scrolledlast=0
snapbackanimationcount=0
snapbackanimation=uiz_exponential_out
snapbackanimationspeed=0.1

/* */
/*  */
