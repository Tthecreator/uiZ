
top_texas=-1;
if argument_count=1 then{
var u=argument[0];}else{
var u=min(2,kmouseover)
}
switch(u){
case 0:
top_bkspr=top_sprite_normal;
top_bkcol=top_color_normal;
top_bkmar=top_margin_normal;
top_texas=top_texturescript;
break;
case 1:
if top_sprite_over>-1 then{top_bkspr=top_sprite_over;}else{top_bkspr=top_sprite_normal;}
if top_color_over>-1 then{top_bkcol=top_color_over;}else{top_bkcol=top_color_normal;}
if top_margin_over>-1 then{top_bkmar=top_margin_over;}else{top_bkmar=top_margin_normal;}
if top_texturescript_over>-1 then{top_texas=top_texturescript_over}else{top_texas=top_texturescript}
break;
case 2:
if top_sprite_in>-1 then{top_bkspr=top_sprite_in;}else{top_bkspr=top_sprite_normal;}
if top_color_in>-1 then{top_bkcol=top_color_in;}else{top_bkcol=top_color_normal;}
if top_margin_in>-1 then{top_bkmar=top_margin_in;}else{top_bkmar=top_margin_normal;}
if top_texturescript_in>-1 then{top_texas=top_texturescript_in}else{top_texas=top_texturescript}
break;
case 3:
if top_sprite_out>-1 then{top_bkspr=top_sprite_out;}else{top_bkspr=top_sprite_normal;}
if top_color_out>-1 then{top_bkcol=top_color_out;}else{top_bkcol=top_color_normal;}
if top_margin_out>-1 then{top_bkmar=top_margin_out;}else{top_bkmar=top_margin_normal;}
if top_texturescript_out>-1 then{top_texas=top_texturescript_out}else{top_texas=top_texturescript;}
break;
}

