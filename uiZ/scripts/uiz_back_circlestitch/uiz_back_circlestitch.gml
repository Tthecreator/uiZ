/// @description uiz_back([n])
/// @param [n]
function uiz_back_circlestitch() {
	/*
	Utilizes all background variables. (sprite_, color_, margin_, _texturemode)
	This mode starts out by drawing one background sprite in the middle, and then places other sprites around that, including different sprites in the corners.
	This way objects can have nice rounded corners and nicely textured corners.
	A sprite should be build up in this way:
	-image 0: the top bar.
	-image 1: the right bar.
	-image 2: the bottom bar.
	-image 4: the left-top corner.
	-image 5: the right-top corner.
	-image 6: the right-bottom corner.
	-image 7: the left-bottom corner.
	-image 8: the background image.

	Your sprite may be of any size, but it is recommended to keep this sprite around 32x32. 
	Also, because the sprite must contain both horizontal and vertical images, a lot of space will be left empty. (Just look at spr_uiZ_border and spr_uiZ_border1 to get an idea of how the sprite works.)
	Another thing you mustn't forget is to set margin_in correctly. If the border should only be 4 pixels wide,
	you will have to set margin_normal, or any other margin_ variable correctly.

	*/
	//draws the edges, background and all other stuff for uiz objects, using either sprites or colors.
	bkcol=clamp(bkcol,0,16777215)
	bkmar=max(bkmar,0)
	if sprite_exists(bkspr) then{
	//texture_set_repeat(0)
	draw_set_color(bkcol)

	var nwidth=floor(width-bkmar*2);
	var nheight=floor(height-bkmar*2);
	var nrx=floor(rx+bkmar);
	var nry=floor(ry+bkmar);
	var nrlx=floor(rlx-bkmar);
	var nrly=floor(rly-bkmar);
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
	/*draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,8))
	draw_vertex_texture(nrx,nry,0,0)
	draw_vertex_texture(nrx,nrly,0,szy)
	draw_vertex_texture(nrlx,nry,szx,0)
	draw_vertex_texture(nrlx,nrly,szx,szy)
	draw_primitive_end()
	*/
	//global.deb=true;
	uiz_draw_sprite_tiles(bkspr,8,nrx,nry,nrlx,nrly,szx,szy,bkcol,alpha,0,0);
	//global.deb=false;
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
	draw_sprite_stretched(bkspr,0,nrx,nry-nsh,nwidth,sprite_get_height(bkspr))//top

	draw_sprite_stretched(bkspr,2,nrx,nrly,nwidth,sprite_get_height(bkspr))//bottom
	//sdbm("drawing left circlestitch",bkspr,3,nrx-nsw,nry,sprite_get_width(bkspr),nheight)
	draw_sprite_stretched(bkspr,3,nrx-nsw,nry,sprite_get_width(bkspr),nheight)//left

	draw_sprite_stretched(bkspr,1,nrlx,nry,sprite_get_width(bkspr),nheight)//right
	}else{
	//top
	/*
	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,0))
	draw_vertex_texture((nrx),(nry-nsh),0,0)
	draw_vertex_texture((nrx),(nry),0,1)
	draw_vertex_texture((nrlx),(nry-nsh),szx,0)
	draw_vertex_texture((nrlx),(nry),szx,1)
	draw_primitive_end()
	*/
	uiz_draw_sprite_tiles(bkspr,0,nrx,nry-nsh,nrlx,nry,szx,1,bkcol,alpha,0,0)


	//bottom
	/*
	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,2))
	draw_vertex_texture((nrx),(nrly),0,0)
	draw_vertex_texture((nrx),(nrly+nsh),0,1)
	draw_vertex_texture((nrlx),(nrly),szx,0)
	draw_vertex_texture((nrlx),(nrly+nsh),szx,1)
	draw_primitive_end()
	*/
	uiz_draw_sprite_tiles(bkspr,2,nrx,nrly,nrlx,nrly+nsh,szx,1,bkcol,alpha,0,0)

	//right
	/*
	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,1))
	draw_vertex_texture((nrlx),(nry),0,0)
	draw_vertex_texture((nrlx),(nrly),0,szy)
	draw_vertex_texture((nrlx+nsw),(nry),1,0)
	draw_vertex_texture((nrlx+nsw),(nrly),1,szy)
	draw_primitive_end()
	*/
	uiz_draw_sprite_tiles(bkspr,1,nrlx,nry,nrlx+nsw,nrly,szx,1,bkcol,alpha,0,0)

	//left
	/*
	draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,3))
	draw_vertex_texture((nrx-nsw),(nry),0,0)
	draw_vertex_texture((nrx-nsw),(nrly),0,szy)
	draw_vertex_texture((nrx),(nry),1,0)
	draw_vertex_texture((nrx),(nrly),1,szy)
	draw_primitive_end()
	*/
	uiz_draw_sprite_tiles(bkspr,3,nrx-nsw,nry,nrx,nrly,szx,1,bkcol,alpha,0,0)
	}

	//top-left
	draw_sprite_ext(bkspr,4,(nrx-nsw),(nry-nsh),1,1,0,bkcol,1)
	//top right
	draw_sprite_ext(bkspr,5,(nrlx),(nry-nsh),1,1,0,bkcol,1)
	//bottom right
	draw_sprite_ext(bkspr,6,(nrlx),(nrly),1,1,0,bkcol,1)
	//bottom left
	draw_sprite_ext(bkspr,7,(nrx-nsw),(nrly),1,1,0,bkcol,1)

	}
	//draw_set_alpha(1)



}
