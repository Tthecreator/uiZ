///draw_square_rounded_colour_outlined(x1,y1,x2,y2,color1,color2,color3,color4,alpha,xstretch,ystretch,thickness)
/*
Does the same as game maker's draw_rectangle_colour, but this one is compatible with the uiz shaders.
Always try to use this function instead of draw_rectangle_colour if you are making an uiZ object.

In addition to draw_square_colour this has the following two extra arguments:
xstretch: (in px) the distance on the x-axis between the (imaginary) 90 degree corner and the point at which the curve stops.
ystretch: (in px) the distance on the y-axis between the (imaginary) 90 degree corner and the point at which the curve stops.
advancedBlending: if true a lower performance but better looking blending method is used. If higher a worse looking but slightly faster method is used.





*Fun note: one of the very few functions that use the British spelling of the word "colour/color", but just because game maker also uses it for this function.
I have nothing against either of these spellings, but I decided to generally use the word "color" instead of "colour" troughout this manual.
Why am I wasting my time writing this? 
*/
//draw_sprite_ext(spr_square,0,argument0,argument1,argument2-argument0,argument3-argument1,0,argument4,argument5)

//sdbm(argument0,argument1,argument2,argument3);

var width = argument2 - argument0;
var height = argument3 - argument1;
var xstretch = min(width/2,argument9);
var ystretch = min(height/2,argument10);
//var xstretch_inner = xstretch * (width-argument11)/width
//var ystretch_inner = ystretch * (height-argument11)/height
var xstretch_inner = max(0,xstretch - argument11)
var ystretch_inner = max(0,ystretch - argument11)
var precision = max(3,ceil(max(xstretch,ystretch)/7));
//precision=2;
var x1_inner = argument0+argument11;
var y1_inner = argument1+argument11;
var x2_inner = argument2-argument11;
var y2_inner = argument3-argument11;

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(spr_square,0))
        
for(var i=-precision;i<=0;++i){//curve top right
    var x_fac = dcos(i/precision*90)
    var y_fac = dsin(i/precision*90);
    var x_pos = (argument2-xstretch+x_fac*xstretch);
    var y_pos = (argument1+ystretch+y_fac*ystretch);
    var x_pos_inner = (x2_inner-xstretch_inner+x_fac*xstretch_inner);
    var y_pos_inner = (y1_inner+ystretch_inner+y_fac*ystretch_inner);
    draw_vertex_texture_colour(x_pos_inner,y_pos_inner,0.8,0,argument5,argument8)
    draw_vertex_texture_colour(x_pos,y_pos,0.8,0,argument5,argument8)
}

for(var i=0;i<=precision;++i){//curve bottom right
    var x_fac = dcos(i/precision*90)
    var y_fac = dsin(i/precision*90);
    var x_pos = (argument2-xstretch+x_fac*xstretch);
    var y_pos = (argument3-ystretch+y_fac*ystretch);
    var x_pos_inner = (x2_inner-xstretch_inner+x_fac*xstretch_inner);
    var y_pos_inner = (y2_inner-ystretch_inner+y_fac*ystretch_inner);
    draw_vertex_texture_colour(x_pos_inner,y_pos_inner,0.8,0.8,argument6,argument8)
    draw_vertex_texture_colour(x_pos,y_pos,0.8,0.8,argument6,argument8)
}

for(var i=precision;i<=precision*2;++i){//curve bottom left
    var x_fac = dcos(i/precision*90)
    var y_fac = dsin(i/precision*90);
    var x_pos = (argument0+xstretch+x_fac*xstretch);
    var y_pos = (argument3-ystretch+y_fac*ystretch);
    var x_pos_inner = (x1_inner+xstretch_inner+x_fac*xstretch_inner);
    var y_pos_inner = (y2_inner-ystretch_inner+y_fac*ystretch_inner);
    draw_vertex_texture_colour(x_pos_inner,y_pos_inner,0.8,0.8,argument7,argument8)
    draw_vertex_texture_colour(x_pos,y_pos,0.2,0.8,argument7,argument8)
}

for(var i=precision*2;i<=precision*3;++i){//curve top left
    var x_fac = dcos(i/precision*90);
    var y_fac = dsin(i/precision*90);
    var x_pos = (argument0+xstretch+x_fac*xstretch);
    var y_pos = (argument1+ystretch+y_fac*ystretch);
    var x_pos_inner = (x1_inner+xstretch_inner+x_fac*xstretch_inner);
    var y_pos_inner = (y1_inner+ystretch_inner+y_fac*ystretch_inner);
    draw_vertex_texture_colour(x_pos_inner,y_pos_inner,0.8,0.8,argument4,argument8)
    draw_vertex_texture_colour(x_pos,y_pos,0.2,0.2,argument4,argument8)
}
draw_vertex_texture_colour(round(x2_inner-xstretch_inner),round(y1_inner),0.8,0.2,argument5,argument8)//top right inner (left side of curve)
draw_vertex_texture_colour(round(argument2-xstretch),round(argument1),0.8,0.2,argument5,argument8)//top right outer (left side of curve)
draw_primitive_end()

