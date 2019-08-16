///uiz_htmltocolor(hex code)
/*supply this script with a html hex code which is NOT a string, but a "$" sign followed by your hex code.
Do not put a # in from of your hex code, instead use a dollar "$" in front of it, since that's the way to define hex codes in game maker.
Example: uiz_htmltocolor($3f51b5) will return a indigo (purple blueish) color for use in game maker.
*/
return make_color_rgb(argument0>>16,(argument0>>8) mod 256,argument0 mod 256);
