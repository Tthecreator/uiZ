function uiz_compatibility_mouseband_beginstep() {
	var pir=point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx,min(cntnx,cntnlx)),max(ry,min(cntny,cntnly)),min(rlx,max(cntnlx,cntnx)),min(rly,max(cntnly,cntny)))
	if (mouseover=0 or mouseovermydepth>depth) and pir then{mouseover=id mouseovermydepth=depth}
	globalvar mouseoverobject,mouseoverobjectmydepth;
	if (mouseoverobject=0 or mouseoverobjectmydepth>depth) and pir then{mouseoverobject=id mouseoverobjectmydepth=depth}




}
