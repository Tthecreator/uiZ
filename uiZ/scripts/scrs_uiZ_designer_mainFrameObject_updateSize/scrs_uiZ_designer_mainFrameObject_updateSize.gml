function uiz_des_update_w(object){
	with(object){
		var oldWidth = width;
		width = max(0,clamp(uiz_getmouse_x() - other.snapToObjectRx, obj_uiZ_designer.main_area_canvas.rx, obj_uiZ_designer.main_area_canvas.rlx) - rx );//+ (rsnapToObjectX)
		posvalw=uiz_pixelsToValX(posvalwtype, width, id)

		posvalx=max(posvalx-uiz_pixelsToValX(object.posinframex, width - oldWidth, id)*max(0,setpointx),0)
	}
}

function uiz_des_update_h(object){
	with(object){
		var oldHeight = height;
		height = max(0,clamp(uiz_getmouse_y() - other.snapToObjectRy, obj_uiZ_designer.main_area_canvas.ry, obj_uiZ_designer.main_area_canvas.rly) - ry);
		posvalh=uiz_pixelsToValY(posvalhtype, height, id)

		posvaly=max(posvaly-uiz_pixelsToValY(object.posinframey, height - oldHeight, id)*max(0,setpointy),0)
	}
}

function uiz_des_update_x(object){
	with(object){
		var oldWidth = width;
		width = max(0, rlx - clamp(uiz_getmouse_x() - other.snapToObjectRx, obj_uiZ_designer.main_area_canvas.rx, obj_uiZ_designer.main_area_canvas.rlx));
		posvalw=uiz_pixelsToValX(posvalwtype, width, id)
		//sdbm("Setting x",posvalx, object.posinframex, width, oldWidth, uiz_pixelsToValX(object.posinframex, width - oldWidth, id), setpointx);
		posvalx=max(posvalx-uiz_pixelsToValX(object.posinframex, width - oldWidth, id)*(1-max(0,setpointx)),0)
		//sdbm("Setted x",posvalx);
	}
}

function uiz_des_update_y(object){
	with(object){
		var oldHeight = height;
		height = max(0, rly - clamp(uiz_getmouse_y() - other.snapToObjectRy, obj_uiZ_designer.main_area_canvas.ry, obj_uiZ_designer.main_area_canvas.rly));
		posvalh=uiz_pixelsToValY(posvalhtype, height, id)

		posvaly=max(posvaly-uiz_pixelsToValY(object.posinframey, height - oldHeight, id)*(1-max(0,setpointy)),0)
	}
}

function uiz_des_update_xy(object){
	with(object){
		posvalx=max(posvalx-uiz_pixelsToValX(object.posinframex, global.lastmousemovedx, id)*(1-max(0,setpointx)),0)
		posvaly=max(posvaly-uiz_pixelsToValY(object.posinframey, global.lastmousemovedy, id)*(1-max(0,setpointy)),0)
	}
}