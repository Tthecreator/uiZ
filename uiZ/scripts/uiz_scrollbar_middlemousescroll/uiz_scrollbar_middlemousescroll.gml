/// @description uiz_scrollbar_middlemousescroll(instanceid,boolean middle mouse scroll)
/// @param instanceid
/// @param boolean middle mouse scroll
function uiz_scrollbar_middlemousescroll(argument0, argument1) {
	//allow the middle mouse to scroll when 
	gml_pragma("forceinline");
	argument0.middlemousescroll=argument1;



}
