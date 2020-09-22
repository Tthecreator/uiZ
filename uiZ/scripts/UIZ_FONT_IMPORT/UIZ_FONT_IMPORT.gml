/// @description UIZ_FONT_IMPORT(dp, multiplier)
/// @param dp
/// @param  multiplier
function UIZ_FONT_IMPORT(argument0, argument1) {
	sdbm("[uiZ|Warning] generating new font page, performance issues might arise.")
	//return font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",argument0*uiz_dp*argument1,false,false,32,128);//English only
	return font_add("uiz\\m-fonts_m-2p\\mplus-2p-regular.ttf",argument0*uiz_dp*argument1,false,false,32,255);//general european




}
