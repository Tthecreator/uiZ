gml_pragma("forceinline");
if enablemousecheck=true and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx,cntnx),max(ry,cntny),min(rlx,cntnlx),min(rly,cntnly)) then{
global.mouseover=id;global.mouseovermydepth=depth;
global.mouseoverobject=id;global.mouseoverobjectmydepth=depth;
}



