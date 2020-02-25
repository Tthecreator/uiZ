#define draw_square_rounded_colour
///draw_square_rounded_colour(x1,y1,x2,y2,color1,color2,color3,color4,alpha,xstretch,ystretch,advancedBlending)
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
var argument_arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) {
    argument_arr[i] = argument[i];
}
if (live_call_ext(argument_arr)) return live_result;

var width = argument2 - argument0;
var height = argument3 - argument1;
var xstretch = min(width/2,argument9)
var ystretch = min(height/2,argument10)
var precision = ceil(max(xstretch,ystretch)/7);

var drawUsingAdvancedBlending = argument11;

draw_primitive_begin_texture(pr_trianglefan,sprite_get_texture(spr_square,0))
var middle_blend_r = (colour_get_red(argument4)+colour_get_red(argument5)+colour_get_red(argument6)+colour_get_red(argument7))/4
var middle_blend_g = (colour_get_green(argument4)+colour_get_green(argument5)+colour_get_green(argument6)+colour_get_green(argument7))/4
var middle_blend_b = (colour_get_blue(argument4)+colour_get_blue(argument5)+colour_get_blue(argument6)+colour_get_blue(argument7))/4
draw_vertex_texture_colour((argument0+argument2)/2,(argument1+argument3)/2,0,0,make_color_rgb(middle_blend_r,middle_blend_g,middle_blend_b),argument8)//middle



if drawUsingAdvancedBlending = false or true then{
        //draw_vertex_texture_colour(argument0+xstretch,argument1,0,0,argument4,argument8)//top left (right side of curve)
    for(var i=-precision;i<=0;++i){//curve top right
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = round(argument2-xstretch+x_offset);
        var y_pos = round(argument1+ystretch+y_offset);
        draw_vertex_texture_colour(x_pos,y_pos,1,0,argument5,argument8)
    }
    
    for(var i=0;i<=precision;++i){//curve bottom right
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = round(argument2-xstretch+x_offset);
        var y_pos = round(argument3-ystretch+y_offset);
        draw_vertex_texture_colour(x_pos,y_pos,0.8,0.8,argument6,argument8)
    }
    
    for(var i=precision;i<=precision*2;++i){//curve bottom left
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = round(argument0+xstretch+x_offset);
        var y_pos = round(argument3-ystretch+y_offset);
        draw_vertex_texture_colour(x_pos,y_pos,0.2,0.8,argument7,argument8)
    }
    
    for(var i=precision*2;i<=precision*3;++i){//curve top left
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = round(argument0+xstretch+x_offset);
        var y_pos = round(argument1+ystretch+y_offset);
        draw_vertex_texture_colour(x_pos,y_pos,0.2,0.2,argument4,argument8)
    }
    draw_vertex_texture_colour(round(argument2-xstretch),round(argument1),0.8,0.2,argument5,argument8)//top right (left side of curve)
}else{
    //draw_vertex_texture_colour(argument0+xstretch,argument1,0,0,argument4,argument8)//top left (right side of curve)
    for(var i=-precision;i<=0;++i){//curve top right
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = argument2-xstretch+x_offset;
        var y_pos = argument1+ystretch+y_offset;
        var col = draw_square_rounded_colour_interpolate((x_pos-argument0)/width,(y_pos-argument1)/height,argument4,argument5,argument6,argument7);
        draw_vertex_texture_colour(x_pos,y_pos,1,0,col,argument8)
    }
    
    for(var i=0;i<=precision;++i){//curve bottom right
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = argument2-xstretch+x_offset;
        var y_pos = argument3-ystretch+y_offset;
        var col = draw_square_rounded_colour_interpolate((x_pos-argument0)/width,(y_pos-argument1)/height,argument4,argument5,argument6,argument7);
        draw_vertex_texture_colour(x_pos,y_pos,1,1,col,argument8)
    }
    
    for(var i=precision;i<=precision*2;++i){//curve bottom left
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = argument0+xstretch+x_offset;
        var y_pos = argument3-ystretch+y_offset;
        var col = draw_square_rounded_colour_interpolate((x_pos-argument0)/width,(y_pos-argument1)/height,argument4,argument5,argument6,argument7);
        draw_vertex_texture_colour(x_pos,y_pos,0,1,col,argument8)
    }
    
    for(var i=precision*2;i<=precision*3;++i){//curve top left
        var x_offset = dcos(i/precision*90)*xstretch;
        var y_offset = dsin(i/precision*90)*ystretch;
        var x_pos = argument0+xstretch+x_offset;
        var y_pos = argument1+ystretch+y_offset;
        var col = draw_square_rounded_colour_interpolate((x_pos-argument0)/width,(y_pos-argument1)/height,argument4,argument5,argument6,argument7);
        draw_vertex_texture_colour(x_pos,y_pos,0,0,col,argument8)
    }
    var col = draw_square_rounded_colour_interpolate((width-xstretch)/width,0,argument4,argument5,argument6,argument7);
    draw_vertex_texture_colour(argument2-xstretch,argument1,1,0,col,argument8)//top right (left side of curve)
}
draw_primitive_end()


#define draw_square_rounded_colour_interpolate
///draw_square_rounded_colour_interpolate(xfac,yfac,color1,color2,color3,color4);
gml_pragma("forceinline");

return merge_colour(merge_colour(argument2,argument3,argument0),merge_colour(argument5,argument4,argument0),argument1);

/*
var top_blend_r = colour_get_red(argument3)*xfac + colour_get_red(argument2)*(1-xfac)
var top_blend_g = colour_get_green(argument3)*xfac + colour_get_green(argument2)*(1-xfac)
var top_blend_b = colour_get_blue(argument3)*xfac + colour_get_blue(argument2)*(1-xfac)

//return make_colour_rgb(top_blend_r,top_blend_g,top_blend_b);

var bottom_blend_r = colour_get_red(argument4)*xfac + colour_get_red(argument5)*(1-xfac)
var bottom_blend_g = colour_get_green(argument4)*xfac + colour_get_green(argument5)*(1-xfac)
var bottom_blend_b = colour_get_blue(argument4)*xfac + colour_get_blue(argument5)*(1-xfac)

var tot_blend_r = bottom_blend_r*yfac + top_blend_r*(1-yfac)
var tot_blend_g = bottom_blend_g*yfac + top_blend_g*(1-yfac)
var tot_blend_b = bottom_blend_b*yfac + top_blend_b*(1-yfac)

return make_colour_rgb(tot_blend_r,tot_blend_g,tot_blend_b);
*/

//sdbm("top: ",top,"arg2: ",argument2,"arg3: ",argument3,"xfac: ",xfac);
//return top;

//var bottom = argument5*xfac + argument4*(1-xfac);
//return top*yfac + bottom*(1-yfac);