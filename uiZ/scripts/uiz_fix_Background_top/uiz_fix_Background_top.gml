function uiz_fix_Background_top() {

	topbar_texas=-1;
	if argument_count=1 then{
	var u=argument[0];}else{
	var u=min(2,kmouseover)
	}
	switch(u){
	case 0:
	topbar_bkspr=topbar_sprite_normal;
	topbar_bkcol=topbar_color_normal;
	topbar_bkmar=topbar_margin_normal;
	topbar_texas=topbar_texturescript;
	break;
	case 1:
	if topbar_sprite_over>-1 then{topbar_bkspr=topbar_sprite_over;}else{topbar_bkspr=topbar_sprite_normal;}
	if topbar_color_over>-1 then{topbar_bkcol=topbar_color_over;}else{topbar_bkcol=topbar_color_normal;}
	if topbar_margin_over>-1 then{topbar_bkmar=topbar_margin_over;}else{topbar_bkmar=topbar_margin_normal;}
	if topbar_texturescript_over>-1 then{topbar_texas=topbar_texturescript_over}else{topbar_texas=topbar_texturescript}
	break;
	case 2:
	if topbar_sprite_in>-1 then{topbar_bkspr=topbar_sprite_in;}else{topbar_bkspr=topbar_sprite_normal;}
	if topbar_color_in>-1 then{topbar_bkcol=topbar_color_in;}else{topbar_bkcol=topbar_color_normal;}
	if topbar_margin_in>-1 then{topbar_bkmar=topbar_margin_in;}else{topbar_bkmar=topbar_margin_normal;}
	if topbar_texturescript_in>-1 then{topbar_texas=topbar_texturescript_in}else{topbar_texas=topbar_texturescript}
	break;
	case 3:
	if topbar_sprite_out>-1 then{topbar_bkspr=topbar_sprite_out;}else{topbar_bkspr=topbar_sprite_normal;}
	if topbar_color_out>-1 then{topbar_bkcol=topbar_color_out;}else{topbar_bkcol=topbar_color_normal;}
	if topbar_margin_out>-1 then{topbar_bkmar=topbar_margin_out;}else{topbar_bkmar=topbar_margin_normal;}
	if topbar_texturescript_out>-1 then{topbar_texas=topbar_texturescript_out}else{topbar_texas=topbar_texturescript;}
	break;
	}




}
