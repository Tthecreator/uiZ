/// @description uiz_resizegridframes(grid)
/// @param grid
function uiz_resizegridframes(argument0) {
	/*
	The functions "uiz_resizegridframes", "uiz_resizegridrowframes" and "uiz_resizegridcolframes" are the "fixing" scripts of grid structures.
	The "uiz_resizegridframes" is a combinations of the "row" and "col" scripts.
	Also handled by uiz_fixgeneralpos.
	*/
	uiz_resizegridrowframes(argument0)
	uiz_resizegridcolframes(argument0)



}
