///uiz_gridlist_randomcolor(val,selecty)
if argument0=-1 then{
return make_color_hsv(irandom(255),255,argument0);
}else{
return make_color_hsv(argument1*50,255,argument0);
}
