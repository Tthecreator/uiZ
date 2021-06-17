function obj_uiZ_designer_drawHalo(object){
	var rx = object.rx;
	var ry = object.ry;
	var rlx = object.rlx;
	var rly = object.rly;
	var width = object.width;
	var height = object.height;
	draw_set_color(c_white);

	thickness=5
	stripes=10

	var sw=width/(stripes*2-1)
	var sh=height/(stripes*2-1)
	var sa=(sw+sh)/2
	var stripesw=round(width/sa)
	var stripesh=round(height/sa)
	sw=width/(stripesw-1)
	sh=height/(stripesh-1)
	
	var isOverFrontUI = uiz_mouse_isOver_canvas(obj_uiZ_designer.main_area_frontUI);
	
	if isOverFrontUI {
		//draw lines in width
		if sw*stripesw+sw>width then{stripesw-=1}
		for(var i=0;i<stripesw;i+=2){
			draw_line_width(rx+sw*i,ry,rx+sw*i+sw,ry,thickness)
			draw_line_width(rx+sw*i,rly,rx+sw*i+sw,rly,thickness)
		}
		//draw lines in height
		if sh*stripesh+sh>height then{stripesh-=1}
		for(var i=0;i<stripesh;i+=2){
			draw_line_width(rx,ry+sh*i,rx,ry+sh*i+sh,thickness)
			draw_line_width(rlx,ry+sh*i,rlx,ry+sh*i+sh,thickness)
		}
	}else{
		//draw lines in width
		if sw*stripesw+sw>width then{stripesw-=1}
		for(var i=0;i<stripesw;i+=2){
			if (rx+sw*i+sw >= obj_uiZ_designer.main_area_frontUI.rlx){
				if (rx+sw*i >= obj_uiZ_designer.main_area_frontUI.rlx){break;}
				if (ry+thickness/2 > obj_uiZ_designer.main_area_frontUI.ry){draw_line_width(rx+sw*i,ry,obj_uiZ_designer.main_area_frontUI.rlx,ry,thickness);}
				if (rly-thickness/2 < obj_uiZ_designer.main_area_frontUI.rly){draw_line_width(rx+sw*i,rly,obj_uiZ_designer.main_area_frontUI.rlx,rly,thickness);}
				break;
			}
			if (ry+thickness/2 > obj_uiZ_designer.main_area_frontUI.ry){draw_line_width(rx+sw*i,ry,rx+sw*i+sw,ry,thickness);}
			if (rly-thickness/2 < obj_uiZ_designer.main_area_frontUI.rly){draw_line_width(rx+sw*i,rly,rx+sw*i+sw,rly,thickness);}
		}
		//draw lines in height
		if sh*stripesh+sh>height then{stripesh-=1}
		for(var i=0;i<stripesh;i+=2){
			if (ry+sh*i+sh >= obj_uiZ_designer.main_area_frontUI.rly){
				if (ry+sh*i >= obj_uiZ_designer.main_area_frontUI.rly){break;}
				if (rx+thickness/2 > obj_uiZ_designer.main_area_frontUI.rx){draw_line_width(rx,ry+sh*i,rx,obj_uiZ_designer.main_area_frontUI.rly,thickness);}
				if (rlx-thickness/2 < obj_uiZ_designer.main_area_frontUI.rlx){draw_line_width(rlx,ry+sh*i,rlx,obj_uiZ_designer.main_area_frontUI.rly,thickness);}
				break;
			}
			if (rx+thickness/2 > obj_uiZ_designer.main_area_frontUI.rx){draw_line_width(rx,ry+sh*i,rx,ry+sh*i+sh,thickness);}
			if (rlx-thickness/2 < obj_uiZ_designer.main_area_frontUI.rlx){draw_line_width(rlx,ry+sh*i,rlx,ry+sh*i+sh,thickness);}
		}
	}
	//draw text
	uiz_textmiddle()
	//draw_text(rx+width/2,ry+height/2,name)
	uiz_textmiddle_topleft()

	//top left corner
	if isOverFrontUI or ((rx+thickness/2 > obj_uiZ_designer.main_area_frontUI.rx) and (ry+thickness/2 > obj_uiZ_designer.main_area_frontUI.ry)) {draw_circle(rx,ry,thickness/2,0);}
	//top right corner
	if isOverFrontUI or ((rlx-thickness/2 < obj_uiZ_designer.main_area_frontUI.rlx) and (ry+thickness/2 > obj_uiZ_designer.main_area_frontUI.ry)) {draw_circle(rlx,ry,thickness/2,0);}
	//bottom left corner
	if isOverFrontUI or ((rx+thickness/2 > obj_uiZ_designer.main_area_frontUI.rx) and (rly-thickness/2 < obj_uiZ_designer.main_area_frontUI.rly)) {draw_circle(rx,rly,thickness/2,0);}
	//bottom right corner
	if isOverFrontUI or ((rlx-thickness/2 < obj_uiZ_designer.main_area_frontUI.rlx) and (rly-thickness/2 < obj_uiZ_designer.main_area_frontUI.rly)) {draw_circle(rlx,rly,thickness/2,0);}
	var bsz=max(min((width+height)/2*uiz_dp/2000,uiz_dp*0.3),10)
	var outsx=0;
	var outsy=0;
	if width<bsz*2 then{outsx=bsz}
	if height<bsz*2 then{outsy=bsz}
	//now draw the risize buttons
	//var snapToResize = 0;
	if isOverFrontUI{
		uiz_draw_squareButton_independent(rlx-bsz+outsx,rly-bsz+outsy,rlx+outsx,rly+outsy,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rx-outsx,ry-outsy,rx+bsz-outsx,ry+bsz-outsy,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rlx-bsz+outsx,ry-outsy,rlx+outsx,ry+bsz-outsy,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rx-outsx,rly-bsz+outsy,rx+bsz-outsx,rly+outsy,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rlx-bsz+outsx,ry+height/2-bsz/2,rlx+outsx,ry+height/2+bsz/2,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rx-outsx,ry+height/2-bsz/2,rx+bsz-outsx,ry+height/2+bsz/2,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rx+width/2-bsz/2,ry-outsy,rx+width/2+bsz/2,ry+bsz-outsy,c_white,c_gray,c_black,1)
		uiz_draw_squareButton_independent(rx+width/2-bsz/2,rly-bsz+outsy,rx+width/2+bsz/2,rly+outsy,c_white,c_gray,c_black,1)
	}else{//leave the button white whenever we are outside the main canvas. Also hide buttons
		if (rlx-bsz+outsx < obj_uiZ_designer.main_area_frontUI.rlx) and (rly-bsz+outsy < obj_uiZ_designer.main_area_frontUI.rly) {draw_square(rlx-bsz+outsx,rly-bsz+outsy,min(rlx+outsx,obj_uiZ_designer.main_area_frontUI.rlx),min(rly+outsy,obj_uiZ_designer.main_area_frontUI.rly),c_white,1)}//bottom-right
		if (rx+bsz-outsx > obj_uiZ_designer.main_area_frontUI.rx) and (ry+bsz-outsy > obj_uiZ_designer.main_area_frontUI.ry){draw_square(max(rx-outsx,obj_uiZ_designer.main_area_frontUI.rx),max(ry-outsy,obj_uiZ_designer.main_area_frontUI.ry),rx+bsz-outsx,ry+bsz-outsy,c_white,1)}//top-left
		if (rlx-bsz+outsx < obj_uiZ_designer.main_area_frontUI.rlx) and (ry+bsz-outsy > obj_uiZ_designer.main_area_frontUI.ry){draw_square(rlx-bsz+outsx,max(ry-outsy,obj_uiZ_designer.main_area_frontUI.ry),min(rlx+outsx,obj_uiZ_designer.main_area_frontUI.rlx),ry+bsz-outsy,c_white,1)}//top-right
		if (rx+bsz-outsx > obj_uiZ_designer.main_area_frontUI.rx) and (rly-bsz+outsy < obj_uiZ_designer.main_area_frontUI.rly){draw_square(max(rx-outsx,obj_uiZ_designer.main_area_frontUI.rx),rly-bsz+outsy,rx+bsz-outsx,min(rly+outsy,obj_uiZ_designer.main_area_frontUI.rly),c_white,1)}//bottom-left
		if (rlx-bsz+outsx < obj_uiZ_designer.main_area_frontUI.rlx){draw_square(rlx-bsz+outsx,ry+height/2-bsz/2,min(rlx+outsx,obj_uiZ_designer.main_area_frontUI.rlx),ry+height/2+bsz/2,c_white,1);}//right
		if (rx+bsz-outsx > obj_uiZ_designer.main_area_frontUI.rx){draw_square(max(rx-outsx,obj_uiZ_designer.main_area_frontUI.rx),ry+height/2-bsz/2,rx+bsz-outsx,ry+height/2+bsz/2,c_white,1)}//left
		if (ry+bsz-outsy > obj_uiZ_designer.main_area_frontUI.ry){draw_square(rx+width/2-bsz/2,max(ry-outsy,obj_uiZ_designer.main_area_frontUI.ry),rx+width/2+bsz/2,ry+bsz-outsy,c_white,1)}//top
		if (rly-bsz+outsy < obj_uiZ_designer.main_area_frontUI.rly){draw_square(rx+width/2-bsz/2,rly-bsz+outsy,rx+width/2+bsz/2,min(rly+outsy,obj_uiZ_designer.main_area_frontUI.rly),c_white,1)}//bottom
	}
	//if mouse_check_button(mb_left) and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx,ry,rlx,rly) and !point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx+thickness,ry+thickness,rlx-thickness,rly-thickness) and global.mousefrozen=0 then{snapToResize=9; global.mousefrozen=1}else{if snapToResize=9 and !mouse_check_button(mb_left) then{snapToResize=0; global.mousefrozen=0}}
	//if !uiz_postypeisvariable(object.posinframex) and (snapToResize>=1 and snaptopresize<=7) then{snapToResize=0;}
	/*
	switch(snapToResize){
	case 1: uiz_des_update_wh() break;//bottom-right
	case 2: uiz_des_update_whxy() break;//top-left
	case 3: uiz_des_update_why() break;//top-right
	case 4: uiz_des_update_whx() break;//bottom-left
	case 5: switch(setpointx){case uiz_right: uiz_des_update_wr()break; case uiz_middle: uiz_des_update_wm() break;default:uiz_des_update_w()break;} break;//right
	//case 5: uiz_des_update_w() break;//right
	case 6: switch(setpointx){case uiz_right: uiz_des_update_xr()break; case uiz_middle: uiz_des_update_xm() break;default:uiz_des_update_wx()break;} break;//left
	//case 6: uiz_des_update_wx() break;//left
	case 7: switch(setpointy){case uiz_bottom: uiz_des_update_hr()break; case uiz_middle: uiz_des_update_hm() break;default:uiz_des_update_hy()break;} break;//top
	//case 7: uiz_des_update_hy() break;//top
	case 8: switch(setpointy){case uiz_bottom: uiz_des_update_yr()break; case uiz_middle: uiz_des_update_ym() break;default:uiz_des_update_h()break;} break;//bottom
	//case 8: uiz_des_update_h() break;//bottom
	case 9: uiz_des_update_xy() break;//moveing
	}
	if snapToResize>0 then{uiz_fixchildren(object,1)}
	*/
}

