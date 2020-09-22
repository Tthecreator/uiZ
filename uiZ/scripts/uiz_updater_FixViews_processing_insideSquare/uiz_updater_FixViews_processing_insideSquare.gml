/// @description rectangle_in_rectangle(sqx1,sqy1,sqx2,sqy2)
/// @param sqx1
/// @param sqy1
/// @param sqx2
/// @param sqy2
function uiz_updater_FixViews_processing_insideSquare(argument0, argument1, argument2, argument3) {
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;

	//return true;

	//return (rectangle_in_rectangle(cntnx,cntny,cntnlx,cntnly,x1,y1,x2,y2)>0);

	if (x1>cntnlx and x2>cntnlx) or (x2<cntnx and x1<cntnx) or (y1>cntnly and y2>cntnly) or (y2<cntny and y1<cntny) then{return false;}

	return true;



}
