if uiz_cntn() then{
//draw_square(rx,ry,rlx,rly,c_blue,1);
if height>=width/2 then{
//if the button is really narrow, and the sprite doesn't accually fit
var hsc=floor(height)/sprite_get_height(sprite);
var sprpx=round(width/hsc/2);
var wsc = floor(width/2) / sprpx;
draw_sprite_part_ext(sprite,kmouseover*3+spraddto,0,0,sprpx,sprite_get_height(sprite),rx,ry,wsc,hsc,color,alpha)
if sprpx*2*hsc == width then{
    draw_sprite_part_ext(sprite,kmouseover*3+spraddto+2,sprite_get_width(sprite)-sprpx,0,sprpx,sprite_get_height(sprite),rx+width/2,ry,wsc,hsc,color,alpha)
}else{
    var wsc = (1+ floor(width/2)) / (sprpx);
    draw_sprite_part_ext(sprite,kmouseover*3+spraddto+2,sprite_get_width(sprite)-sprpx,0,sprpx,sprite_get_height(sprite),rx+width/2,ry,wsc,hsc,color,alpha)
    //draw_sprite_part_ext(sprite,kmouseover*3+spraddto+2,sprite_get_width(sprite)-sprpx,0,sprpx+12,sprite_get_height(sprite),rx+width/2,ry,wsc,hsc,color,alpha)
}
}else{
//draw normally
var nsw=sprite_get_width(sprite)
var nsh=sprite_get_height(sprite)
var hsc=floor(height)/nsh;
var wsc=floor(width)/nsw
draw_sprite_ext(sprite,kmouseover*3+spraddto,floor(rx),floor(ry),hsc,hsc,0,color,alpha)
var nwidth=width-height*2

uiz_draw_sprite_texturemode_horizontal(sprite,kmouseover*3+spraddto+1,floor(rx+height),floor(ry),floor(rlx-height),floor(ry+height),color,alpha,texturemode)

draw_sprite_ext(sprite,kmouseover*3+spraddto+2,floor(rlx-height),floor(ry),hsc,hsc,0,color,alpha)
}
if text!="" then{
draw_set_alpha(1)
draw_set_color(textcolor)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if font>-1 then{draw_set_font(font)}
draw_text(rx+width/2,ry+height/2,string_hash_to_newline(uiz_getText_contained(text,width)))
draw_set_valign(fa_top)
draw_set_halign(fa_left)
}
uiz_containend()
}




