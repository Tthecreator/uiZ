//#define uiZ
//#sprite images
//#spritenum 3
//#objectversion 1.0
//#exclude
uiz_objinit()
//put init variables here
tablist=-1
destroytablist=true//b//destroy ds list when done//
spacinglist=ds_list_create();
font=-1//f//font//
textcolor=c_black//c//text color//
halign=fa_center//v//halign//
valign=fa_center//v//valign//
oldvalue=0;
value=0//v//tabnumber//
linearinter=0
animationtime=0.5//v//animationtime in seconds//
placeanimation=uiz_circular_in//moving animation//
widthanimation=uiz_circular_in//sizing animation//
marksize=0.1//v//marker height//
marksizetype=fc//z//marker height type//
markcolor=c_white//c//marker color//
mouseoncolor=c_ltgray//c//mouse over color//
mouseincolor=c_white//c//mouse click color//
mouseonalpha=0.2//v//mouse over alpha//
mouseinalpha=0.2//v//mouse click alpha//

newwidth=0;
newpos=0;
placevalue=0;
widthvalue=0;
//lastgowhat=0;
//gowhat=0;
forceinanimation=false
//doanimation=false
//getlist=true;
update=false;
updated=false;
lastMouseItem=-1;
lastMouseV = 0;
lastMouseoV = 0;
mouseItem=-1;
mouseV = 0;
mouseOv = 0;
oldTabPos=0;
oldTabWidth=0;
newTabPos=0;
newTabWidth=0;
tabY=0;
updateBar=false;
oldwidth=width;
oldx=0;
oldsz=0;
goback=false;

