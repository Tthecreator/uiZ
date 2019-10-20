///uiz_draw_line_width(x1,y1,x2,y2,w,color,alpha)
//if live_call(argument0,argument1,argument2,argument3,argument4,argument5,argument6) return live_result

var x1 = argument0;
var x2 = argument2;
var y1 = argument1;
var y2 = argument3;

//draw_set_color(c_blue);
//draw_set_alpha(0.5);
//draw_line_width(x1,y1,x2,y2,argument4);

var lineLength = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
var angle = darctan2(y2-y1,x2-x1);

var sw = sprite_get_width(spr_square);
var hw = ceil(argument4/2);
var hadd = argument4 mod 2;

draw_sprite_ext(spr_square,0,x1-1-hadd+lengthdir_x(hw,angle),y2-hw+1-lengthdir_y(hw,angle),(lineLength)/sw,(argument4)/sw,angle,argument5,argument6)
