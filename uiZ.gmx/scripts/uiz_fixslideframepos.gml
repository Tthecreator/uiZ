var t=argument0;
with(t){
if setpointx=uiz_auto and setpointy=uiz_auto then{
if inanim=1 then{
switch(posinframex){
case uiz_snapleft:
setpointx=uiz_left
break;
case uiz_snapright:
setpointx=uiz_right
break;
default:

switch(posinframey){
case uiz_snaptop:
setpointy=uiz_top
break;
case uiz_snapbottom:
setpointy=uiz_bottom
break;
}

break;
}

}else{
switch(posinframex){
case uiz_snapleft:
setpointx=uiz_right
break;
case uiz_snapright:
setpointx=uiz_left
break;
default:

switch(posinframey){
case uiz_snaptop:
setpointy=uiz_bottom
break;
case uiz_snapbottom:
setpointy=uiz_top
break;
}

break;
}
}
}
posmode = uiz_null;
posmult = 1;
posbool = 1;
if posinframex=uiz_snapleft then{
posmode = uiz_horizontal;
}else{
if posinframex=uiz_snapright then{
posmode = uiz_horizontal;
posmult = -1;
posbool = 0;
}else{
if posinframey=uiz_snaptop then{
posmode = uiz_vertical;
}else{
if posinframey=uiz_snapbottom then{
posmode = uiz_vertical;
posmult = -1;
posbool = 0;
}else{
sdbm("[uiZ|Error]slideframe object not correctly snapped to side of object!")
exit;//no correct snapping found
}
}
}
}
if posmode = uiz_horizontal then{
mw=uiz_getposx_self(menumousecoversize,menumousecoversizetype)/2
mmms = uiz_getposx_self(mouseMinMoveSpeed,mouseMinMoveSpeedType);
}else{
mw=uiz_getposy_self(menumousecoversize,menumousecoversizetype)/2
mmms = uiz_getposy_self(mouseMinMoveSpeed,mouseMinMoveSpeedType);
}

uiz_fixframepos(id);
}

