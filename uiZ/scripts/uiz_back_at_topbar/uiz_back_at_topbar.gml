/// @description uiz_back_at_topbar(rx,ry,rlx,rly,[n backmode])
/// @param rx
/// @param ry
/// @param rlx
/// @param rly
/// @param [n backmode]
function uiz_back_at_topbar() {
	var oldrx=rx;
	var oldry=ry;
	var oldrlx=rlx;
	var oldrly=rly;
	var oldwidth=width;
	var oldheight=height;

	rx=argument[0]
	ry=argument[1]
	rlx=argument[2]
	rly=argument[3]
	width=rlx-rx;
	height=rly-ry;

	if argument_count>=5 then{uiz_back_topbar(argument[4])}else{
	uiz_back_topbar()}

	rx=oldrx;
	ry=oldry;
	rlx=oldrlx;
	rly=oldrly;
	width=oldwidth;
	height=oldheight;



}
