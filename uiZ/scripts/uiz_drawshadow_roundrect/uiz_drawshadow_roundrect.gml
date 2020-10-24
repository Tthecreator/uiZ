function uiz_drawshadow_roundrect() {
	//shadow=true;
	if shadow=true then{

	var aL=uiz_getposx_self(shadowL,shadowLtype)
	var aR=uiz_getposx_self(shadowR,shadowRtype)
	var aT=uiz_getposx_self(shadowT,shadowTtype)
	var aB=uiz_getposx_self(shadowB,shadowBtype)
	//top
	if aT>0 then{
	draw_primitive_begin(pr_trianglestrip)
	draw_vertex_colour(rx,ry-aT,c_gray,0)//left top
	draw_vertex_colour(rlx,ry-aT,c_gray,0)//right top
	draw_vertex_colour(rx,ry,c_gray,0.5)//left bottom
	draw_vertex_colour(rlx,ry,c_gray,0.5)//right bottom
	draw_primitive_end()
	}
	//bottom
	if aB>0 then{
	draw_primitive_begin(pr_trianglestrip)
	draw_vertex_colour(rx,rly,c_gray,0.5)//left top
	draw_vertex_colour(rlx,rly,c_gray,0.5)//right top
	draw_vertex_colour(rx,rly+aB,c_gray,0)//left bottom
	draw_vertex_colour(rlx,rly+aB,c_gray,0)//right bottom
	draw_primitive_end()
	}
	//right
	if aR>0 then{
	draw_primitive_begin(pr_trianglestrip)
	draw_vertex_colour(rlx,ry,c_gray,0.5)//left top
	draw_vertex_colour(rlx+aR,ry,c_gray,0)//right top
	draw_vertex_colour(rlx,rly,c_gray,0.5)//left bottom
	draw_vertex_colour(rlx+aR,rly,c_gray,0)//right bottom
	draw_primitive_end()
	}
	//left
	if aL>0 then{
	draw_primitive_begin(pr_trianglestrip)
	draw_vertex_colour(rx-aL,ry,c_gray,0)//left top
	draw_vertex_colour(rx,ry,c_gray,0.5)//right top
	draw_vertex_colour(rx-aL,rly,c_gray,0)//left bottom
	draw_vertex_colour(rx,rly,c_gray,0.5)//right bottom
	draw_primitive_end()
	}

	//do the corners
	//right bottom
	if aR>0 and aB>0 then{
	//calculate vertexes
	vertexes=max(ceil((uiz_ellipse_circumference(aR,aB))/10),2)
	draw_primitive_begin(pr_trianglefan)
	draw_vertex_color(rlx,rly,c_gray,0.5)
	for(var i=0;i<=vertexes;i++){
	var dir=(i/vertexes)*-90
	draw_vertex_color(rlx+lengthdir_x(aR,dir),rly+lengthdir_y(aB,dir),c_gray,0)
	}
	draw_primitive_end()
	}


	//right top
	if aR>0 and aT>0 then{
	//calculate vertexes
	vertexes=max(ceil((uiz_ellipse_circumference(aR,aT))/10),2)
	draw_primitive_begin(pr_trianglefan)
	draw_vertex_color(rlx,ry,c_gray,0.5)
	for(var i=0;i<=vertexes;i++){
	var dir=(i/vertexes)*90
	draw_vertex_color(rlx+lengthdir_x(aR,dir),ry+lengthdir_y(aT,dir),c_gray,0)
	}
	draw_primitive_end()
	}


	//left bottom
	if aL>0 and aB>0 then{
	//calculate vertexes
	vertexes=max(ceil((uiz_ellipse_circumference(aL,aB))/10),2)
	draw_primitive_begin(pr_trianglefan)
	draw_vertex_color(rx,rly,c_gray,0.5)
	for(var i=0;i<=vertexes;i++){
	var dir=(i/vertexes)*-90
	draw_vertex_color(rx-lengthdir_x(aL,dir),rly+lengthdir_y(aB,dir),c_gray,0)
	}
	draw_primitive_end()
	}


	//left top
	if aL>0 and aT>0 then{
	//calculate vertexes
	vertexes=max(ceil((uiz_ellipse_circumference(aL,aT))/10),2)
	draw_primitive_begin(pr_trianglefan)
	draw_vertex_color(rx,ry,c_gray,0.5)
	for(var i=0;i<=vertexes;i++){
	var dir=(i/vertexes)*90
	draw_vertex_color(rx-lengthdir_x(aL,dir),ry+lengthdir_y(aT,dir),c_gray,0)
	}
	draw_primitive_end()
	}




	}



}
