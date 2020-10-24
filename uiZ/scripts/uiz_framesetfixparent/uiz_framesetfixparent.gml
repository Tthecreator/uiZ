/// @description uiz_framesetfixparent(frameset)
/// @param frameset
function uiz_framesetfixparent(argument0) {
	var g=argument0;
	uiz_fittoparent(g)
	g.headframe.width=g.width
	g.headframe.height=g.height
	uiz_fixframepos(g.headframe)



}
