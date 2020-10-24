/// @description draw_square_rounded_colour_interpolate(xfac,yfac,color1,color2,color3,color4);
/// @param xfac
/// @param yfac
/// @param color1
/// @param color2
/// @param color3
/// @param color4
function draw_square_rounded_colour_interpolate(argument0, argument1, argument2, argument3, argument4, argument5) {
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



}
