function uiz_des_update_w(object){
	with(object){
		var oldWidth = width;
		width = max(0,uiz_getmouse_x() - rx + (rsnapToObjectX));
		posvalw=uiz_pixelsToValX(posvalwtype, width, id)

		posvalx=max(posvalx-uiz_pixelsToValX(object.posinframex, width - oldWidth, id)*max(0,setpointx),0)
	}
}

function uiz_des_update_h(object){
	with(object){
		var oldHeight = height;
		height = max(0,uiz_getmouse_y() - ry);
		posvalh=uiz_pixelsToValY(posvalhtype, height, id)

		posvaly=max(posvaly-uiz_pixelsToValY(object.posinframey, height - oldHeight, id)*max(0,setpointy),0)
	}
}

function uiz_des_update_x(object){
	with(object){
		var oldWidth = width;
		width = max(0, rlx - uiz_getmouse_x());
		posvalw=uiz_pixelsToValX(posvalwtype, width, id)

		posvalx=max(posvalx-uiz_pixelsToValX(object.posinframex, width - oldWidth, id)*(1-max(0,setpointx)),0)
	}
}

function uiz_des_update_y(object){
	with(object){
		var oldHeight = height;
		height = max(0, rly - uiz_getmouse_y());
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