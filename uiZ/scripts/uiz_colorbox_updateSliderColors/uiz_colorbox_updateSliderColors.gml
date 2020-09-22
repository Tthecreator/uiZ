/// @description uiz_colorbox_updateSliderColors(val,r,g,b);
/// @param val
/// @param r
/// @param g
/// @param b
function uiz_colorbox_updateSliderColors(argument0, argument1, argument2, argument3) {
	/*
	boxval.color1 = make_color_hsv(h, s, 0);
	boxval.color2 = make_color_hsv(h, s, 255);

	boxred.color1 = make_color_rgb(0, g, b);
	boxred.color2 = make_color_rgb(255, g, b);
	boxgreen.color1 = make_color_rgb(r, 0, b);
	boxgreen.color2 = make_color_rgb(r, 255, b);
	boxblue.color1 = make_color_rgb(r, g, 0);
	boxblue.color2 = make_color_rgb(r, g, 255);

	uiz_updater_FixViews_with(boxval);
	uiz_updater_FixViews_with(boxred);
	uiz_updater_FixViews_with(boxgreen);
	uiz_updater_FixViews_with(boxblue);
	*/

	if argument0 uiz_slider_setcolor(boxval,make_color_hsv(h, s, 0),make_color_hsv(h, s, 255));
	if argument1 uiz_slider_setcolor(boxred,make_color_rgb(0, g, b),make_color_rgb(255, g, b));
	if argument2 uiz_slider_setcolor(boxgreen,make_color_rgb(r, 0, b),make_color_rgb(r, 255, b));
	if argument3 uiz_slider_setcolor(boxblue,make_color_rgb(r, g, 0),make_color_rgb(r, g, 255));





}
