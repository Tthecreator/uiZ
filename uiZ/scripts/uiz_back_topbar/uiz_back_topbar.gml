function uiz_back_topbar() {
	//var k = unidfajj;
	var texas=-1;
	if argument_count=1 then{
	var u=argument[0];}else{
	var u=min(2,kmouseover)
	}

	switch(u){
	case 0:
	bkspr=topbar_sprite_normal;
	bkcol=topbar_color_normal;
	bkmar=topbar_margin_normal;
	texas=topbar_texturescript
	break;
	case 1:
	if topbar_sprite_over>-1 then{bkspr=topbar_sprite_over;}else{bkspr=topbar_sprite_normal;}
	if topbar_color_over>-1 then{bkcol=topbar_color_over;}else{bkcol=topbar_color_normal;}
	if topbar_margin_over>-1 then{bkmar=topbar_margin_over;}else{bkmar=topbar_margin_normal;}
	if topbar_texturescript_over>-1 then{texas=topbar_texturescript_over}else{texas=topbar_texturescript}
	break;
	case 2:
	if topbar_sprite_in>-1 then{bkspr=topbar_sprite_in;}else{bkspr=topbar_sprite_normal;}
	if topbar_color_in>-1 then{bkcol=topbar_color_in;}else{bkcol=topbar_color_normal;}
	if topbar_margin_in>-1 then{bkmar=topbar_margin_in;}else{bkmar=topbar_margin_normal;}
	if topbar_texturescript_in>-1 then{texas=topbar_texturescript_in}else{texas=topbar_texturescript}
	break;
	case 3:
	if topbar_sprite_out>-1 then{bkspr=topbar_sprite_out;}else{bkspr=topbar_sprite_normal;}
	if topbar_color_out>-1 then{bkcol=topbar_color_out;}else{bkcol=topbar_color_normal;}
	if topbar_margin_out>-1 then{bkmar=topbar_margin_out;}else{bkmar=topbar_margin_normal;}
	if topbar_texturescript_out>-1 then{texas=topbar_texturescript_out}else{texas=topbar_texturescript}
	break;
	}


	if texas=-1 or script_exists(texas)=0 or texas=uiz_back then{
	//sdbm("drawing this sdhtis here",rx,ry,rlx,rly)
	draw_square(rx,ry,rlx,rly,topbar_color_normal,alpha)
	}else{
	draw_set_alpha(alpha)
	//sdbm("bkmaris",bkmar)
	var oldspr_texmode=sprite_texturemode;
	var oldbor_texmode=border_texturemode;
	sprite_texturemode=topbar_sprite_texturemode
	border_texturemode=topbar_border_texturemode
	script_execute(texas)
	sprite_texturemode=oldspr_texmode;
	border_texturemode=oldbor_texmode;
	/*
	if argument_count=1 then{
	script_execute(texturescript,argument[0])
	}else{
	script_execute(texturescript,)
	}
	*/
	}



}
