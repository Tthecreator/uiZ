function uiz_back_spritestitch_horizontal() {
	//var bkspr,bkcol;
	var img=uiz_nused*3;
	/*

	Utilizes the sprite_ and color_ variables.
	This takes a sprite containing 1 subimage and draws it into one square by rotating and drawing the sprite 4 times. A sprite should be build up in this way:
	-image 0: the bottom-right piece.

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
	if height>=width/2 then{
	//if the button is really narrow, and the bkspr doesn't accually fit
	var hsc=height/sprite_get_height(bkspr);
	var sprpx=width/hsc/2
	draw_sprite_part_ext(bkspr,img,0,0,sprpx,sprite_get_height(bkspr),rx,ry,hsc,hsc,bkcol,alpha)
	draw_sprite_part_ext(bkspr,img+2,sprite_get_width(bkspr)-sprpx,0,sprpx,sprite_get_height(bkspr),rlx-width/2,ry,hsc,hsc,bkcol,alpha)
	}else{
	//draw normally
	var hsc=height/sprite_get_height(bkspr);
	var wsc=width/sprite_get_width(bkspr)
	draw_sprite_ext(bkspr,img,rx,ry,hsc,hsc,0,bkcol,alpha)

	//draw_sprite_ext(bkspr,img+1,rx+height,ry,wsc-hsc*2,hsc,0,bkcol,alpha)

	//draw middle part:
	var nwidth=width
	var nheight=height-width*2
	var nsw=sprite_get_width(bkspr)
	var nsh=sprite_get_height(bkspr)

	switch(sprite_texturemode){
	case uiz_texturemode_fill:
	var szx=1
	var szy=1
	break;
	case uiz_texturemode_tile:
	var szx=nwidth/nsw
	var szy=1
	break;
	case uiz_texturemode_tilefit:
	var szx=round(nwidth/nsw);
	var szy=1;
	break;
	}

	draw_set_color(bkcol)
	draw_set_alpha(alpha)
	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,img+1))
	draw_vertex_texture(rx+height,ry,0,0)
	draw_vertex_texture(rx+height,rly,0,szy)
	draw_vertex_texture(rlx-height,ry,szx,0)
	draw_vertex_texture(rlx-height,rly,szx,szy)
	draw_primitive_end()



	draw_sprite_ext(bkspr,img+2,rlx-height,ry,hsc,hsc,0,bkcol,alpha)
	}
	}



}
