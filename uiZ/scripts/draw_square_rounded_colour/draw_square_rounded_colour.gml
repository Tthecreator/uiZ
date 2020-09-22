/// @description draw_square_rounded_colour(x1,y1,x2,y2,color1,color2,color3,color4,alpha,xstretch,ystretch,advancedBlending)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param color1
/// @param color2
/// @param color3
/// @param color4
/// @param alpha
/// @param xstretch
/// @param ystretch
/// @param advancedBlending
function draw_square_rounded_colour(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {
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





}
