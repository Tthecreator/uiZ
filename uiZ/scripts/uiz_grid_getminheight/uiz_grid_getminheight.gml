/// @description uiz_grid_getminheight(grid instance id)
/// @param grid instance id
function uiz_grid_getminheight(argument0) {
	/*
	This function gets the minimum height of a gridcalculated from all the sizes of the grid you specified.
	Xtra frames have no effect on what this script returns.
	Returns a value in pixels. 
	*/
	var g=argument0;
	var toleft=g.marginb+g.margint;
	for(var i=0;i<g.gridh;i++){
	switch(g.rowsizetype[i]){
	case px:
	toleft+=g.rowsize[i]+g.margincellh*2
	break;
	case dp:
	toleft+=g.rowsize[i]*uiz_dp+g.margincellh*2
	break;
	case fc:
	toleft+=g.rowsize[i]*(g.parent.height-g.marginb-g.margint)+g.margincellh*2
	break;
	}
	}
	return toleft;



}
