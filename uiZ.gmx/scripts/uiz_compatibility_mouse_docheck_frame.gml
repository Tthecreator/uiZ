//gml_pragma("forceinline");
if enablemousecheck=true and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx,cntnx),max(ry,cntny),min(rlx,cntnlx),min(rly,cntnly)) then{
global.mouseover=id;
global.mouseovermydepth=depth;
if (scrolly=true or scrollx=true) then{
global.mouseoverscrollframe=id; global.mouseoverscrollframemydepth=depth}
global.mouseoverframe=id global.mouseoverframemydepth=depth

}



