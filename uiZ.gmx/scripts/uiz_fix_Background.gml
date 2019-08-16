if hasbackground=true then{
texas=-1;
if argument_count=1 then{
var u=argument[0];}else{
var u=min(2,kmouseover)
}
uiz_nused=u;
switch(u){
case 0:
bkspr=sprite_normal;
bkcol=color_normal;
bkmar=margin_normal;
texas=texturescript
break;
case 1:
if sprite_over>-1 then{bkspr=sprite_over;}else{bkspr=sprite_normal;}
if color_over>-1 then{bkcol=color_over;}else{bkcol=color_normal;}
if margin_over>-1 then{bkmar=margin_over;}else{bkmar=margin_normal;}
if texturescript_over>-1 then{texas=texturescript_over}else{texas=texturescript}
break;
case 2:
if sprite_in>-1 then{bkspr=sprite_in;}else{bkspr=sprite_normal;}
if color_in>-1 then{bkcol=color_in;}else{bkcol=color_normal;}
if margin_in>-1 then{bkmar=margin_in;}else{bkmar=margin_normal;}
if texturescript_in>-1 then{texas=texturescript_in}else{texas=texturescript}
break;
case 3:
if sprite_out>-1 then{bkspr=sprite_out;}else{bkspr=sprite_normal;}
if color_out>-1 then{bkcol=color_out;}else{bkcol=color_normal;}
if margin_out>-1 then{bkmar=margin_out;}else{bkmar=margin_normal;}
if texturescript_out>-1 then{texas=texturescript_out}else{texas=texturescript}
break;
}
}
