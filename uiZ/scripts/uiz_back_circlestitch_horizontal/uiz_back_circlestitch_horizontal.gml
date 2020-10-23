/// @description uiz_back_circlestitch_at([n])
/// @param [n]
function uiz_back_circlestitch_horizontal() {
	/*This does almost the same as the normal uiz_back_circlestitch, but then it doensn't draw any corners or top or bottom pieces.
	Margins around those areas are also ignored.
	*/
	//draws the edges, background and all other stuff for uiz objects, using either sprites or colors.
	bkcol=clamp(bkcol,0,16777215)
	bkmar=max(bkmar,0)
	if sprite_exists(bkspr) then{
	gpu_set_texrepeat(0)
	draw_set_color(bkcol)

	var nwidth=floor(width-bkmar*2);
	var nheight=floor(height-bkmar*2);
	var nrx=floor(rx+bkmar);
	var nry=floor(ry);
	var nrlx=floor(rlx-bkmar);
	var nrly=floor(rly);
	var nsw=sprite_get_width(bkspr)
	var nsh=sprite_get_height(bkspr)

	switch(sprite_texturemode){
	case uiz_texturemode_fill:
	var szx=1
	var szy=1
	break;
	case uiz_texturemode_tile:
	var szx=nwidth/nsw
	var szy=nheight/nsh
	break;
	case uiz_texturemode_tilefit:
	var szx=floor(nwidth/nsw);
	var szy=floor(nheight/nsh);
	break;
	default:
	szx=1
	szy=1
	break;
	}
	//middle
	if (nwidth>0 or nheight>0) and sprite_get_number(bkspr)>=9 then{
	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,8))
	draw_vertex_texture(nrx,nry,0,0)
	draw_vertex_texture(nrx,nrly,0,szy)
	draw_vertex_texture(nrlx,nry,szx,0)
	draw_vertex_texture(nrlx,nrly,szx,szy)
	draw_primitive_end()
	}

	//new values for borders
	if border_texturemode>-1 then{
	switch(border_texturemode){
	case uiz_texturemode_fill:
	var szx=1
	var szy=1
	break;
	case uiz_texturemode_tile:
	var szx=nwidth/nsw
	var szy=nheight/nsh
	break;
	case uiz_texturemode_tilefit:
	var szx=(nwidth/nsw);
	var szy=(nheight/nsh);
	break;
	}
	}

	if border_texturemode=uiz_texturemode_fill then{
	//draw_sprite_stretched(bkspr,0,nrx,nry-nsh,nwidth,sprite_get_height(bkspr))//top

	//draw_sprite_stretched(bkspr,2,nrx,nrly,nwidth,sprite_get_height(bkspr))//bottom

	draw_sprite_stretched(bkspr,3,nrx-nsw,nry,sprite_get_width(bkspr),nheight)//left

	draw_sprite_stretched(bkspr,1,nrlx,nry,sprite_get_width(bkspr),nheight)//right
	}else{
	/*
	//right

	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,1))
	draw_vertex_texture((nrlx),(nry),0,0)
	draw_vertex_texture((nrlx),(nrly),0,szy)
	draw_vertex_texture((nrlx+nsw),(nry),1,0)
	draw_vertex_texture((nrlx+nsw),(nrly),1,szy)
	draw_primitive_end()

	//left

	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,3))
	draw_vertex_texture((nrx-nsw),(nry),0,0)
	draw_vertex_texture((nrx-nsw),(nrly),0,szy)
	draw_vertex_texture((nrx),(nry),1,0)
	draw_vertex_texture((nrx),(nrly),1,szy)
	draw_primitive_end()
	*/
	uiz_draw_sprite_tiles(bkspr,1,nrlx,nry,nrlx+nsw,nrly,szx,1,bkcol,alpha,0,0)//right
	uiz_draw_sprite_tiles(bkspr,3,nrx-nsw,nry,nrx,nrly,szx,1,bkcol,alpha,0,0)//left
	}
	}
	//draw_set_alpha(1)



}
