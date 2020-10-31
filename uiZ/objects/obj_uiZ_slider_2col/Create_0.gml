//#define uiZ
//#sprite images
//#spritenum 22
//#objectversion 1.0
uiz_objinit()
color1=c_green//c//left-top color//
color2=c_red//c//right-top color//
color3=c_blue//c//left-bottom color//
color4=c_orange//c//right-bottom color//
outline=1//b//outline//
outlinewidth=1//v//outline width//
//coloroutline=c_aqua
coloroutline1=c_aqua//c//left outline color//
coloroutline2=c_orange//c//right outline color//
slidersize=0.1//v//slider knob width//
slidersizetype=fc//z//slider knob Wtype//
slidersz=uiz_getposx_self(slidersize,slidersizetype)
sliderheight=1//v//slider knob height//
sliderheighttype=fc//v//slider knob heighttype//
sliderh=uiz_getposy_self(sliderheight,sliderheighttype)
slidercolor=c_green//c//knob color//
slidercoloron=c_olive//c//knob mouse over color//
slidercolorin=c_lime//c//knob mouse pressing color//
slideralpha=1//v//knob alpha//
value=0
invalue=0
fromvalue=0
selected=0
anicount=0;
ucolor=slidercolor;
anicountspeed=0.4//v//animation count speed//
animation=1
animationtype=uiz_quadratic_out//a//knob animation//
snappoint=0;
update=0;
updated=0;

