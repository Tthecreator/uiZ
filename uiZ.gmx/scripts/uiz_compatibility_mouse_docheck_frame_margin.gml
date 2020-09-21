//gml_pragma("forceinline");
if enablemousecheck=true and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx,cntnx)-argument0,max(ry,cntny)-argument1,min(rlx,cntnlx)+argument2,min(rly,cntnly)+argument3) then{
global.mouseover=id;
global.mouseovermydepth=depth;
if (scrolly=true or scrollx=true) then{
global.mouseoverscrollable=id; global.mouseoverscrollablemydepth=depth}
global.mouseoverframe=id global.mouseoverframemydepth=depth

}



