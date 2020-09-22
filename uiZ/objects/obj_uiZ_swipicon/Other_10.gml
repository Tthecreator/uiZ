
if uiz_cntn() then{
if font>-1 then{draw_set_font(font)}
var ah=0;
var aw=0;
if text!="" then{
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
var t=uiz_getText_contained(text,width)
//sdbm("text is",t)
var ah=string_height(string_hash_to_newline(t))+bkmar;
var aw=string_width(string_hash_to_newline(t))+bkmar*2;
//uiz_back_at(rx+max(width/2-aw/2,bkmar),rly-ah,min(rlx-bkmar,rx+width/2+aw/2),rly-bkmar)
//uiz_back_at(rx+width/2-aw/2,rly-ah,rx+width/2+aw/2,rly);
if selected=true then{
//draw_square(rx+width/2-aw/2,rly-ah,rx+width/2+aw/2,rly,textbackselectcolor,textbackselectalpha)
//uiz_back_at(rx+width/2-aw/2,rly-ah,rx+width/2+aw/2,rly-bkmar,3)
uiz_back_at(rx+width/2-aw/2,rly-ah,rx+width/2+aw/2,rly,3);
draw_set_color(textselectcolor)
}else{
//uiz_back_at(rx+max(width/2-aw/2,bkmar),rly-ah,min(rlx-bkmar,rx+width/2+aw/2),rly-bkmar)
//draw_square(rx+width/2-aw/2,rly-ah,rx+width/2+aw/2,rly,textbackcolor,textbackalpha)
uiz_back_at(rx+width/2-aw/2,rly-ah,rx+width/2+aw/2,rly);
draw_set_color(textcolor)
}

draw_text(rx+width/2,rly-ah/2,string_hash_to_newline(t))


}
var dw,dh,dx,dy;
var sw=sprite_get_width(sprite);
var sh=sprite_get_height(sprite);
var uh=height-ah-bkmar*2
if keepratio=true then{
ratio=sw/sh;
var f=min(width/sw,uh/sh);
//sdbm(f,width/sw,height/sh)
//dw=min(width,height*ratio);
//dh=dw/ratio;
dw=f;
dh=f;
dx=(width-sw*f)/2
dy=(uh-sh*f)/2
}else{
dw=width/sw
dh=uh/sh
dx=0
dy=0;
}
draw_sprite_ext(sprite,kmouseover+spraddto,rx+dx,ry+dy,dw,dh,0,color,image_alpha)
uiz_containend()
}