function obj_uiZ_designer_checkHaloMouse(object){
	var rx = object.rx;
	var ry = object.ry;
	var rlx = object.rlx;
	var rly = object.rly;
	var width = object.width;
	var height = object.height;
	var bsz=max(min((width+height)/2*uiz_dp/2000,uiz_dp*0.3),10)
	var outsx=0;
	var outsy=0;
	if width<bsz*2 then{outsx=bsz}
	if height<bsz*2 then{outsy=bsz}
	snapToObjectRx = uiz_getmouse_x();
	snapToObjectRy = uiz_getmouse_y();
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rlx-bsz+outsx,rly-bsz+outsy,rlx+outsx,rly+outsy) then{snapToResize=1; global.mousefrozen=1; snapToObjectRx-=rlx; snapToObjectRy-=rly; return true;}//bottom-right
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx-outsx,ry-outsy,rx+bsz-outsx,ry+bsz-outsy) then{snapToResize=2; global.mousefrozen=1; snapToObjectRx-=rx; snapToObjectRy-=ry; return true;}//top-left
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rlx-bsz+outsx,ry-outsy,rlx+outsx,ry+bsz-outsy) then{snapToResize=3; global.mousefrozen=1; snapToObjectRx-=rlx; snapToObjectRy-=ry; return true;}//top-right
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx-outsx,rly-bsz+outsy,rx+bsz-outsx,rly+outsy) then{snapToResize=4; global.mousefrozen=1; snapToObjectRx-=rx; snapToObjectRy-=rly; return true;}//bottom-left
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rlx-bsz+outsx,ry+height/2-bsz/2,rlx+outsx,ry+height/2+bsz/2) then{snapToResize=5; global.mousefrozen=1; snapToObjectRx-=rlx; return true;}//right
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx-outsx,ry+height/2-bsz/2,rx+bsz-outsx,ry+height/2+bsz/2) then{snapToResize=6; global.mousefrozen=1; snapToObjectRx-=rx; return true;}//left
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx+width/2-bsz/2,ry-outsy,rx+width/2+bsz/2,ry+bsz-outsy) then{snapToResize=7; global.mousefrozen=1; snapToObjectRy-=ry; return true;}//top
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx+width/2-bsz/2,rly-bsz+outsy,rx+width/2+bsz/2,rly+outsy) then{snapToResize=8; global.mousefrozen=1; snapToObjectRy-=rly; return true;}//bottom
	if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx,ry,rlx,rly) and !point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx+thickness,ry+thickness,rlx-thickness,rly-thickness) then{snapToResize=9; global.mousefrozen=1; return true;}//move
	return (snapToResize>0);
}

function obj_uiZ_designer_handleHaloMouse(object){
	switch(snapToResize){
		case 1: uiz_des_update_w(object); uiz_des_update_h(object); break;//bottom-right
		case 2: uiz_des_update_x(object); uiz_des_update_y(object); break;//top-left
		case 3: uiz_des_update_w(object); uiz_des_update_y(object); break;//top-right
		case 4: uiz_des_update_x(object); uiz_des_update_h(object); break;//bottom-left
		case 5: uiz_des_update_w(object); break;//right
		case 6: uiz_des_update_x(object); break;//left
		case 7: uiz_des_update_y(object); break;//top
		case 8: uiz_des_update_h(object); break;//bottom
		case 9: uiz_des_update_xy(object) break;//moveing
	}
	uiz_fixgeneralpos(object);
	uiz_fixChildren(object, true);
}