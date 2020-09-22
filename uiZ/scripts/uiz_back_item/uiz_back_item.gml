function uiz_back_item() {
	var texas=-1;
	if argument_count=1 then{
	var u=argument[0];}else{
	var u=min(2,kmouseover)
	}
	switch(u){
	case 0:
	bkspr=item_sprite_normal;
	bkcol=item_color_normal;
	bkmar=item_margin_normal;
	texas=item_texturescript;
	break;
	case 1:
	if item_sprite_over>-1 then{bkspr=item_sprite_over;}else{bkspr=item_sprite_normal;}
	if item_color_over>-1 then{bkcol=item_color_over;}else{bkcol=item_color_normal;}
	if item_margin_over>-1 then{bkmar=item_margin_over;}else{bkmar=item_margin_normal;}
	if item_texturescript_over>-1 then{texas=item_texturescript_over}else{texas=item_texturescript}
	break;
	case 2:
	if item_sprite_in>-1 then{bkspr=item_sprite_in;}else{bkspr=item_sprite_normal;}
	if item_color_in>-1 then{bkcol=item_color_in;}else{bkcol=item_color_normal;}
	if item_margin_in>-1 then{bkmar=item_margin_in;}else{bkmar=item_margin_normal;}
	if item_texturescript_in>-1 then{texas=item_texturescript_in}else{texas=item_texturescript}
	break;
	case 3:
	if item_sprite_out>-1 then{bkspr=item_sprite_out;}else{bkspr=item_sprite_normal;}
	if item_color_out>-1 then{bkcol=item_color_out;}else{bkcol=item_color_normal;}
	if item_margin_out>-1 then{bkmar=item_margin_out;}else{bkmar=item_margin_normal;}
	if item_texturescript_out>-1 then{texas=item_texturescript_out}else{texas=item_texturescript}
	break;
	}
	//sdbm("bkmar",bkmar,texas)
	if texas=-1 or script_exists(texas)=0 or texas=uiz_back then{
	draw_square(rx,ry,rlx,rly,bkcol,alpha)
	}else{
	draw_set_alpha(alpha)
	var oldspr_texmode=sprite_texturemode;
	var oldbor_texmode=border_texturemode;
	sprite_texturemode=item_sprite_texturemode
	border_texturemode=item_border_texturemode
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
