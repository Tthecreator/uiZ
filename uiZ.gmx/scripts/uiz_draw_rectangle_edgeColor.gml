///uiz_draw_rectangle_edgeColor(x1, y1, x2, y2, color1, color2, color3, color4, alpha, thickness)
//color1: leftupper corner
//color2: rightupper corner
//color3: leftllower corner
//color4: rightlower corner
/*
This script draws a rectangle just like game maker's draw_rectangle_colour() but then it is compatible with the uiz containment shaders.
Use this instead of draw_rectangle_colour() whenever you can.
0-x1: the left coordinate.
1-y1: the top coordinate.
2-x2: the right coordinate.
3-y2: the bottom coordinate.
4-color1: color of the left-upper corner.
5-color2: color of the right-upper corner.
6-color3: color of the left-lower corner.
7-color4: color of the right-lower corner.
*/
var x1=argument0
var y1=argument1
var x2=argument2
var y2=argument3
var c1=argument4
var c1r=color_get_red(c1)
var c1g=color_get_green(c1)
var c1b=color_get_blue(c1)
var c2=argument5
var c2r=color_get_red(c2)
var c2g=color_get_green(c2)
var c2b=color_get_blue(c2)
var c3=argument6
var c3r=color_get_red(c3)
var c3g=color_get_green(c3)
var c3b=color_get_blue(c3)
var c4=argument7
var c4r=color_get_red(c4)
var c4g=color_get_green(c4)
var c4b=color_get_blue(c4)
var a=argument8
var t=argument9
var w=x2-x1
var h=y2-y1
var c5=make_color_rgb(c1r+(c2r-c1r)*(t/w),c1g+(c2g-c1g)*(t/w),c1b+(c2b-c1b)*(t/w))
var c5r=color_get_red(c5)
var c5g=color_get_green(c5)
var c5b=color_get_blue(c5)
var c6=make_color_rgb(c1r+(c2r-c1r)*(1-t/w),c1g+(c2g-c1g)*(1-t/w),c1b+(c2b-c1b)*(1-t/w))
var c6r=color_get_red(c6)
var c6g=color_get_green(c6)
var c6b=color_get_blue(c6)
var c7=make_color_rgb(c4r+(c3r-c4r)*(1-t/w),c4g+(c3g-c4g)*(1-t/w),c4b+(c3b-c4b)*(1-t/w))
var c7r=color_get_red(c7)
var c7g=color_get_green(c7)
var c7b=color_get_blue(c7)
var c8=make_color_rgb(c4r+(c3r-c4r)*(t/w),c4g+(c3g-c4g)*(t/w),c4b+(c3b-c4b)*(t/w))
var c8r=color_get_red(c8)
var c8g=color_get_green(c8)
var c8b=color_get_blue(c8)
var c9=make_color_rgb(c5r+(c8r-c5r)*(t/h),c5g+(c8g-c5g)*(t/h),c5b+(c8b-c5b)*(t/h))
var c10=make_color_rgb(c6r+(c7r-c6r)*(t/h),c6g+(c7g-c6g)*(t/h),c6b+(c7b-c6b)*(t/h))
var c11=make_color_rgb(c6r+(c7r-c6r)*(1-t/h),c6g+(c7g-c6g)*(1-t/h),c6b+(c7b-c6b)*(1-t/h))
var c12=make_color_rgb(c5r+(c8r-c5r)*(1-t/h),c5g+(c8g-c5g)*(1-t/h),c5b+(c8b-c5b)*(1-t/h))
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(spr_square,0));
draw_vertex_texture_colour(x1,y2,0.5,0.5,c4,a)//1
draw_vertex_texture_colour(x1,y1,0.5,0.5,c1,a)//2
draw_vertex_texture_colour(x1+t,y1,0.5,0.5,c5,a)//3

draw_vertex_texture_colour(x1,y2,0.5,0.5,c4,a)//4
draw_vertex_texture_colour(x1+t,y2,0.5,0.5,c8,a)//5

draw_vertex_texture_colour(x1+t,y2-t,0.5,0.5,c12,a)//6
draw_vertex_texture_colour(x2-t,y2-t,0.5,0.5,c11,a)//7

draw_vertex_texture_colour(x1+t,y2,0.5,0.5,c8,a)//8
draw_vertex_texture_colour(x2-t,y2,0.5,0.5,c7,a)//9

draw_vertex_texture_colour(x2,y2,0.5,0.5,c3,a)//10
draw_vertex_texture_colour(x2,y1,0.5,0.5,c2,a)//11

draw_vertex_texture_colour(x2-t,y2,0.5,0.5,c7,a)//12
draw_vertex_texture_colour(x2-t,y1,0.5,0.5,c6,a)//13
draw_vertex_texture_colour(x2-t,y1,0.5,0.5,c6,a)//13


draw_vertex_texture_colour(x1+t,y1,0.5,0.5,c5,a)//14
draw_vertex_texture_colour(x2-t,y1+t,0.5,0.5,c10,a)//15

draw_vertex_texture_colour(x1+t,y1+t,0.5,0.5,c9,a)//16
draw_vertex_texture_colour(x1+t,y1,0.5,0.5,c5,a)//17
//draw_vertex_colour(x1+t,y1,c5,a)//17

draw_primitive_end()
