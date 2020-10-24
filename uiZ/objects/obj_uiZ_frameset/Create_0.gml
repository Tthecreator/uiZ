/// @description #define uiZ
//#sprite images
//#spritenum 15
//#objectversion 1.0
uiz_objinit()

draw=0
mark=0
markcolor=c_black
marginl=0
marginr=0
margint=0
marginb=0
margincellw=0
margincellh=0
headframe=uiz_frame_create()
uiz_setParent(headframe,id)
master=id
headframe.master=master
divisions=0
frameat=0
snaptoparent=1
automargins=true;
posinframex=uiz_fill;
posinframey=uiz_fill;


/*
///#define uiZ
//#sprite images
//#spritenum 15
width=0
height=0
rx=0
ry=0
gridw=0
gridh=0
snaptoparent=1
//parent=0
children=-10
listpos=-1
uiz_initparent()

draw=0
mark=0
markcolor=c_black
marginl=0
marginr=0
margint=0
marginb=0
margincellw=0
margincellh=0
headframe=uiz_frame_create()
uiz_setParent(headframe,id)

//if headframe=100028 then{var k=100028;
//dbm(k.listpos,k.parent)}
//dbm(headframe,headframe.listpos)
master=id
headframe.master=master
divisions=0
addx=0
addy=0

/* */
/*  */
