function uiz_back_spritestitch_4way_plus() {
	//var bkspr,bkcol;
	var img=0;
	/*
	Utilizes the sprite_, sprite_texturemode and color_ variables.
	This takes a sprite containing 1 subimage and draws it into one square by rotating and drawing the sprite 4 times.
	But when the sprite isn't a perfect square, the proportion of the corner pieces is kept 1:1 and the corners are connected through another sprite (subimage 1) which will draw accordingly to the sprite_texturemode .
	sprite_texturemode doesn't affect the corners.
	A sprite should be build up in this way:
	-image 0: the bottom-right piece. (Will be rotated)
	-image 1: the top straight piece.
	-image 2: the left straight piece.
	The sprite should also be a square. (The width and height should be the same) 
	*/
	/*
	switch(argument0){
	case 0:
	var bkspr=sprite_normal;
	var bkcol=color_normal;
	var bkmar=margin_normal;
	break;
	case 1:
	if sprite_over>-1 then{bkspr=sprite_over;}else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=6 then{img=3;}}
	if color_over>-1 then{bkcol=color_over;}else{bkcol=color_normal;}
	break;
	case 2:
	if sprite_in>-1 then{bkspr=sprite_in; }else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=9 then{img=6;}}
	if color_in>-1 then{bkcol=color_in;}else{bkcol=color_normal;}
	break;
	case 3:
	if sprite_out>-1 then{bkspr=sprite_out;}else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=12 then{img=9;}}
	if color_out>-1 then{bkcol=color_out;}else{bkcol=color_normal;}
	break;
	}
	*/
	if sprite_exists(bkspr) then{
	//gpu_set_texrepeat(0)
	draw_set_color(bkcol)

	if width=height then{
	var scx=width/(sprite_get_width(bkspr))/2;
	var scy=height/(sprite_get_height(bkspr))/2;
	//left top
	draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scx,scy,180,bkcol,alpha)
	//right top
	draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scy,scx,270,bkcol,alpha)
	//left bottom
	draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scx,scy,0,bkcol,alpha)
	//right bottom
	draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scy,scx,90,bkcol,alpha)
	}else{
	if width>height then{
	var over=(width-height)
	var scx=(width-over)/(sprite_get_width(bkspr))/2;
	var scy=height/(sprite_get_height(bkspr))/2;
	over/=2;
	var xBeg = rx+width/2-over;
	var xEnd = round(xBeg+over*2);
	xBeg = round(xBeg);
	//left bottom
	draw_sprite_ext(bkspr,0,xBeg,ry+height/2,scx,scy,270,bkcol,alpha)
	//right bottom
	draw_sprite_ext(bkspr,0,xEnd,ry+height/2,scy,scx,0,bkcol,alpha)
	//left top
	draw_sprite_ext(bkspr,0,xBeg,ry+height/2,scx,scy,180,bkcol,alpha)
	//right top
	draw_sprite_ext(bkspr,0,xEnd,ry+height/2,scy,scx,90,bkcol,alpha)

	var nwidth=width-height;
	var nsw=sprite_get_width(bkspr)
	switch(sprite_texturemode){
	case uiz_texturemode_fill:
	var szx=1
	break;
	case uiz_texturemode_tile:
	var szx=nwidth/nsw
	break;
	case uiz_texturemode_tilefit:
	var szx=round(nwidth/nsw);
	break;
	default:
	szx=1
	break;
	}

	var fh=floor(height/2);
	var ch=ceil(height/2);

	uiz_draw_sprite_tiles(bkspr,1,xBeg,ry,xEnd,ry+ch,1,szx,bkcol,alpha,0,0)
	uiz_draw_sprite_tiles_flippedy(bkspr,1,xBeg,ry+fh,xEnd,rly,1,szx,bkcol,alpha)

	}else{

	//gpu_set_texrepeat(0)


	var over=(height-width)
	var scx=(height-over)/(sprite_get_width(bkspr))/2;
	var scy=(width)/(sprite_get_height(bkspr))/2;
	over/=2;
	var yBeg = ry+height/2-over;
	var yEnd = round(yBeg+over*2);
	yBeg = round(yBeg);
	//left bottom
	draw_sprite_ext(bkspr,0,rx+width/2,yBeg,scx,scy,180,bkcol,alpha)
	//right bottom
	draw_sprite_ext(bkspr,0,rx+width/2,yEnd,scy,scx,270,bkcol,alpha)
	//left top
	draw_sprite_ext(bkspr,0,rx+width/2,yBeg,scx,scy,90,bkcol,alpha)
	//right top
	draw_sprite_ext(bkspr,0,rx+width/2,yEnd,scy,scx,0,bkcol,alpha)

	var nwidth=height-width;

	switch(sprite_texturemode){
	case uiz_texturemode_fill:
	var szx=1
	break;
	case uiz_texturemode_tile:
	var szx=nwidth/nsw
	break;
	case uiz_texturemode_tilefit:
	var szx=round(nwidth/nsw);
	break;
	default:
	szx=1
	break;
	}

	//gpu_set_texrepeat(0)

	uiz_draw_sprite_tiles(bkspr,2,rx,yBeg,rx+width/2,yEnd,1,szx,bkcol,alpha,0,0)
	uiz_draw_sprite_tiles_flippedx(bkspr,2,rx+width/2,yBeg,rlx,yEnd,1,szx,bkcol,alpha)

	}


	}
	}




}
